from fastapi import APIRouter
from .student import student_router
from .teacher import teacher_router

table_router = APIRouter()

table_router.include_router(student_router, prefix='/student')
table_router.include_router(teacher_router, prefix='/teacher')