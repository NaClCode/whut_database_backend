from sqlalchemy.orm import Session
from sqlalchemy import extract
from datetime import datetime
from typing import List, Union
from model.SCModel import StudentCourse
from model.ClassModel import Class
from model.TeacherModel import Teacher
from model.ClassScheduleModel import ClassSchedule
from model.ClassPlanModel import ClassPlan

class StudentCourseCrud:
    @staticmethod
    def create(db: Session, student_id: int, class_id: int, enrolled_date, grade: float = None) -> StudentCourse:
        """
        创建学生选课记录
        """
        new_record = StudentCourse(
            student_id=student_id,
            class_id=class_id,
            enrolled_date=enrolled_date,
            grade=-1
        )
        db.add(new_record)
        db.commit()
        db.refresh(new_record)
        return new_record

    @staticmethod
    def get_by_student_and_class(db: Session, student_id: int, class_id: int) -> Union[StudentCourse, None]:
        """
        根据学生ID和课程班级ID获取选课记录
        """
        return db.query(StudentCourse).filter(
            StudentCourse.student_id == student_id,
            StudentCourse.class_id == class_id
        ).first()

    @staticmethod
    def get_by_student_id(db: Session, student_id: int) -> List[StudentCourse]:
        """
        根据学生ID获取该学生的所有选课记录
        """
        return db.query(StudentCourse).filter(StudentCourse.student_id == student_id).all()

    @staticmethod
    def get_by_class_id(db: Session, class_id: int) -> List[StudentCourse]:
        """
        根据课程班级ID获取所有学生选课记录
        """
        return db.query(StudentCourse).filter(StudentCourse.class_id == class_id).all()

    @staticmethod
    def get_all(db: Session) -> List[StudentCourse]:
        """
        获取所有选课记录
        """
        return db.query(StudentCourse).all()

    @staticmethod
    def update(db: Session, record: StudentCourse, **kwargs) -> StudentCourse:
        """
        更新选课记录，kwargs为需要更新的字段和值
        """
        for key, value in kwargs.items():
            if hasattr(record, key):
                setattr(record, key, value)
        db.commit()
        db.refresh(record)
        return record

    @staticmethod
    def delete(db: Session, record: StudentCourse) -> StudentCourse:
        """
        删除选课
        """
        db.delete(record)
        db.commit()
        return record

    @staticmethod
    def delete_by_student_and_class(db: Session, student_id: int, class_id: int) -> Union[StudentCourse, None]:
        """
        根据学生ID和课程班级ID删除选课
        """
        record = StudentCourseCrud.get_by_student_and_class(db, student_id, class_id)
        if record:
            db.delete(record)
            db.commit()
        return record
    
    @staticmethod
    def get_courses_by_month(db: Session, student_id: int, month: int, year: int) -> List[dict]:
        """
        获取学生在某个月份的所有选课记录，通过class_schedule中的start_time筛选，并从class_plan中获取课程名称
        """
        records = db.query(StudentCourse).join(Class).join(ClassSchedule).filter(
            StudentCourse.student_id == student_id,
            extract('month', ClassSchedule.start_time) == month,
            extract('year', ClassSchedule.start_time) == year
        ).all()

        course_details = []

        for record in records:
            class_info = db.query(Class).filter(Class.id == record.class_id).first()
            schedule = db.query(ClassSchedule).filter(ClassSchedule.class_id == record.class_id).first()

            if class_info and schedule:
                class_plan = db.query(ClassPlan).filter(ClassPlan.id == class_info.class_plan_id).first()
                
                if class_plan:
                    course_details.append({
                        'name': class_plan.name,
                        'date': schedule.start_time
                    })
        
        return course_details
    
    @staticmethod
    def get_courses_by_day(db: Session, student_id: int, specific_date: datetime) -> List[dict]:
        """
        获取学生在某一天的课程信息，包括课程名称、时间和上课地点
        """
        records = db.query(StudentCourse).join(Class).join(ClassSchedule).filter(
            StudentCourse.student_id == student_id,
            extract('year', ClassSchedule.start_time) == specific_date.year,
            extract('month', ClassSchedule.start_time) == specific_date.month,
            extract('day', ClassSchedule.start_time) == specific_date.day
        ).all()

        course_details = []

        for record in records:
            class_info = db.query(Class).filter(Class.id == record.class_id).first()
            if class_info:
                class_plan = db.query(ClassPlan).filter(ClassPlan.id == class_info.class_plan_id).first()
                schedule_info = db.query(ClassSchedule).filter(ClassSchedule.class_id == class_info.id).all()
                if class_plan:
                    for schedule in schedule_info:
                        course_details.append({
                            'name': class_plan.name,
                            'start_time': schedule.start_time,
                            'end_time': schedule.end_time,
                            'classroom': schedule.classroom
                        })

        return course_details

    @staticmethod
    def get_student_grade_page(
        db: Session, student_id: int, page: int = 1, page_size: int = 10
    ) -> dict:
        """
        获取学生所有课程的详细信息，包括课程号、课程名称、专业、学院、类型、学分、教师、分数
        支持分页
        """
        offset = (page - 1) * page_size
        

        
        query = db.query(
            Class.id.label('id'),
            ClassPlan.name,
            ClassPlan.profession,
            ClassPlan.college,
            ClassPlan.type,
            ClassPlan.credit,
            Teacher.name.label('teacher'),
            StudentCourse.grade
        ).join(
            StudentCourse, StudentCourse.class_id == Class.id
        ).join(
            ClassPlan, ClassPlan.id == Class.class_plan_id
        ).outerjoin(
            Teacher, Teacher.id == Class.teacher_id
        ).filter(
            StudentCourse.student_id == student_id
        ).offset(offset).limit(page_size)
        
        records = query.all()
        
        total_records = db.query(StudentCourse).filter(StudentCourse.student_id == student_id).count()
        total_pages = (total_records + page_size - 1) // page_size
        
        course_details = [{
            'course_id': record.id,
            'course_name': record.name,
            'profession': record.profession,
            'college': record.college,
            'type': record.type,
            'credits': record.credit,
            'teacher': record.teacher if record.teacher else "Unknown",
            'grade': record.grade
        } for record in records]
        
        return {
            "data": course_details,
            "page": page,
            "page_size": page_size,
            "total_records": total_records,
            "total_pages": total_pages
        }
