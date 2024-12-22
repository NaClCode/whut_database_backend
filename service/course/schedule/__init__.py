from fastapi import APIRouter
from .classroom_list import classroom_list_router
from .class_list import class_list_router
from .schedule_list import schedule_list_router
from .schedule import schedules_router

schedule_router = APIRouter()
schedule_router.include_router(class_list_router)
schedule_router.include_router(classroom_list_router)
schedule_router.include_router(schedule_list_router)
schedule_router.include_router(schedules_router)