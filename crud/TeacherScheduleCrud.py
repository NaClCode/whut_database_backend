from sqlalchemy.orm import Session
from model.TeacherScheduleModel import TeacherSchedule
from model.ClassScheduleModel import ClassSchedule
from model.StudentModel import Student
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
            teacher_id=teacher_id,
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
    def get_class_schedules(db: Session, class_id: int):

        results = (
            db.query(
                ClassSchedule,
                db.query(TeacherSchedule.id)
                .filter(TeacherSchedule.class_schedule_id == ClassSchedule.id)
                .exists().label("is_teacher_exists"),
                db.query(TeacherSchedule.id)
                .filter(TeacherSchedule.class_schedule_id == ClassSchedule.id)
                .scalar_subquery()
            )
            .filter(ClassSchedule.class_id == class_id)
            .all()
        )

        return [
            {
                "id": teacher_schedule_id or -1,
                "start_time": schedule.start_time,
                "end_time": schedule.end_time,
                "classroom": schedule.classroom.name,
                "is_teacher":  is_teacher
            }
            for schedule, is_teacher, teacher_schedule_id in results
        ]
    
    @staticmethod
    def get_by_id_list(db: Session, teacher_schedule_id: int) -> list:
        """
        根据TeacherSchedule的ID查询
        """

        teacher_schedule = db.query(TeacherSchedule).filter(TeacherSchedule.id == teacher_schedule_id).first()

        conflict_student_ids = json.loads(teacher_schedule.conflict_student_ids)

        conflict_student_names = []

        for student_id in conflict_student_ids:
            student = db.query(Student).filter(Student.id == student_id).first()
            if student:
                conflict_student_names.append(student.name)

        return {
            "start_time": teacher_schedule.class_schedule.start_time,
            "end_time": teacher_schedule.class_schedule.end_time,
            "conflict_rate": teacher_schedule.conflict_rate,
            "prefer_rate": 1 - teacher_schedule.preference_satisfaction,
            "conflict_student": conflict_student_names
        }