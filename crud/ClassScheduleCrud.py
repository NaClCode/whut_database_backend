from sqlalchemy.orm import Session
from model.ClassScheduleModel import ClassSchedule
from .Crud import AbstractCrud

class ClassScheduleCrud(AbstractCrud[ClassSchedule]):
    def create(self, db: Session, start_time, end_time, classroom: str = None, class_id: int = None) -> ClassSchedule:
        """
        创建一个新的课程安排记录
        """
        new_schedule = ClassSchedule(
            start_time=start_time,
            end_time=end_time,
            classroom=classroom,
            class_id=class_id
        )
        db.add(new_schedule)
        db.commit()
        db.refresh(new_schedule)
        return new_schedule
    
    @staticmethod
    def get_by_id_paginated(db: Session, id: int, page: int, page_size: int = 10):
        """
        分页查询按 class_plan_id 筛选的记录
        """
        offset = (page - 1) * page_size
        total_records = db.query(ClassSchedule).count()
        total_pages = (total_records + page_size - 1) // page_size

        if page > total_pages:
            return {
                "page": page,
                "page_size": page_size,
                "total_records": total_records,
                "total_pages": total_pages,
                "data": []
            }

        data = (
            db.query(ClassSchedule)
            .filter(ClassSchedule.class_id == id)
            .offset(offset)
            .limit(page_size)
            .all()
        )

        if data is None:
            return None

        return {
            "page": page,
            "page_size": page_size,
            "total_records": total_records,
            "total_pages": total_pages,
            "data": [{
                        "id": schedule.id,
                        "start_time": schedule.start_time,
                        "end_time": schedule.end_time,
                        "classtype": schedule.classtype,
                        "classroom": schedule.classroom,
                        "class_id": schedule.class_id
                    } for schedule in data]
        }
