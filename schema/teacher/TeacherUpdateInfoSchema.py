from pydantic import BaseModel

class TeacherUpdateInfoSchema(BaseModel):
    username: str
    password: str
    sex: str
    introduction: str
    profession: str
    college: str
    idcard: str