from pydantic import BaseModel

class CourseHistorySchema(BaseModel):
    page: int
    pagesize: int
    class_id: int
    action_type: str