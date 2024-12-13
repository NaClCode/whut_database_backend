import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.classer.CourseClasserListSchema import CourseClasserListSchema

from crud.ClassCrud import ClassCrud
from utils.auth_token import validate_token
from utils.get_db import get_db

list_router = APIRouter()

@list_router.get("/list")
async def _(body:CourseClasserListSchema, token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.id
    page = body.page
    pagesize = body.pagesize

    try:
        data = ClassCrud.get_by_id_paginated(db, id, page, pagesize)
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