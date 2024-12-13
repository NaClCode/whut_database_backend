from fastapi import APIRouter
from .detail import detail_router 
from .list import list_plan_router
from .search import search_router

plan_router = APIRouter()
plan_router.include_router(detail_router)
plan_router.include_router(list_plan_router)
plan_router.include_router(search_router)