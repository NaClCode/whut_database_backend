from fastapi import APIRouter
from .test import test_router
from .classroom_list import classroom_list_router
from .class_list import class_list_router

schedule_router = APIRouter()
schedule_router.include_router(test_router)
schedule_router.include_router(class_list_router)
schedule_router.include_router(classroom_list_router)
