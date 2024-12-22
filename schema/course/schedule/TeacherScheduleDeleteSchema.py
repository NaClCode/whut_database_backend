from pydantic import BaseModel

class TeacherScheduleDeleteSchema(BaseModel):
    teacher_schedule: int