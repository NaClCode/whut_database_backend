import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.TeacherCrud import TeacherCrud
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db

class_list_router = APIRouter()

@class_list_router.get("/classList")
async def _(token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")

    try:
        classer = TeacherCrud.get_teacher_courses(db, user_id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": classer
    }