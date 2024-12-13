from fastapi import APIRouter
from .detail import detail_router 
from .list import list_router

classer_router = APIRouter()
classer_router.include_router(detail_router)
classer_router.include_router(list_router)