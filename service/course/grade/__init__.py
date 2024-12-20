from fastapi import APIRouter
from .grade_student import grade_student_router
from .grade_teacher import grade_teacher_router

grade_router = APIRouter()

grade_router.include_router(grade_teacher_router)
grade_router.include_router(grade_student_router)