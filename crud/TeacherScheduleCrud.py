from sqlalchemy.orm import Session
from model.TeacherScheduleModel import TeacherSchedule
from model.ClassScheduleModel import ClassSchedule
from .Crud import AbstractCrud
import json

class TeacherScheduleCrud(AbstractCrud[TeacherSchedule]):

    @staticmethod
    def create(
        db: Session, 
        teacher_id: int,
        class_schedule_id: int,
        conflict_rate: float,
        preference_satisfaction: float,
        conflict_student_ids: list
    ) -> TeacherSchedule:
        """
        创建一个新的记录
        """
        conflict_student_ids_str = json.dumps(conflict_student_ids)
        new_model = TeacherSchedule(
            teacher_id=teacher_id ,
            class_schedule_id=class_schedule_id,
            conflict_rate=conflict_rate,
            preference_satisfaction=preference_satisfaction,
            conflict_student_ids=conflict_student_ids_str,
        )
        db.add(new_model)
        db.commit()
        db.refresh(new_model)
        return new_model

    @staticmethod
    def get_class_schedules(db:Session, class_id: int):

        results = (
            db.query(
                ClassSchedule,
                db.query(TeacherSchedule)
                .filter(TeacherSchedule.class_schedule_id == ClassSchedule.id)
                .exists().label("is_teacher")
            )
            .filter(ClassSchedule.class_id == class_id)
            .all()
        )

        return [
            {
                "start_time": _.start_time,
                "end_time": _.end_time,
                "classroom": _.classroom.name,
                "is_teacher": is_teacher
            } for _, is_teacher in results]
