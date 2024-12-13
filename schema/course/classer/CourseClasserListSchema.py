from pydantic import BaseModel

class CourseClasserListSchema(BaseModel):
    id: int
    page: int
    pagesize: int