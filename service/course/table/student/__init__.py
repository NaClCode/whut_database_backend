from fastapi import APIRouter
from .day_table import day_table_router
from .table import table_router

student_router = APIRouter()

student_router.include_router(day_table_router)
student_router.include_router(table_router)