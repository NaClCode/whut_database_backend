from pydantic import BaseModel

class UserFeedbackSchema(BaseModel):
    title: str
    content: str
