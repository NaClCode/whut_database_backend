from fastapi import APIRouter
from .update_info import update_info_router
from .get_info import get_info_router
from .list_info import list_info_router

teacher_router = APIRouter()
teacher_router.include_router(update_info_router)
teacher_router.include_router(get_info_router)
teacher_router.include_router(list_info_router)