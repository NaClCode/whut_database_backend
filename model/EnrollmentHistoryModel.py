from sqlalchemy import Column, Integer, DateTime, Enum, ForeignKey
from database import Base

class EnrollmentHistory(Base):
    __tablename__ = "enrollment_history"

    id = Column(Integer, primary_key=True, autoincrement=True)  # 历史记录ID，主键，自增
    student_id = Column(Integer, ForeignKey("student.id"), nullable=False)  # 学生ID，外键，非空
    class_id = Column(Integer, ForeignKey("class.id"), nullable=False)  # 课程班级ID，外键，非空
    action_type = Column(Enum("Enroll", "Drop", name="action_type_enum"), nullable=False)  # 动作类型，枚举
    action_date = Column(DateTime, nullable=False)  # 操作时间，非空

    def __init__(self, student_id, class_id, action_type, action_date):
        self.student_id = student_id
        self.class_id = class_id
        self.action_type = action_type
        self.action_date = action_date

    def __repr__(self):
        return (
            f"<EnrollmentHistory(id={self.id}, student_id={self.student_id}, "
            f"class_id={self.class_id}, action_type={self.action_type}, action_date={self.action_date})>"
        )
