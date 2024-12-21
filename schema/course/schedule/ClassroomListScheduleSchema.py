from pydantic import BaseModel

class ClassroomListScheduleSchema(BaseModel):
    class_num: int