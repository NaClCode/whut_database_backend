from fastapi import APIRouter
from .time import time_router

admin_router = APIRouter()
admin_router.include_router(time_router, prefix='/time')
