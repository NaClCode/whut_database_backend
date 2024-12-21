from pydantic import BaseModel

class CourseGradeSchema(BaseModel):
    page: int
    pagesize: int
    