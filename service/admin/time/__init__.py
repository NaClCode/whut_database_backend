from fastapi import APIRouter
from .select import select_router
from .grade import grade_router
from .schedule import schedule_router

time_router = APIRouter()
time_router.include_router(select_router)
time_router.include_router(grade_router)
time_router.include_router(schedule_router)