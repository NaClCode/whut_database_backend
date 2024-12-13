from sqlalchemy.orm import Session
from model.ClassModel import Class
from .Crud import AbstractCrud

class ClassCrud(AbstractCrud[Class]):
    @staticmethod
    def create(db: Session, num: int = 0, max_num: int = 30, class_plan_id: int = None, teacher_id: int = None) -> Class:
        """
        创建一个新的课程班级记录
        """
        new_class = Class(num=num, max_num=max_num, class_plan_id=class_plan_id, teacher_id=teacher_id)
        db.add(new_class)
        db.commit()
        db.refresh(new_class)
        return new_class
    
    @staticmethod
    def get_by_id_paginated(db: Session, id: int, page: int, page_size: int = 10):
        """
        分页查询按 class_plan_id 筛选的记录
        """
        offset = (page - 1) * page_size
        total_records = db.query(Class).filter(Class.class_plan_id == id).count()
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
            db.query(Class)
            .filter(Class.class_plan_id == id)
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
            "data": [{'id': i.id, 
                    'num': i.num,
                    'max_num': i.max_num,
                    'teacher': i.teacher_id} for i in data]
        }
