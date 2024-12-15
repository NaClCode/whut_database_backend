import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session

from crud.TeacherCrud import TeacherCrud
from crud.StudentCrud import StudentCrud
from model.TeacherModel import Teacher
from model.StudentModel import Student
from utils.auth_token import validate_token
from utils.get_db import get_db

verify_router = APIRouter()

@verify_router.get("/verify")
async def _(token: str, db: Session = Depends(get_db)):
    payload = validate_token(token)
    email = payload.get("email")
    usertype = payload.get("usertype")

    try:
        if usertype == 'student':
            user = StudentCrud.get_by_email(db, email)
        elif usertype == 'teacher':
            usertype = TeacherCrud.get_by_email(db, email)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"DataBase Error: {e}"})

    if user is None:
        return JSONResponse(status_code=400, content={"status": 1, "message": "No such user"})

    if user.verify:
        return JSONResponse(status_code=400, content={"status": 1, "message": "Email already verified"})

    try:
        user.verify = True
        if usertype == 'teacher':
            TeacherCrud.update(db, Teacher, user)
        elif usertype == 'student':
            StudentCrud.update(db, Student, user)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"DataBase Error: {e}"})

    return "账号已激活"
