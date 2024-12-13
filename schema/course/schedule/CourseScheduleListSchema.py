from pydantic import BaseModel

class CourseScheduleListSchema(BaseModel):
    id: int
    page: int
    pagesize: int