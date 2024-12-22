from datetime import datetime
from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.SCCrud import StudentCourseCrud
from schema.course.grade.CoursePostGradeSchema import CoursePostGradeSchema
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db
import traceback

grade_teacher_update_router = APIRouter()

@grade_teacher_update_router.put("/teacher")
async def _(body: CoursePostGradeSchema, token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    class_id = body.class_id 
    student_ids = body.student_id
    grade = body.grade

    try:
        data = StudentCourseCrud.upload_student_grades(db, class_id, student_ids, grade)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK"
    }

