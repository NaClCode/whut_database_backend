import traceback

from fastapi import APIRouter, Depends
from fastapi.responses import JSONResponse
from sqlalchemy.orm import Session
from crud.ScheduleCrud import ScheduleCrud
from crud.ClassScheduleCrud import ClassScheduleCrud
from crud.TeacherScheduleCrud import TeacherScheduleCrud 

from model.ClassScheduleModel import ClassSchedule
from schema.course.schedule.ScheduleSchema import ScheduleSchema
from utils.auth_token import validate_teacher_token
from utils.get_db import get_db
from utils.opt_client.opt import run_opt_client
import numpy as np
from datetime import datetime, timedelta
from config import config

schedules_router = APIRouter()

@schedules_router.post("/schedule")
async def _(body: ScheduleSchema, token_payload: dict = Depends(validate_teacher_token), db: Session = Depends(get_db)):
    user_id = token_payload.get("user_id")
    course_id = body.course_id
    start_date = body.start_date
    end_date = body.end_date
    classroom = body.classroom
    prefer = body.prefer

    try:
        student_schedule_matrix, student_id = ScheduleCrud.get_student_schedule_matrix(db, course_id, start_date, end_date)
        classroom_schedule_matrix = ScheduleCrud.get_classroom_schedule_matrix(db, classroom, start_date, end_date)
        
        student_num, day_num, _ = student_schedule_matrix.shape
        classroom_num, _, _ = classroom_schedule_matrix.shape

        day_w = np.ones(day_num).tolist()
        day_5 = np.array(prefer).tolist()

        result = run_opt_client(config.schedule_address, day_num, 
                                student_num, classroom_num, 1, 
                                1, student_schedule_matrix.astype(int).flatten().tolist(), 
                                classroom_schedule_matrix.astype(int).flatten().tolist(), day_w, day_5)

        if result['state']:

            x = np.array(result['X'])
            indices = np.where(x == 1)
            start_time = datetime.strptime(start_date, "%Y-%m-%d %H:%M:%S").replace(hour=0, minute=0, second=0, microsecond=0)

            time_mapping = [timedelta(hours=8), timedelta(hours=10), timedelta(hours=14), timedelta(hours=16), timedelta(hours=19)]
            start_time = start_time + timedelta(days=int(indices[1][0])) + time_mapping[int(indices[0][0])]
            end_time = start_time + timedelta(hours=2)

            y = np.array(result['Y'])
            indices = np.where(y == 1)
            classroom_id = classroom[int(indices[0][0])]

            res = student_id * np.sum(student_schedule_matrix * x.reshape(-1, 5), axis=(1, 2))
            c_student_id =  res[res != 0]

            classScheduler:ClassSchedule = ClassScheduleCrud.create(db, 
                                     start_time=start_time,
                                     end_time=end_time,
                                     classroom=classroom_id,
                                     class_id=course_id)
            
            TeacherScheduleCrud.create(db, user_id, classScheduler.id, result['w'], result['pref'], c_student_id.tolist())
            
            schedule_data = {
                "perf": result['pref'],
                "w": result['w'],
                "schedule": {
                    "start_time": start_time,
                    "end_time": end_time,
                    "classroom_id": classroom_id
                },
                "conflict_students": []
            }

        else:
            return JSONResponse(status_code=500, content={"status": 1, "message": f"Error: 教室冲突，排课失败"})

    except Exception as e:
        traceback.print_exc()
        return JSONResponse(status_code=500, content={"status": 1, "message": f"Error: {e}"})

    return {
        "status": 0,
        "message": "OK",
        "data": schedule_data
    }
