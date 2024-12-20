import grpc
import opt_pb2
import opt_pb2_grpc
import numpy as np


def run():
    # 连接到 gRPC 服务器
    channel = grpc.insecure_channel('localhost:50051')
    stub = opt_pb2_grpc.OptimizationServiceStub(channel)

    # 创建请求数据
    M, N = 3, 5
    I, J = 4, 3

    # w_i 和 ww_j 示例数据（可以替换为实际数据）
    # w_i = [np.random.uniform(0, 2, (M, N)) for _ in range(I)]
    # ww_j = [np.random.uniform(0, 2, (M, N)) for _ in range(J)]
    w_i = [np.ones((M, N)) for _ in range(I)]
    ww_j = [np.ones((M, N)) for _ in range(J)]

    request = opt_pb2.OptimizationRequest()

    for i in range(I):
        matrix = opt_pb2.Matrix(rows=int(M), cols=int(N), data=[int(_) for _ in w_i[i].flatten().tolist()])
        request.w_i.append(matrix)

    for j in range(J):
        matrix = opt_pb2.Matrix(rows=int(M), cols=int(N), data=[int(_) for _ in ww_j[j].flatten().tolist()])
        request.ww_j.append(matrix)

    # 发送请求并接收响应
    response = stub.SolveOptimization(request)

    # 输出结果
    print("Optimal x:", response.x)
    print("Optimal y:", response.y)
    print(response.success)


if __name__ == '__main__':
    run()
