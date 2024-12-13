from pydantic import BaseModel

class UserResendEmailSchema(BaseModel):
    email: str
    password: str
    type: str
    
