import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from schema.course.plan.CoursePlanDetailSchema import CoursePlanDetailSchema
from crud.ClassPlanCrud import ClassPlanCrud
from utils.auth_token import validate_token
from utils.get_db import get_db
from model.ClassPlanModel import ClassPlan
detail_router = APIRouter()

@detail_router.get("/detail")
async def _(body:CoursePlanDetailSchema = Depends(), token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    id = body.id

    try:
        plan = ClassPlanCrud.get_by_id(db, ClassPlan, id)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    if plan is None:
        return JSONResponse(status_code=404, content={"status": 1, "message": "ClassPlan Not Found"})

    return {
        "status": 0,
        "message": "OK",
        "data": {
            "id": plan.id,
            "name": plan.name,
            "introduction": plan.introduction,
            "profession": plan.profession,
            "college": plan.college,
            "credit": plan.credit,
            "type": plan.type
        }
    }