import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.schedule.CourseScheduleDetailSchema import CourseScheduleDetailSchema
from crud.ClassScheduleCrud import ClassScheduleCrud
from model.ClassScheduleModel import ClassSchedule
from utils.auth_token import validate_token
from utils.get_db import get_db

detail_router = APIRouter()

@detail_router.get("/detail")
async def _(body:CourseScheduleDetailSchema = Depends(), token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.id

    try:
        schedule = ClassScheduleCrud.get_by_id(db, ClassSchedule, id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    if schedule is None:
        return JSONResponse(status_code=404, content={"status": 1, "message": "Class Not Found"})

    return {
        "status": 0,
        "message": "OK",
        "data": {
            "id": schedule.id,
            "start_time": schedule.start_time,
            "end_time": schedule.end_time,
            "classtype": schedule.classtype,
            "classroom": schedule.classroom,
            "class_id": schedule.class_id
        }
    }

