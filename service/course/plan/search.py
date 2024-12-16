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
async def _(body: CoursePlanSearchSchema = Depends(), token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    name = body.name
    profession = body.profession
    credit = body.credit
    college = body.college
    type = body.type
    page = body.page
    page_size = body.pagesize
    is_selected = body.is_selected

    try:
        data = ClassPlanCrud.get_by_filters(db, 
                                            student_id=user_id, 
                                            page=page, 
                                            page_size=page_size, 
                                            name=name, 
                                            credit=credit, 
                                            profession=profession, 
                                            type=type, 
                                            college=college, 
                                            is_selected=is_selected)
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