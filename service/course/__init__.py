from fastapi import APIRouter
from .plan import plan_router
from .classer import classer_router
from .select import select_router
from .table import table_router
from .grade import grade_router
from .schedule import schedule_router

course_router = APIRouter()
course_router.include_router(plan_router, prefix='/plan')
course_router.include_router(classer_router, prefix='/classer')
course_router.include_router(grade_router, prefix='/grade')
course_router.include_router(select_router, prefix='/select')
course_router.include_router(table_router, prefix='/table')
course_router.include_router(schedule_router, prefix='/schedule')