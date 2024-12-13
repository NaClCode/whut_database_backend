from pydantic import BaseModel

class UserRegisterSchema(BaseModel):
    username: str
    password: str
    email: str
    type: str
