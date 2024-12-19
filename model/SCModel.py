from sqlalchemy import Column, Integer, ForeignKey, Float, DateTime
from database import Base
from sqlalchemy.orm import relationship

class StudentCourse(Base):
    __tablename__ = "student_course"

    student_id = Column(Integer, ForeignKey("student.id"), primary_key=True)  # 学生ID，外键，主键部分
    class_id = Column(Integer, ForeignKey("class.id"), primary_key=True)  # 课程班级ID，外键，主键部分
    grade = Column(Float, nullable=True)  # 成绩，可为空
    enrolled_date = Column(DateTime, nullable=False)  # 选课日期，非空

    student = relationship("Student", backref="StudentCourse")
    classer = relationship("Class", backref="StudentCourse")

    def __init__(self, student_id, class_id, enrolled_date, grade=None):
        self.student_id = student_id
        self.class_id = class_id
        self.enrolled_date = enrolled_date
        self.grade = grade

    def __repr__(self):
        return (
            f"<StudentCourse(student_id={self.student_id}, class_id={self.class_id}, "
            f"enrolled_date={self.enrolled_date}, grade={self.grade})>"
        )
