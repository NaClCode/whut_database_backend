from fastapi import APIRouter
from .drop import drop_router
from .enroll import enroll_router
from .history import history_router

select_router = APIRouter()

select_router.include_router(drop_router)
select_router.include_router(enroll_router)
select_router.include_router(history_router)