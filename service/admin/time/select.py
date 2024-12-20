import traceback
from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from datetime import datetime
from config import config
from utils.auth_token import validate_admin_token
from schema.admin.time.AdminTimeSchema import AdminTimeSchema

select_router = APIRouter()

@select_router.put("/select")
async def put(
    body:AdminTimeSchema = Depends(), token_payload: dict = Depends(validate_admin_token),
):
    try:
        start_time_dt = datetime.fromisoformat(body.start_time)
        end_time_dt = datetime.fromisoformat(body.end_time)

        if start_time_dt >= end_time_dt:
            raise ValueError("开始时间必须早于结束时间。")

        config.select_start_time = start_time_dt
        config.select_end_time = end_time_dt

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


@select_router.get("/select")
async def get(
    token_payload: dict = Depends(validate_admin_token)
):
    try:
        return {
            "status": 0,
            "message": "OK",
            "data": {
                "start_time": config.select_start_time.strftime("%Y-%m-%d %H:%M:%S"),
                "end_time": config.select_end_time.strftime("%Y-%m-%d %H:%M:%S"),
            },
        }
    except Exception as e:
        return JSONResponse(
            status_code=500,
            content={"status": 1, "message": f"服务器错误: {e}"},
        )
