from pydantic import BaseModel

class CourseDropSchema(BaseModel):
    classid: int