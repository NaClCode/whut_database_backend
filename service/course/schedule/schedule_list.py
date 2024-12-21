import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.ClassScheduleCrud import ClassScheduleCrud
from schema.course.schedule.ScheduleListSchema import ScheduleListSchema
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db

schedule_list_router = APIRouter()

@schedule_list_router.get("/scheduleList")
async def _(body: ScheduleListSchema = Depends(), token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.class_id

    try:
        class_schedule = ClassScheduleCrud.get_by_class(db, id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": class_schedule
    }