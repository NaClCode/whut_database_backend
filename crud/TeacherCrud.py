from sqlalchemy.orm import Session
from model.TeacherModel import Teacher
from .Crud import AbstractCrud
from typing import Union

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
        根据邮箱获取学生记录
        """
        return db.query(Teacher).filter(Teacher.email == email).first()
