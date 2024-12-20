import traceback
from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from datetime import datetime
from config import config
from utils.auth_token import validate_admin_token
from schema.admin.time.AdminTimeSchema import AdminTimeSchema

grade_router = APIRouter()

@grade_router.put("/grade")
async def put(
    body:AdminTimeSchema, token_payload: dict = Depends(validate_admin_token),
):
    try:
        start_time_dt = datetime.strptime(body.start_time, "%Y-%m-%d %H:%M:%S")
        end_time_dt = datetime.strptime(body.end_time, "%Y-%m-%d %H:%M:%S")

        config.grade_start_time = start_time_dt
        config.grade_end_time = end_time_dt

    except ValueError as ve:
        return JSONResponse(status_code=400, content={"status": 1, "message": f"时间格式错误或逻辑错误: {ve}"})
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"{e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": {
            "start_time": start_time_dt.strftime("%Y-%m-%d %H:%M:%S"),
            "end_time": end_time_dt.strftime("%Y-%m-%d %H:%M:%S")
        }
    }


@grade_router.get("/grade")
async def get(
    token_payload: dict = Depends(validate_admin_token)
):
    try:
        return {
            "status": 0,
            "message": "OK",
            "data": {
                "start_time": config.grade_start_time.strftime("%Y-%m-%d %H:%M:%S"),
                "end_time": config.grade_end_time.strftime("%Y-%m-%d %H:%M:%S"),
            },
        }
    except Exception as e:
        return JSONResponse(
            status_code=500,
            content={"status": 1, "message": f"服务器错误: {e}"},
        )
