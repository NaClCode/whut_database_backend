from sqlalchemy import Column, Integer, DateTime, ForeignKey
from sqlalchemy.orm import relationship
from database import Base

class ClassSchedule(Base):
    __tablename__ = "class_schedule"

    id = Column(Integer, primary_key=True, autoincrement=True)  # 课程安排号，主键，自增
    start_time = Column(DateTime, nullable=False)  # 开始时间，非空
    end_time = Column(DateTime, nullable=False)  # 结束时间，非空
    classroom_id = Column(Integer, ForeignKey("classroom.id"), nullable=False)  # 教室ID，外键，非空
    class_id = Column(Integer, ForeignKey("class.id"), nullable=False)  # 班级ID，外键，非空

    classroom = relationship("Classroom", backref="ClassSchedule")
    classer = relationship("Class", backref="ClassSchedule")
    
    def __init__(self, start_time, end_time, classroom_id, class_id):
        self.start_time = start_time
        self.end_time = end_time
        self.classroom_id = classroom_id
        self.class_id = class_id

    def __repr__(self):
        return (
            f"<ClassSchedule(id={self.id}, start_time={self.start_time}, "
            f"end_time={self.end_time}, classroom_id={self.classroom_id}, class_id={self.class_id})>"
        )
