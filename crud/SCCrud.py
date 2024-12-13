from sqlalchemy.orm import Session
from typing import List, Union
from model.SCModel import StudentCourse

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
        删除选课记录
        """
        db.delete(record)
        db.commit()
        return record

    @staticmethod
    def delete_by_student_and_class(db: Session, student_id: int, class_id: int) -> Union[StudentCourse, None]:
        """
        根据学生ID和课程班级ID删除选课记录
        """
        record = StudentCourseCrud.get_by_student_and_class(db, student_id, class_id)
        if record:
            db.delete(record)
            db.commit()
        return record
