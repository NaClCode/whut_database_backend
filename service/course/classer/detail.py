import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.classer.CourseClasserDetailSchema import CourseClasserDetailSchema
from crud.ClassCrud import ClassCrud
from utils.auth_token import validate_student_token
from utils.get_db import get_db
detail_router = APIRouter()

@detail_router.get("/detail")
async def _(body:CourseClasserDetailSchema = Depends(), token_payload: dict = Depends(validate_student_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.id

    try:
        data = ClassCrud.get_by_id(db, id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    if data is None:
        return JSONResponse(status_code=404, content={"status": 1, "message": "Class Not Found"})

    return {
        "status": 0,
        "message": "OK",
        "data": data
    }
