from fastapi import APIRouter
from .day_table import day_table_router
from .table import table_router

teacher_router = APIRouter()

teacher_router.include_router(day_table_router)
teacher_router.include_router(table_router)