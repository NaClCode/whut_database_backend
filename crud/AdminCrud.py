from sqlalchemy.orm import Session
from typing import Union
from model.AdminModel import Admin
from .Crud import AbstractCrud

class AdminCrud(AbstractCrud[Admin]):
    @staticmethod
    def create(
        db: Session, 
        username: str,
        password: str, 
        email: str,
    ) -> Admin:
        """
        创建一个新的学生记录
        """
        new_admin = Admin(
            name=username,
            password=password, 
        )
        db.add(new_admin)
        db.commit()
        db.refresh(new_admin)
        return new_admin

    @staticmethod
    def get_by_email(db: Session, email: str) -> Union[Admin, None]:
        """
        根据邮箱获取学生记录
        """
        return db.query(Admin).filter(Admin.name == email).first()
    