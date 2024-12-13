import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.plan.CoursePlanSearchSchema import CoursePlanSearchSchema
from crud.ClassPlanCrud import ClassPlanCrud
from utils.auth_token import validate_token
from utils.get_db import get_db

search_router = APIRouter()

@search_router.get("/search")
async def _(body: CoursePlanSearchSchema, token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    profession = body.profession
    credit = body.credit
    college = body.college
    page = body.page
    page_size = body.pagesize

    try:
        data = ClassPlanCrud.get_by_filters(db, page, page_size, credit, profession, college)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    if data is None:
        return JSONResponse(status_code=404, content={"status": 1, "message": "User Not Found"})

    return {
        "status": 0,
        "message": "OK",
        "data": data
    }