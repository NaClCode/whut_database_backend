from pydantic import BaseModel

class ScheduleSchema(BaseModel):
    course_id: int
    start_date: str
    end_date: str
    classroom: list[int]
    prefer: list[int]