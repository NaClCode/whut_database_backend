from sqlalchemy import Column, Integer, String
from database import Base

class Admin(Base):
    __tablename__ = 'admin'
    id = Column(Integer, primary_key=True, autoincrement=True)  # 管理员ID
    name = Column(String(50), nullable=False)  # 管理员姓名
    password = Column(String(255), nullable=False)  # 管理员密码

    def __init__(self, name, password):
        self.name = name
        self.password = password

    def __repr__(self):
        return (
            f"<Admin("
            f"id={self.id}, "
            f"name='{self.name}'"
            f")>"
        )


