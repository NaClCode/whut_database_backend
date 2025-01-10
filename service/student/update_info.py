import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session

from config import config
from crud.StudentCrud import StudentCrud
from schema.student.StudentUpdateInfoSchema import StudentUpdateInfoSchema
from utils.auth_token import validate_student_token
from utils.get_db import get_db
from utils.hash_string import hash_string
from model.StudentModel import Student

update_info_router = APIRouter()

@update_info_router.put("/updateInfo")
async def _(body: StudentUpdateInfoSchema, token_payload: dict = Depends(validate_student_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    username = body.username
    password = body.password
    sex = body.sex
    classer = body.classer
    profession = body.profession
    college = body.college
    idcard = body.idcard

    if username != "" and not (config.user_name_min <= len(username) <= config.user_name_max):
        return JSONResponse(status_code=400, content={"status": 1, "message": "Username length invalid"})

    if password != "" and not (config.user_password_min <= len(password) <= config.user_password_max):
        return JSONResponse(status_code=400, content={"status": 1, "message": "Password length invalid"})
    
    if sex != "" and not (sex in ['M', 'U', 'F']):
        return JSONResponse(status_code=400, content={"status": 1, "message": "Sex invalid"})
    
    if idcard != "" and not (len(idcard) != 18):
        return JSONResponse(status_code=400, content={"status": 1, "message": "IDcard length invalid"})

    try:
        user = StudentCrud.get_by_id(db, Student, user_id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    if user is None:
        return JSONResponse(status_code=404, content={"status": 1, "message": "User Not Found"})

    try:
        if username != "": user.name = username     
        if password != "": user.password = hash_string(password)
        if sex != "": user.sex = sex
        if classer != "": user.classer = classer
        if profession != "": user.profession = profession
        if idcard != "": user.idcard = idcard
        if college != "": user.college = college
        
        StudentCrud.update(db, user.id, user)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK"
    }
