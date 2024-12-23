FROM ubuntu:22.04
COPY / /
WORKDIR /
RUN apt update && apt install -y python3 python3-pip
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && pip install grpcio numpy pandas protoBuf pulp
EXPOSE 50051
CMD python3 main.py