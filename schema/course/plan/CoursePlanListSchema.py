from pydantic import BaseModel

class CoursePlanListSchema(BaseModel):
    page: int
    pagesize: int