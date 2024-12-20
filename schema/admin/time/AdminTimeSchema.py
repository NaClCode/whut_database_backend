from pydantic import BaseModel

class AdminTimeSchema(BaseModel):
    start_time: str
    end_time: str