import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.TeacherScheduleCrud import TeacherScheduleCrud
from model.TeacherScheduleModel import TeacherSchedule
from model.ClassScheduleModel import ClassSchedule
from crud.ClassScheduleCrud import ClassScheduleCrud
from schema.course.schedule.TeacherScheduleDeleteSchema import TeacherScheduleDeleteSchema

from utils.auth_token import validate_teacher_token
from utils.get_db import get_db

teacher_schedule_delete_router = APIRouter()

@teacher_schedule_delete_router.delete("/teacherSchedule")
async def _(body: TeacherScheduleDeleteSchema, token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.teacher_schedule

    try:
        data = TeacherScheduleCrud.delete_by_id(db, TeacherSchedule, id)
        ClassScheduleCrud.delete_by_id(db, ClassSchedule, data.class_schedule_id)

    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK"
    }