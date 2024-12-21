from sqlalchemy.orm import Session
from model.ClassroomModel import Classroom
from .Crud import AbstractCrud

class ClassroomCrud(AbstractCrud[Classroom]):
    
    @staticmethod
    def get_all_S(db:Session) -> list[Classroom]:
        results = (
            db.query(Classroom)
            .filter(Classroom.type == 'S')
            .all()
        )
        return results
