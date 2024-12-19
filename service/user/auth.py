import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session

from crud.TeacherCrud import TeacherCrud
from crud.StudentCrud import StudentCrud
from crud.AdminCrud import AdminCrud
from schema.user.UserAuthSchema import UserAuthSchema
from utils.auth_token import create_token
from utils.get_db import get_db
from utils.hash_string import hash_string

auth_router = APIRouter()


@auth_router.post("/auth")
async def _(body: UserAuthSchema, db: Session = Depends(get_db)):
    email = body.email
    password = body.password
    usertype = body.type

    if usertype not in ['teacher', 'student', 'admin']:
        return JSONResponse(status_code=400, content={"status": 1, "message": "Usertype invalid"})
    
    try:
        if usertype == 'teacher':
            user = TeacherCrud.get_by_email(db, email)
        elif usertype == 'student':
            user = StudentCrud.get_by_email(db, email)
        elif usertype == 'admin':
            user = AdminCrud.get_by_email(db, email)

    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"DataBase Error: {e}"})

    hashed_password = hash_string(password)

    if user is None or user.password != hashed_password:
        return JSONResponse(status_code=401, content={"status": 1, "message": f"Wrong email or password"})

    token = None
    if usertype in ['teacher', 'student']:
        if user.verify:
            payload = {
                "user_id": user.id,
                "usertype": usertype,
                "username": user.name
            }
            token = create_token(payload)
        else:
            return {
                    "status": 0,
                    "message": "OK",
                    "token": None,
                    "userID": user.id,
                    "usertype": usertype,
                    "username": user.name,
                }
    else:
        payload = {
            "user_id": user.id,
            "usertype": usertype,
            "username": user.name
        }
        token = create_token(payload)

    return {
        "status": 0,
        "message": "OK",
        "token": token,
        "userID": user.id,
        "usertype": usertype,
        "username": user.name
    }
