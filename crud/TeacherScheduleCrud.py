from sqlalchemy.orm import Session
from model.TeacherSchedule import TeacherSchedule
from .Crud import AbstractCrud

class TeacherScheduleCrud(AbstractCrud[TeacherSchedule]):

    @staticmethod
    def create(
        db: Session, 
        teacher_id: int,
        class_schedule_id: int
    ) -> TeacherSchedule:
        """
        创建一个新的记录
        """
        new_admin = TeacherSchedule(
            teacher_id=teacher_id ,
            class_schedule_id=class_schedule_id
        )
        db.add(new_admin)
        db.commit()
        db.refresh(new_admin)
        return new_admin

    