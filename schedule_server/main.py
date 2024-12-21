import grpc
from concurrent import futures
import numpy as np
import pulp
import opt_pb2
import opt_pb2_grpc

class ScheduleOptimizationService(opt_pb2_grpc.ScheduleOptimizationServicer):

    def schedule_opt(self, request, context):

        M = request.day_num
        N = 5
        I = request.student_num
        J = request.classroom_num

        classroom_num = request.schedule_classroom_num
        class_num = request.schedule_class_num
        student_w = np.array(request.student_w).reshape(I, M, N)
        classroom_w = np.array(request.classroom_w).reshape(J, M, N)

        w_i = [student_w[_] for _ in range(I)]

        ww_j = [classroom_w[_]  for _ in range(J)]

        pref_day = np.array(request.day_w)
        pref_5 = np.array(request.day_5)
        pref_day = pref_day.reshape(M, 1)
        pref_5 = pref_5.reshape(1, N)
        pref_matrix = np.dot(pref_day, pref_5)

        problem = pulp.LpProblem("Minimize_Sum", pulp.LpMinimize)

        x = pulp.LpVariable.dicts("x", ((i, j) for i in range(M) for j in range(N)), cat="Binary")
        y = pulp.LpVariable.dicts("y", (j for j in range(J)), cat="Binary")

        z = pulp.LpVariable.dicts("z", (j for j in range(J)), lowBound=0, cat="Continuous")

        objective_pref = (
            pulp.lpSum(
                pref_matrix[i, j] * x[i, j] for i in range(M) for j in range(N)
            ) / (M * N)
        )

        objective_w_i = (
            pulp.lpSum(
                w_i[k][i, j] * x[i, j] for k in range(I) for i in range(M) for j in range(N)
            ) / I
        )

        objective = objective_pref + objective_w_i
        problem += objective

        for j in range(J):
            ww_sum = pulp.lpSum(ww_j[j][i, k] * x[i, k] for i in range(M) for k in range(N))
            problem += z[j] <= ww_sum
            problem += z[j] <= y[j] * 1e6
            problem += z[j] >= ww_sum - (1 - y[j]) * 1e6

        problem += pulp.lpSum(z[j] for j in range(J)) <= 0

        problem += pulp.lpSum(x[i, j] for i in range(M) for j in range(N)) == class_num

        problem += pulp.lpSum(y[j] for j in range(J)) == classroom_num

        problem.solve()

        x_result = np.array([[pulp.value(x[i, j]) for j in range(N)] for i in range(M)])
        y_result = np.array([pulp.value(y[j]) for j in range(J)])

        objective_pref_value = (x_result * pref_matrix).sum() / M / N

        objective_w_i_value = (x_result * w_i).sum() / I

        # 准备返回结果
        x_result = np.array([[pulp.value(x[i, j]) for j in range(N)] for i in range(M)])
        y_result = np.array([pulp.value(y[j]) for j in range(J)])

        return opt_pb2.OptimizationResponse(
            obj_value=pulp.value(problem.objective),
            obj_pref=objective_pref_value,
            obj_w=objective_w_i_value,
            x=x_result.flatten().tolist(),
            y=y_result,
            success=problem.status == pulp.LpStatusOptimal
        )


def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    opt_pb2_grpc.add_ScheduleOptimizationServicer_to_server(ScheduleOptimizationService(), server)
    server.add_insecure_port("[::]:50051")
    print("Server is running on port 50051...")
    server.start()
    server.wait_for_termination()

if __name__ == "__main__":
    serve()
