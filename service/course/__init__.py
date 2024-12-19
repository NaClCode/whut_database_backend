from fastapi import APIRouter
from .plan import plan_router
from .classer import classer_router
from .drop import drop_router
from .enroll import enroll_router
from .history import history_router
from .table import table_router
from .day_table import day_table_router
from .grade import grade_router
course_router = APIRouter()
course_router.include_router(plan_router, prefix='/plan')
course_router.include_router(classer_router, prefix='/classer')

course_router.include_router(drop_router)
course_router.include_router(enroll_router)
course_router.include_router(history_router)
course_router.include_router(table_router)
course_router.include_router(day_table_router)
course_router.include_router(grade_router)