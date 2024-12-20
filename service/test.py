import traceback
from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.ScheduleCrud import ScheduleCrud
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db

router = APIRouter()

@router.get("/get")
async def get_student_schedule(
    course_id: int,
    start_date: str,
    end_date: str,
    db: Session = Depends(get_db)
):

    try:

        schedule_matrix = ScheduleCrud.get_student_schedule_matrix(db, course_id, start_date, end_date)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": schedule_matrix 
    }
