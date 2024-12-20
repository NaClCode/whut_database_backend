import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.teacher.TeacherGetInfoSchema import TeacherGetInfoSchema
from crud.TeacherCrud import TeacherCrud
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db
from model.TeacherModel import Teacher
list_info_router = APIRouter()

@list_info_router.get("/listInfo")
async def _(body: TeacherGetInfoSchema = Depends(), token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):

    teacher_id = body.id
    try:
        user = TeacherCrud.get_by_id(db, Teacher, teacher_id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    if user is None:
        return JSONResponse(status_code=404, content={"status": 1, "message": "User Not Found"})

    return {
        "status": 0,
        "message": "OK",
        "data": {
            "name": user.name,
            "sex": user.sex,
            "introduction": user.introduction,
            "profession": user.profession,
            "college": user.college,
            "email": user.email
        }
    }