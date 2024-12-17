import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.CourseEnrollSchema import CourseEnrollSchema
from crud.EnrollCrud import EnrollCrud

from utils.auth_token import validate_token
from utils.get_db import get_db
from datetime import datetime
enroll_router = APIRouter()

@enroll_router.post("/enroll")
async def enroll_course(body: CourseEnrollSchema, token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    class_id = body.classid
    time = datetime.now()

    try:
        EnrollCrud.enroll_course(db, student_id=user_id, class_id=class_id, time=time)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Error: {e}"})

    return {
        "status": 0,
        "message": "OK"
    }


