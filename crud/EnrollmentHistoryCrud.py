from sqlalchemy.orm import Session
from typing import List
from model.EnrollmentHistoryModel import EnrollmentHistory
from .Crud import AbstractCrud

class EnrollmentHistoryCrud(AbstractCrud[EnrollmentHistory]):
    @staticmethod
    def create(db: Session, student_id: int, class_id: int, action_type: str, action_date) -> EnrollmentHistory:
        """
        创建一个新的选课或退课历史记录
        """
        new_record = EnrollmentHistory(
            student_id=student_id,
            class_id=class_id,
            action_type=action_type,
            action_date=action_date
        )
        db.add(new_record)
        db.commit()
        db.refresh(new_record)
        return new_record

    @staticmethod
    def get_by_filters(
        db: Session, 
        page: int = 1, 
        page_size: int = 10, 
        student_id: int = None, 
        class_id:int = None, 
        action_type: str = None
    ):
        """
        根据 ID, 类型 查询记录，并支持分页。
        如果某个参数为 None，则忽略该参数的过滤条件。
        """
        query = db.query(EnrollmentHistory)

        if student_id != -1:
            query = query.filter(EnrollmentHistory.student_id == student_id)
        if class_id != "":
            query = query.filter(EnrollmentHistory.class_id == class_id)
        if action_type != "":
            query = query.filter(EnrollmentHistory.action_type == action_type)

        total_records = query.count()

        offset = (page - 1) * page_size
        total_pages = (total_records + page_size - 1) // page_size

        if page > total_pages:
            return {
                "page": page,
                "page_size": page_size,
                "total_records": total_records,
                "total_pages": total_pages,
                "data": []
            }

        data = query.offset(offset).limit(page_size).all()

        return {
            "page": page,
            "page_size": page_size,
            "total_records": total_records,
            "total_pages": total_pages,
            "data": [{"id": i.id,
                      "student_id": i.student_id,
                      "class_id": i.class_id,
                      "action_type": i.action_type,
                      "action_date": i.action_date
                      } for i in data]
        }

    @staticmethod
    def delete_all_by_student_id(db: Session, student_id: int) -> int:
        """
        删除某学生的所有历史记录
        """
        deleted_count = db.query(EnrollmentHistory).filter(EnrollmentHistory.student_id == student_id).delete()
        db.commit()
        return deleted_count

    @staticmethod
    def delete_all_by_class_id(db: Session, class_id: int) -> int:
        """
        删除某课程班级的所有历史记录
        """
        deleted_count = db.query(EnrollmentHistory).filter(EnrollmentHistory.class_id == class_id).delete()
        db.commit()
        return deleted_count
