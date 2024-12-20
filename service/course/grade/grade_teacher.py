from datetime import datetime
from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.SCCrud import StudentCourseCrud
from schema.course.CourseGradeSchema import CourseGradeSchema 
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db
import traceback

grade_teacher_router = APIRouter()

@grade_teacher_router.get("/teacher")
async def _(body: CourseGradeSchema = Depends(), token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    page = body.page
    pagesize = body.pagesize  

    try:
        data = StudentCourseCrud.get_student_grade_page(db, 
                                                        student_id=user_id,
                                                        page=page,
                                                        page_size=pagesize)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": data
    }

