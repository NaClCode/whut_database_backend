import time

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session

from crud.FeedbackCrud import FeedbackCrud
from schema.user.UserFeedbackSchema import UserFeedbackSchema
from utils.auth_token import validate_token
from utils.get_db import get_db

feedback_router = APIRouter()


@feedback_router.post("/feedback")
async def _(body: UserFeedbackSchema, token_payload: dict = Depends(validate_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    title = body.title
    content = body.content

    if not 0 < len(title) <= 255 or not 0 < len(content) <= 2048:
        return JSONResponse(status_code=400, content={"status": 1, "message": "Title or content too long"})

    try:
        FeedbackCrud.create_feedback(db, title, content, int(time.time()), 0, user_id)
    except Exception as e:
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database error: {e}"})

    return {"status": 0, "message": "OK"}
