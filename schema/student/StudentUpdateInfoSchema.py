from pydantic import BaseModel

class StudentUpdateInfoSchema(BaseModel):
    username: str
    password: str
    sex: str
    classer: str
    profession: str
    college: str
    idcard: str
