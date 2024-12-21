FROM ubuntu:latest
COPY / /
WORKDIR /
RUN apt update && apt install -y python3 python3-pip
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && pip install -r requirements.txt
EXPOSE 8080
CMD python3 main.py