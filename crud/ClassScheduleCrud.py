from sqlalchemy.orm import Session
from model.ClassScheduleModel import ClassSchedule
from .Crud import AbstractCrud

class ClassScheduleCrud(AbstractCrud[ClassSchedule]):

    @staticmethod
    def create(db: Session, start_time, end_time, classroom: str = None, class_id: int = None) -> ClassSchedule:
        """
        创建一个新的课程安排记录
        """
        new_schedule = ClassSchedule(
            start_time=start_time,
            end_time=end_time,
            classroom_id=classroom,
            class_id=class_id
        )
        db.add(new_schedule)
        db.commit()
        db.refresh(new_schedule)
        return new_schedule
    