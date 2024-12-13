import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.CourseDropSchema import CourseDropSchema
from crud.SCCrud import StudentCourseCrud
from crud.EnrollmentHistoryCrud import EnrollmentHistoryCrud

from utils.auth_token import validate_token
from utils.get_db import get_db
from datetime import datetime
drop_router = APIRouter()

@drop_router.delete("/drop")
async def _(body:CourseDropSchema, token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.classid
    time = datetime.now()

    try:
        StudentCourseCrud.delete_by_student_and_class(db, user_id, id)
        EnrollmentHistoryCrud.create(db, user_id, id, 'Drop', time)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})


    return {
        "status": 0,
        "message": "OK"
    }

