from pydantic import BaseModel
from typing import Optional

class CoursePlanSearchSchema(BaseModel):
    name: str
    college: str
    profession: str
    credit: int
    is_selected: int
    type: str
    page: int
    pagesize: int
