from sqlalchemy import Column, Integer, ForeignKey
from database import Base
from sqlalchemy.orm import relationship
class Class(Base):
    __tablename__ = "class"

    id = Column(Integer, primary_key=True, autoincrement=True)  # 课程班级号，主键，自增
    num = Column(Integer, default=0, nullable=False)  # 总人数，默认0，非空
    max_num = Column(Integer, nullable=False)  # 最大人数，非空
    class_plan_id = Column(Integer, ForeignKey("class_plan.id"), nullable=False)  # 课程计划ID，外键，非空
    teacher_id = Column(Integer, ForeignKey("teacher.id"), nullable=False)  # 教师ID，外键，非空

    teacher = relationship("Teacher", backref="Class")
    class_plan = relationship("ClassPlan", backref="Class")

    def __init__(self, num=0, max_num=30, class_plan_id=None, teacher_id=None):
        self.num = num
        self.max_num = max_num
        self.class_plan_id = class_plan_id
        self.teacher_id = teacher_id

    def __repr__(self):
        return (
            f"<Class(id={self.id}, num={self.num}, max_num={self.max_num}, "
            f"class_plan_id={self.class_plan_id}, teacher_id={self.teacher_id})>"
        )
