from fastapi import APIRouter

from .auth import auth_router
from .check import check_router
from .feedback import feedback_router
from .register import register_router
from .resend_email import resend_email_router
from .verify import verify_router

user_router = APIRouter()
user_router.include_router(auth_router)
user_router.include_router(register_router)
user_router.include_router(check_router)
user_router.include_router(resend_email_router)
user_router.include_router(verify_router)
user_router.include_router(feedback_router)
