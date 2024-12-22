import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.TeacherScheduleCrud import TeacherScheduleCrud
from schema.course.schedule.TeacherScheduleListSchema import TeacherScheduleListSchema
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db

teacher_schedule_list_router = APIRouter()

@teacher_schedule_list_router.get("/teacherSchedule")
async def _(body: TeacherScheduleListSchema = Depends(), token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.teacher_schedule

    try:
        data = TeacherScheduleCrud.get_by_id_list(db, id)

    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": data
    }