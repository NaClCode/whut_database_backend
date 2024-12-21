import traceback
from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.ScheduleCrud import ScheduleCrud
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db
from utils.opt_client.opt import run_opt_client

import numpy as np
test_router = APIRouter()

@test_router.get("/get")
async def get_student_schedule(
    # course_id: int,
    # start_date: str,
    # end_date: str,
    db: Session = Depends(get_db)
):

    try:

        # student_schedule_matrix = ScheduleCrud.get_student_schedule_matrix(db, course_id, start_date, end_date)
        
        # classroom_schedule_matrix = ScheduleCrud.get_classroom_schedule_matrix(db, [1, 2], start_date, end_date)

        server_address = "localhost:50051"
        day_num = 7
        student_num = 20
        classroom_num = 3
        schedule_classroom_num = 2
        schedule_class_num = 1

        student_w = np.random.randint(0, 2, (student_num, day_num, 5))
        classroom_w = np.random.randint(0, 2, (classroom_num, day_num, 5))

        student_w = np.zeros((student_num, day_num, 5))
        classroom_w = np.zeros((classroom_num, day_num, 5))
        print(student_w)
        print(classroom_w)
        day_w = np.zeros(day_num).tolist()
        day_5 = np.zeros(5).tolist()

        result = run_opt_client(server_address, day_num, 
                                student_num, classroom_num, schedule_classroom_num, 
                                schedule_class_num, student_w.astype(int).flatten().tolist(), 
                                classroom_w.astype(int).flatten().tolist(), day_w, day_5)
        print(result)
    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Database Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        # "sdata": student_schedule_matrix,
        # "cdate": classroom_schedule_matrix 
    }
