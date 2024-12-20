import numpy as np
from sqlalchemy.orm import Session
from model.StudentModel import Student
from model.ClassScheduleModel import ClassSchedule
from model.ClassModel import Class
from model.SCModel import StudentCourse
import pandas as pd

class ScheduleCrud:

    @staticmethod
    def get_student_schedule_matrix(db: Session, course_id: int, start_date: str, end_date: str):

        student_ids = [student[0] for student in db.query(Student.id)
                       .join(StudentCourse, StudentCourse.student_id == Student.id)
                       .filter(StudentCourse.class_id == course_id)
                       .all()]

        date_range = pd.date_range(start=start_date, end=end_date).strftime('%Y-%m-%d').tolist()
        date_to_idx = {date: idx for idx, date in enumerate(date_range)}

        time_slots = {
            8: 0,  # 8:00-10:00
            10: 1,  # 10:00-12:00
            14: 2,  # 14:00-16:00
            16: 3,  # 16:00-18:00
            19: 4,  # 19:00-21:00
        }

        num_days = len(date_range)
        num_students = len(student_ids)
        schedule_matrix = np.zeros((num_students, num_days, 5), dtype=int)

        student_id_to_index = {student_id: idx for idx, student_id in enumerate(student_ids)}

        query = db.query(
            Student.id.label('student_id'),
            ClassSchedule.start_time
        ).join(StudentCourse, StudentCourse.student_id == Student.id) \
         .join(Class, StudentCourse.class_id == Class.id) \
         .join(ClassSchedule, Class.id == ClassSchedule.class_id) \
         .filter(Student.id.in_(student_ids)) \
         .filter(ClassSchedule.start_time.between(start_date, end_date)) \
         .order_by(Student.id, ClassSchedule.start_time).all()

        for row in query:
            student_id = row.student_id
            start_time = row.start_time

            student_idx = student_id_to_index[student_id]

            day_idx = date_to_idx.get(str(start_time.date()))

            for start_hour, timeslot in time_slots.items():
                if start_hour == start_time.hour:
                    schedule_matrix[student_idx, day_idx, timeslot] = 1
            
        return schedule_matrix.tolist()
    
    @staticmethod
    def get_classroom_schedule_matrix(db: Session, classroom_ids: list, start_date: str, end_date: str):
        
        date_range = pd.date_range(start=start_date, end=end_date).strftime('%Y-%m-%d').tolist()
        date_to_idx = {date: idx for idx, date in enumerate(date_range)}

        time_slots = {
            8: 0,   # 8:00-10:00
            10: 1,  # 10:00-12:00
            14: 2,  # 14:00-16:00
            16: 3,  # 16:00-18:00
            19: 4,  # 19:00-21:00
        }

        num_classrooms = len(classroom_ids)
        num_days = len(date_range)
        
        schedule_matrix = np.zeros((num_classrooms, num_days, 5), dtype=int)

        classroom_id_to_index = {classroom_id: idx for idx, classroom_id in enumerate(classroom_ids)}

        query = db.query(
            ClassSchedule.classroom_id,
            ClassSchedule.start_time
        ).filter(
            ClassSchedule.classroom_id.in_(classroom_ids),
            ClassSchedule.start_time.between(start_date, end_date)
        ).order_by(ClassSchedule.classroom_id, ClassSchedule.start_time).all()

        for row in query:
            classroom_id = row.classroom_id
            start_time = row.start_time

            classroom_idx = classroom_id_to_index[classroom_id]

            day_idx = date_to_idx.get(str(start_time.date()))

            for start_hour, timeslot in time_slots.items():
                if start_hour == start_time.hour:
                    schedule_matrix[classroom_idx, day_idx, timeslot] = 1

        return schedule_matrix.tolist()

