import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.select.CourseDropSchema import CourseDropSchema
from crud.EnrollCrud import EnrollCrud
from config import config
from utils.auth_token import validate_student_token
from utils.get_db import get_db
from datetime import datetime
drop_router = APIRouter()

@drop_router.delete("/drop")
async def _(body:CourseDropSchema, token_payload: dict = Depends(validate_student_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.classid
    time = datetime.now()
    select_start_time = config.select_start_time
    select_end_time = config.select_end_time

    try:
        if time < select_start_time or time > select_end_time:
            return JSONResponse(
                status_code=400,
                content={
                    "status": 1,
                    "message": "不在选课时间",
                }
            )
        
        EnrollCrud.drop_course(db, student_id=user_id, class_id=id, time=time)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Error: {e}"})

    return {
        "status": 0,
        "message": "OK"
    }

