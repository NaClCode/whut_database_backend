from pydantic import BaseModel

class CoursePostGradeSchema(BaseModel):
    class_id: int
    student_id: list[int]
    grade: list[int]