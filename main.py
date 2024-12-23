import os

import uvicorn
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from config import config
from database import Base, engine

from service.user import user_router
from service.teacher import teacher_router
from service.student import student_router
from service.course import course_router
from service.admin import admin_router

Base.metadata.create_all(bind=engine)

app = FastAPI(title='DATABASE', debug=True)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/openapi_v2")
async def openapi_v2():
    schema = app.openapi()
    schema.update(
        host="your.app.com",
        schemes=["https"],
        produces=["application/json"],
    )

    if len(schema["paths"]) == 0:
        return schema

    endpoint = list(schema["paths"].keys())[0]
    schema["paths"]["/"] = schema["paths"][endpoint]
    del schema["paths"][endpoint]

    for endpoint in schema["paths"].keys():
        for method in schema["paths"][endpoint].keys():
            if "tags" in schema["paths"][endpoint][method]:
                del schema["paths"][endpoint][method]["tags"]

            schema["paths"][endpoint][method]["x-google-backend"] = {
                "address": "https://your.app.com",
                "path_translation": "APPEND_PATH_TO_ADDRESS",
                "protocol": "h2",
            }

    return schema

app.include_router(user_router, prefix="/user")
app.include_router(teacher_router, prefix='/teacher')
app.include_router(student_router, prefix='/student')
app.include_router(course_router, prefix='/course')
app.include_router(admin_router, prefix='/admin')

@app.get("/")
async def root():
    return {
        "status": 0,
        "message": "OK",
        "version": "v1.0.0"
    }

if __name__ == "__main__":
    uvicorn.run(app, host=config.bind_host, port=config.bind_port)
