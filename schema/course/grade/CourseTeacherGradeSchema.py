from pydantic import BaseModel

class CourseTeacherGradeSchema(BaseModel):
    class_id: int
    