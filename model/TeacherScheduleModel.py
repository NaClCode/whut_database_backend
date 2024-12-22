from sqlalchemy import Column, Integer, Float, Text, ForeignKey
from sqlalchemy.orm import relationship
from database import Base

class TeacherSchedule(Base):
    __tablename__ = 'teacher_schedule'

    id = Column(Integer, primary_key=True, autoincrement=True)
    teacher_id = Column(Integer, ForeignKey('teacher.id'), nullable=False)
    class_schedule_id = Column(Integer, ForeignKey('class_schedule.id'), nullable=False)
    conflict_rate = Column(Float, nullable=False, default=0.0)
    preference_satisfaction = Column(Float, nullable=False, default=0.0)
    conflict_student_ids = Column(Text)

    teacher = relationship('Teacher', backref='schedules')
    class_schedule = relationship('ClassSchedule', backref='teacher_schedules')

    def __init__(self, teacher_id, class_schedule_id, conflict_rate=0.0, preference_satisfaction=0.0, conflict_student_ids=None):
        self.teacher_id = teacher_id
        self.class_schedule_id = class_schedule_id
        self.conflict_rate = conflict_rate
        self.preference_satisfaction = preference_satisfaction
        self.conflict_student_ids = conflict_student_ids

    def __repr__(self):
        return (
            f"<TeacherSchedule("
            f"teacher_id={self.teacher_id}, "
            f"class_schedule_id={self.class_schedule_id}, "
            f"conflict_rate={self.conflict_rate}, "
            f"preference_satisfaction={self.preference_satisfaction}, "
            f"conflict_student_ids={self.conflict_student_ids})>"
        )
