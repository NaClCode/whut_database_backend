from pydantic import BaseModel

class CoursePlanSearchSchema(BaseModel):
    college: str
    profession: str
    credit: int
    page: int
    pagesize: int