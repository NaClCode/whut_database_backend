from sqlalchemy import Column, Integer, ForeignKey
from database import Base
from sqlalchemy.orm import relationship

class TeacherSchedule(Base):
    __tablename__ = 'teacher_schedule'

    id = Column(Integer, primary_key=True, autoincrement=True)
    teacher_id = Column(Integer, ForeignKey('teacher.id'), nullable=False)
    class_schedule_id = Column(Integer, ForeignKey('class_schedule.id'), nullable=False)

    teacher = relationship('Teacher', backref='schedules')
    class_schedule = relationship('ClassSchedule', backref='teacher_schedules')

    def __init__(self, teacher_id, class_schedule_id):
        self.teacher_id = teacher_id
        self.class_schedule_id = class_schedule_id

    def __repr__(self):
        return (
            f"<TeacherSchedule(teacher_id={self.teacher_id}, class_schedule_id={self.class_schedule_id})>"
        )
