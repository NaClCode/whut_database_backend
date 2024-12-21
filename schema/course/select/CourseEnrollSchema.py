from pydantic import BaseModel

class CourseEnrollSchema(BaseModel):
    classid: int