from pydantic import BaseModel

class CourseDayTableSchema(BaseModel):
    time: str