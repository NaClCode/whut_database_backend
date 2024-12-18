from datetime import datetime
from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.SCCrud import StudentCourseCrud
from schema.course.CourseDayTableSchema import CourseDayTableSchema
from utils.auth_token import validate_token
from utils.get_db import get_db
import traceback

list_router = APIRouter()

@list_router.get("/dayTable")
async def get_courses_for_month(body: CourseDayTableSchema = Depends(), token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    time_str = body.time  

    try:
        time_obj = datetime.strptime(time_str, "%Y-%m")
        
    except ValueError as e:
        return JSONResponse(status_code=400, content={"status": 1, "message": "Invalid time format, expected YYYY-MM"})

    try:
        data = StudentCourseCrud.get_courses_by_day(db, 
                                                    student_id=user_id,
                                                    specific_date=time_obj)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": data
    }

