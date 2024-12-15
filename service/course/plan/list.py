import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.plan.CoursePlanListSchema import CoursePlanListSchema
from crud.ClassPlanCrud import ClassPlanCrud
from utils.auth_token import validate_token
from utils.get_db import get_db

list_plan_router = APIRouter()

@list_plan_router.get("/list")
async def _(body: CoursePlanListSchema = Depends(), token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    page = body.page
    page_size = body.pagesize

    try:
        data = ClassPlanCrud.get_by_id_paginated(db, page, page_size)
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