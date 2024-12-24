from sqlalchemy.orm import Session
from typing import Union
from model.StudentModel import Student
from .Crud import AbstractCrud

class StudentCrud(AbstractCrud[Student]):
    @staticmethod
    def create(
        db: Session, 
        username: str,
        password: str, 
        email: str,
        sex: str = "U",
        age: int = None, 
        classer: str = None, 
        profession: str = None, 
        college: str = None,
        idcard: str = None
    ) -> Student:
        """
        创建一个新的学生记录
        """
        new_student = Student(
            name=username,
            password=password, 
            sex=sex, 
            age=age, 
            classer=classer, 
            profession=profession, 
            college=college, 
            email=email,
            idcard=idcard
        )
        db.add(new_student)
        db.commit()
        db.refresh(new_student)
        return new_student

    @staticmethod
    def get_by_email(db: Session, email: str) -> Union[Student, None]:
        """
        根据邮箱获取学生记录
        """
        return db.query(Student).filter(Student.email == email).first()

    @staticmethod
    def update(db: Session, obj_id: int, update_data):
        """
        更新记录
        """

        obj = db.query(Student).filter(Student.id == obj_id).first()
        if obj:

            for key, value in update_data.__dict__.items():
                if hasattr(obj, key):
                    setattr(obj, key, value)
            db.commit()
            db.refresh(obj)
            return obj
        else:
            raise ValueError(f"No object found with id {obj_id}")
    