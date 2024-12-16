from sqlalchemy.orm import Session
from sqlalchemy.sql import func
from sqlalchemy import case
from model.ClassPlanModel import ClassPlan
from model.SCModel import StudentCourse
from model.ClassModel import Class
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
    def get_by_id_paginated(
        db: Session, 
        student_id: int, 
        page: int = 1, 
        page_size: int = 10
    ):
        """
        分页查询 class_plan，并判断指定学生是否选择了该课程。
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
            db.query(
                ClassPlan.id,
                ClassPlan.name,
                ClassPlan.introduction,
                ClassPlan.profession,
                ClassPlan.college,
                ClassPlan.credit,
                ClassPlan.type,
                func.max(case(
                    (StudentCourse.student_id.isnot(None), 1),
                    else_=0
                )).label('is_selected')
            )
            .outerjoin(Class, ClassPlan.id == Class.class_plan_id)
            .outerjoin(StudentCourse, 
                       (StudentCourse.class_id == Class.id) & 
                       (StudentCourse.student_id == student_id))
            .group_by(ClassPlan.id) 
            .offset(offset)
            .limit(page_size)
            .all()
        )

        return {
            "page": page,
            "page_size": page_size,
            "total_records": total_records,
            "total_pages": total_pages,
            "data": [{
                "id": i.id,
                "name": i.name,
                "introduction": i.introduction,
                "profession": i.profession, 
                "college": i.college,
                "credit": i.credit,
                "type": i.type,
                "is_selected": i.is_selected
            } for i in data]
        }

    @staticmethod
    def get_by_filters(
        db: Session, 
        student_id: int, 
        page: int = 1, 
        page_size: int = 10, 
        name: str = None,
        credit: int = None, 
        profession: str = None, 
        type: str = None,
        college: str = None,
        is_selected: bool = None
    ):
        """
        根据 credit, profession, college 查询记录，并支持分页。
        同时判断指定学生是否选择了该课程计划。
        如果某个参数为""或者-1，则忽略该参数的过滤条件。
        """
        query = (
            db.query(
                ClassPlan.id,
                ClassPlan.name,
                ClassPlan.introduction,
                ClassPlan.profession,
                ClassPlan.college,
                ClassPlan.credit,
                ClassPlan.type,
                func.max(case(
                    (StudentCourse.student_id.isnot(None), 1),
                    else_=0
                )).label('is_selected')
            )
            .outerjoin(Class, ClassPlan.id == Class.class_plan_id)
            .outerjoin(StudentCourse, 
                    (StudentCourse.class_id == Class.id) & (StudentCourse.student_id == student_id))
            .group_by(
                ClassPlan.id, 
                ClassPlan.name, 
                ClassPlan.introduction, 
                ClassPlan.profession,
                ClassPlan.college, 
                ClassPlan.credit, 
                ClassPlan.type
            )
        )

        if name != "":
            query = query.filter(ClassPlan.name == name)
        if credit != -1:
            query = query.filter(ClassPlan.credit == credit)
        if profession != "":
            query = query.filter(ClassPlan.profession == profession)
        if college != "":
            query = query.filter(ClassPlan.college == college)
        if type != "":
            query = query.filter(ClassPlan.type == type)
        if is_selected != -1:
            query = query.having(func.max(case(
                (StudentCourse.student_id.isnot(None), 1), else_=0
            )) == int(is_selected))

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

        # 查询结果
        data = query.group_by(ClassPlan.id).offset(offset).limit(page_size).all()

        return {
            "page": page,
            "page_size": page_size,
            "total_records": total_records,
            "total_pages": total_pages,
            "data": [
                {
                    "id": i.id,
                    "name": i.name,
                    "introduction": i.introduction,
                    "profession": i.profession, 
                    "college": i.college,
                    "credit": i.credit,
                    "type": i.type,
                    "is_selected": i.is_selected
                } 
                for i in data
            ]
        }


   