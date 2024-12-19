from sqlalchemy.orm import Session
from model.ClassModel import Class
from model.TeacherModel import Teacher
from model.SCModel import StudentCourse
from model.ClassScheduleModel import ClassSchedule
from .Crud import AbstractCrud
from sqlalchemy.sql import exists

class ClassCrud(AbstractCrud[Class]):
    @staticmethod
    def create(db: Session, num: int = 0, max_num: int = 30, class_plan_id: int = None, teacher_id: int = None) -> Class:
        """
        创建一个新的课程班级记录
        """
        new_class = Class(num=num, max_num=max_num, class_plan_id=class_plan_id, teacher_id=teacher_id)
        db.add(new_class)
        db.commit()
        db.refresh(new_class)
        return new_class
    
    @staticmethod
    def get_by_id(db: Session, record_id: int):
        class_record = db.query(Class).filter(Class.id == record_id).one_or_none()
        if not class_record:
            return None
        teacher_record = db.query(Teacher).filter(Teacher.id == class_record.teacher_id).one_or_none()
        schedule_records = db.query(ClassSchedule).filter(ClassSchedule.class_id == record_id).all()

        data = {
                "class_id": class_record.id,
                "class_num": class_record.num,
                "max_num": class_record.max_num,
                "teacher_name": teacher_record.name if teacher_record else None,
                "schedules": [
                    {
                        "start_time": schedule.start_time,
                        "end_time": schedule.end_time,
                        "classroom": schedule.classroom.name,
                        "classtype": schedule.classroom.type
                    }
                    for schedule in schedule_records
                ]
            }
        return data

    
    @staticmethod
    def get_by_id_paginated(db: Session, user_id: int, id: int, page: int, page_size: int = 10):
        """
        分页查询按 class_plan_id 筛选的记录，同时返回用户是否选了该课程和老师的姓名
        """
        offset = (page - 1) * page_size
        total_records = db.query(Class).filter(Class.class_plan_id == id).count()
        total_pages = (total_records + page_size - 1) // page_size

        if page > total_pages:
            return {
                "page": page,
                "page_size": page_size,
                "total_records": total_records,
                "total_pages": total_pages,
                "data": []
            }

        data = (
            db.query(
                Class.id,
                Class.num,
                Class.max_num,
                Class.teacher_id,
                Teacher.name.label("teacher_name"),
                exists().where(
                    (StudentCourse.student_id == user_id) & 
                    (StudentCourse.class_id == Class.id)
                ).label("is_enrolled")
            )
            .join(Teacher, Class.teacher_id == Teacher.id)
            .filter(Class.class_plan_id == id)
            .offset(offset)
            .limit(page_size)
            .all()
        )

        if not data:
            return None

        result = {
            "page": page,
            "page_size": page_size,
            "total_records": total_records,
            "total_pages": total_pages,
            "data": [
                {
                    "id": i.id,
                    "num": i.num,
                    "max_num": i.max_num,
                    "teacher": i.teacher_name,
                    "is_enrolled": i.is_enrolled
                }
                for i in data
            ]
        }

        return result
