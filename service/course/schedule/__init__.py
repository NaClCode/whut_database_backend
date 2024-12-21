from fastapi import APIRouter
from .test import test_router

schedule_router = APIRouter()
schedule_router.include_router(test_router)