from sqlalchemy.orm import Session
from model.ClassPlanModel import ClassPlan
from .Crud import AbstractCrud

class ClassPlanCrud(AbstractCrud[ClassPlan]):
    @staticmethod
    def create(db: Session, name: str, credit: int, introduction: str = None, 
               profession: str = None, college: str = None) -> ClassPlan:
        """
        创建一个新的课程计划记录
        """
        new_plan = ClassPlan(
            name=name, 
            credit=credit, 
            introduction=introduction, 
            profession=profession, 
            college=college
        )
        db.add(new_plan)
        db.commit()
        db.refresh(new_plan)
        return new_plan
    
    @staticmethod
    def get_by_id_paginated(db: Session, page: int, page_size: int = 10):
        """
        分页查询按 class_plan_id 筛选的记录
        """
        offset = (page - 1) * page_size
        total_records = db.query(ClassPlan).count()
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
            db.query(ClassPlan)
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
            "data": [{"id": i.id,
                      "name": i.name,
                      "introduction": i.introduction,
                      "profession": i.profession, 
                      "type": i.type,
                      "college": i.college,
                      "credit": i.credit
                      } for i in data]
        }
    
    @staticmethod
    def get_by_filters(
        db: Session, 
        page: int = 1, 
        page_size: int = 10, 
        credit: int = None, 
        profession: str = None, 
        college: str = None
    ):
        """
        根据 credit, profession, college 查询记录，并支持分页。
        如果某个参数为 None，则忽略该参数的过滤条件。
        """
        query = db.query(ClassPlan)

        if credit != -1:
            query = query.filter(ClassPlan.credit == credit)
        if profession != "":
            query = query.filter(ClassPlan.profession == profession)
        if college != "":
            query = query.filter(ClassPlan.college == college)

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
                      "name": i.name,
                      "introduction": i.introduction,
                      "profession": i.profession, 
                      "type": i.type,
                      "college": i.college,
                      "credit": i.credit
                      } for i in data]
        }

   