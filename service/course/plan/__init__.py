from fastapi import APIRouter
from .list import list_router
from .detail import detail_router

plan_router = APIRouter()
plan_router.include_router(list_router)
plan_router.include_router(detail_router)