from fastapi import APIRouter
from .detail import detail_router
from .list import list_router

schedule_router = APIRouter()
schedule_router.include_router(detail_router)
schedule_router.include_router(list_router)