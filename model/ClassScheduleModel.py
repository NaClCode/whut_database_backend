from sqlalchemy import Column, Integer, String, DateTime, ForeignKey, Enum
from database import Base

class ClassSchedule(Base):
    __tablename__ = "class_schedule"

    id = Column(Integer, primary_key=True, autoincrement=True)  # 课程安排号，主键，自增
    start_time = Column(DateTime, nullable=False)  # 开始时间，非空
    end_time = Column(DateTime, nullable=False)  # 结束时间，非空
    classtype = Column(Enum('C', 'S'), nullable=False) # 上课地点类型 C-教室, S-实验课
    classroom = Column(String(100), nullable=True)  # 教室，可为空，最长100字符
    class_id = Column(Integer, ForeignKey("class.id"), nullable=False)  # 课程班级ID，外键，非空

    def __init__(self, start_time, end_time, classroom=None, class_id=None):
        self.start_time = start_time
        self.end_time = end_time
        self.classroom = classroom
        self.class_id = class_id

    def __repr__(self):
        return (
            f"<ClassSchedule(id={self.id}, start_time={self.start_time}, "
            f"end_time={self.end_time}, classroom={self.classroom}, class_id={self.class_id})>"
        )
