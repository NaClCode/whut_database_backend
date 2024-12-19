from sqlalchemy import Column, Integer, String, Enum
from database import Base
from sqlalchemy.orm import relationship
class ClassPlan(Base):
    __tablename__ = "class_plan"

    id = Column(Integer, primary_key=True, autoincrement=True)  # 课程计划号，主键，自增
    name = Column(String(100), nullable=False)  # 课程名称，最长100字符，非空
    introduction = Column(String(255), nullable=True)  # 简介，最长255字符，可为空
    profession = Column(String(100), nullable=True)  # 专业，最长100字符，可为空
    college = Column(String(100), nullable=True)  # 学院，最长100字符，可为空
    credit = Column(Integer, nullable=False)  # 学分，非空
    type = Column(Enum('B', 'X', 'G', 'S'), nullable=False) # 课类型, B-必修, X-选修, G-公选, S-实践课

    def __init__(self, name, credit, introduction=None, profession=None, college=None):
        self.name = name
        self.credit = credit
        self.introduction = introduction
        self.profession = profession
        self.college = college

    def __repr__(self):
        return (
            f"<ClassPlan(id={self.id}, name={self.name}, credit={self.credit}, "
            f"profession={self.profession}, college={self.college})>"
        )
