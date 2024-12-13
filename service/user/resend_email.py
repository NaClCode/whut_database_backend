import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session

from crud.TeacherCrud import TeacherCrud
from crud.StudentCrud import StudentCrud
from schema.user.UserResendEmailSchema import UserResendEmailSchema
from utils.get_db import get_db
from utils.hash_string import hash_string
from utils.send_verify_email import send_verify_email

resend_email_router = APIRouter()


@resend_email_router.post("/resendEmail")
async def _(body: UserResendEmailSchema, db: Session = Depends(get_db)):
    email = body.email
    password = body.password
    usertype = body.type

    if usertype not in ['teacher', 'student']:
        return JSONResponse(status_code=400, content={"status": 1, "message": "Usertype invalid"})

    try:
        if usertype == 'teacher':
            user = TeacherCrud.get_by_email(db, email)
        elif usertype == 'student':
            user = StudentCrud.get_by_email(db, email)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"DataBase Error: {e}"})

    hashed_password = hash_string(password)

    if user is None or user.password != hashed_password:
        return JSONResponse(status_code=401, content={"status": 1, "message": f"Wrong email or password"})

    if user.verify:
        return JSONResponse(status_code=400, content={"status": 1, "message": "Email already verified"})

    await send_verify_email(email, usertype)

    return {
        "status": 0,
        "message": "OK",
    }