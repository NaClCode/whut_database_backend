from pydantic import BaseModel

class ScheduleListSchema(BaseModel):
    class_id: int