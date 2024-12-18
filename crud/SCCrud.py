from sqlalchemy.orm import Session
from sqlalchemy import extract
from datetime import datetime
from typing import List, Union
from model.SCModel import StudentCourse
from model.ClassModel import Class  # Assuming Class is your model for the 'class' table
from model.TeacherModel import Teacher  # Assuming Teacher is your model for the 'teacher' table
from model.ClassScheduleModel import ClassSchedule  # Assuming ClassSchedule is the model for the 'class_schedule' table

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
        获取学生在某个月份的所有选课记录
        """
        records = db.query(StudentCourse).filter(
            StudentCourse.student_id == student_id,
            extract('month', StudentCourse.enrolled_date) == month,
            extract('year', StudentCourse.enrolled_date) == year
        ).all()

        course_details = []
        for record in records:
            class_info = db.query(Class).filter(Class.id == record.class_id).first()
            if class_info:
                course_details.append({
                    'name': class_info.name,
                    'date': record.enrolled_date
                })
        return course_details
    
    @staticmethod
    def get_courses_by_day(db: Session, student_id: int, specific_date: datetime) -> List[dict]:
        """
        获取学生在某一天的课程信息，包括课程名称、时间和上课地点
        """
        records = db.query(StudentCourse).filter(
            StudentCourse.student_id == student_id,
            extract('year', StudentCourse.enrolled_date) == specific_date.year,
            extract('month', StudentCourse.enrolled_date) == specific_date.month,
            extract('day', StudentCourse.enrolled_date) == specific_date.day
        ).all()

        course_details = []
        for record in records:
            class_info = db.query(Class).filter(Class.id == record.class_id).first()
            if class_info:
                schedule_info = db.query(ClassSchedule).filter(ClassSchedule.class_id == class_info.id).all()
                for schedule in schedule_info:
                    course_details.append({
                        'name': class_info.name,
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
        records = db.query(StudentCourse).filter(StudentCourse.student_id == student_id).offset(offset).limit(page_size).all()
        total_records = db.query(StudentCourse).filter(StudentCourse.student_id == student_id).count()
        total_pages = (total_records + page_size - 1) // page_size
        
        course_details = []
        for record in records:
            class_info = db.query(Class).filter(Class.id == record.class_id).first()
            teacher_info = db.query(Teacher).filter(Teacher.id == class_info.teacher_id).first() if class_info else None
            if class_info:
                course_details.append({
                    'course_id': class_info.id,
                    'course_name': class_info.name,
                    'profession': class_info.profession,
                    'college': class_info.college,
                    'type': class_info.type,
                    'credits': class_info.credit,
                    'teacher': teacher_info.name if teacher_info else "Unknown",
                    'grade': record.grade
                })
        
        return {
            "data": course_details,
            "page": page,
            "page_size": page_size,
            "total_records": total_records,
            "total_pages": total_pages
        }
