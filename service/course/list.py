import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.SCCrud import StudentCourseCrud

from model.SCModel import StudentCourse
from utils.auth_token import validate_token
from utils.get_db import get_db
list_router = APIRouter()

@list_router.get("/list")
async def _(token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    
    try:
        data:list[StudentCourse] = StudentCourseCrud.get_by_student_id(db, user_id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})


    return {
        "status": 0,
        "message": "OK",
        "data": [
            {   
                "class_id": i.class_id,
                "enroll_date": i.enrolled_date,
                "grade": i.grade
            }
            for i in data
        ]
    }

