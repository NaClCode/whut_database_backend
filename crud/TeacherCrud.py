from sqlalchemy.orm import Session
from sqlalchemy import extract, func
from model.TeacherModel import Teacher
from model.ClassPlanModel import ClassPlan
from model.ClassModel import Class
from model.ClassScheduleModel import ClassSchedule
from typing import List, Union
from datetime import datetime
from .Crud import AbstractCrud

class TeacherCrud(AbstractCrud[Teacher]):
    @staticmethod
    def create(
        db: Session, 
        username: str,
        password: str, 
        email: str,
        sex: str = "U",
        introduction: str = None, 
        profession: str = None, 
        college: str = None
    ) -> Teacher:
        """
        创建一个新的教师记录
        """
        new_teacher = Teacher(
            name=username,
            password=password, 
            sex=sex, 
            email=email,
            introduction=introduction, 
            profession=profession, 
            college=college
        )
        db.add(new_teacher)
        db.commit()
        db.refresh(new_teacher)
        return new_teacher
    
    @staticmethod
    def get_by_email(db: Session, email: str) -> Union[Teacher, None]:
        """
        根据邮箱获取教师记录
        """
        return db.query(Teacher).filter(Teacher.email == email).first()

    @staticmethod
    def get_courses_by_month(db: Session, teacher_id: int, month: int, year: int) -> List[dict]:
        """
        获取教师在某个月份的所有课程安排
        """
        records = db.query(
            ClassPlan.name.label('course_name'),
            ClassSchedule.start_time
        ).join(
            Class, ClassPlan.id == Class.class_plan_id
        ).join(
            ClassSchedule, Class.id == ClassSchedule.class_id
        ).filter(
            Class.teacher_id == teacher_id,
            extract('month', ClassSchedule.start_time) == month,
            extract('year', ClassSchedule.start_time) == year
        ).all()

        return [
            {"name": course_name, "date": start_time}
            for course_name, start_time in records
        ]

    @staticmethod
    def get_courses_by_day(db: Session, teacher_id: int, specific_date: datetime) -> List[dict]:
        """
        获取教师在某一天的课程安排
        """
        records = db.query(
            ClassPlan.name.label('course_name'),
            ClassSchedule
        ).join(
            Class, ClassPlan.id == Class.class_plan_id
        ).join(
            ClassSchedule, Class.id == ClassSchedule.class_id
        ).filter(
            Class.teacher_id == teacher_id,
            func.date(ClassSchedule.start_time) == specific_date.date()
        ).all()

        return [
            {
                "name": name,
                "start_time": course.start_time,
                "end_time": course.end_time,
                "classroom": course.classroom
            }
            for name, course in records
        ]
    
    @staticmethod
    def get_teacher_courses(db:Session, teacher_id:int):
        results = (
            db.query(ClassPlan, Class)
            .join(ClassPlan, Class.class_plan_id == ClassPlan.id)
            .filter(Class.teacher_id == teacher_id)
            .all()
        )
        return [{
            "class_id": classer.id,
            "name": plan.name,
            "num": classer.num,
            "type": plan.type,
            "credit": plan.credit
        } for plan, classer in results]
