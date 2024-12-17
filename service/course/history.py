import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.EnrollmentHistoryCrud import EnrollmentHistoryCrud

from utils.auth_token import validate_token
from utils.get_db import get_db
from schema.course.CourseHistorySchema import CourseHistorySchema
history_router = APIRouter()

@history_router.get("/history")
async def _(body: CourseHistorySchema = Depends(), token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    action_type = body.action_type
    class_id = body.class_id
    page = body.page
    page_size = body.pagesize

    try:
        data = EnrollmentHistoryCrud.get_by_filters(db, page, page_size, user_id, class_id, action_type)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": data
    }

