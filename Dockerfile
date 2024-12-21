FROM ubuntu:22.04
COPY / /
WORKDIR /
RUN apt update && apt install -y python3 python3-pip
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && pip install fastapi pydantic pydantic-settings PyJWT SQLAlchemy uvicorn PyMySQL python-multipart aiohttp sse_starlette grpcio
EXPOSE 8080
CMD python3 main.py