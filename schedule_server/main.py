import grpc
from concurrent import futures
import opt_pb2
import opt_pb2_grpc
import numpy as np
import pulp

class OptimizationService(opt_pb2_grpc.OptimizationServiceServicer):
    def SolveOptimization(self, request, context):
        # 提取 w_i 和 ww_j
        w_i = []
        for matrix in request.w_i:
            matrix_data = np.array(matrix.data).reshape(matrix.rows, matrix.cols)
            w_i.append(matrix_data)
        
        ww_j = []
        for matrix in request.ww_j:
            matrix_data = np.array(matrix.data).reshape(matrix.rows, matrix.cols)
            ww_j.append(matrix_data)

        # 样例数据生成
        M, N = w_i[0].shape  # 使用 w_i 的形状
        I = len(w_i)
        J = len(ww_j)

        # 创建优化问题
        problem = pulp.LpProblem("Minimize_Sum", pulp.LpMinimize)

        # 定义变量
        x = pulp.LpVariable.dicts("x", ((i, j) for i in range(M) for j in range(N)), cat="Binary")
        y = pulp.LpVariable.dicts("y", (j for j in range(J)), cat="Binary")

        # 引入辅助变量 z[j] 用于线性化 y[j] * sum(ww_j[j] * x)
        z = pulp.LpVariable.dicts("z", (j for j in range(J)), lowBound=0, cat="Continuous")

        # 目标函数：sum(x * w_i) / I
        objective = pulp.lpSum(
            sum(w_i[k][i, j] * x[i, j] for k in range(I) for i in range(M) for j in range(N)) / I
        )
        problem += objective

        # 约束 1: z[j] = y[j] * sum(ww_j[j] * x)，并确保 sum(z) <= 0
        for j in range(J):
            ww_sum = pulp.lpSum(ww_j[j][i, k] * x[i, k] for i in range(M) for k in range(N))
            problem += z[j] <= ww_sum  # 辅助变量的上界
            problem += z[j] <= y[j] * 1e6  # 辅助变量的条件上界（线性化 y[j] 的影响）
            problem += z[j] >= ww_sum - (1 - y[j]) * 1e6  # 辅助变量的条件下界（线性化 y[j] 的影响）

        # 总约束：sum(z) <= 0
        problem += pulp.lpSum(z[j] for j in range(J)) <= 0

        # 约束 2: sum(x) = 常量 (假设为 K)
        K = 1
        problem += pulp.lpSum(x[i, j] for i in range(M) for j in range(N)) == K

        G = 1
        problem += pulp.lpSum(y[i] for i in range(M)) == G

        # 求解
        problem.solve()

        # 检查求解状态
        success = problem.status == pulp.LpStatusOptimal

        # 获取结果并返回
        x_result = np.array([[pulp.value(x[i, j]) for j in range(N)] for i in range(M)])
        y_result = np.array([pulp.value(y[j]) for j in range(J)])

        # 构造返回消息
        response = opt_pb2.OptimizationResponse()

        # 将 x 和 y 结果添加到返回消息中
        for i in range(M):
            for j in range(N):
                response.x.append(float(x_result[i, j]))

        for j in range(J):
            response.y.append(float(y_result[j]))

        # 返回求解是否成功
        response.success = success

        return response



def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    opt_pb2_grpc.add_OptimizationServiceServicer_to_server(OptimizationService(), server)
    server.add_insecure_port('[::]:50051')
    print("Server started at 0.0.0.0:50051")
    server.start()
    server.wait_for_termination()


if __name__ == '__main__':
    serve()
