from sqlalchemy.orm import Session
from model.ClassroomModel import Classroom
from .Crud import AbstractCrud

class ClassroomCrud(AbstractCrud[Classroom]):
    
    @staticmethod
    def get_all_S(db:Session, num:int) -> list[Classroom]:
        results = (
            db.query(Classroom)
            .filter(Classroom.type == 'S')
            .filter(Classroom.capacity >= num)
            .all()
        )
        return results
