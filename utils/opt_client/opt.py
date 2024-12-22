import grpc
import numpy as np
import utils.opt_client.opt_pb2 as opt_pb2
import utils.opt_client.opt_pb2_grpc as opt_pb2_grpc

def run_opt_client(server_address, day_num, student_num, classroom_num, schedule_classroom_num, schedule_class_num, student_w=None, classroom_w=None, day_w=None, day_5=None):
    channel = grpc.insecure_channel(server_address)
    stub = opt_pb2_grpc.ScheduleOptimizationStub(channel)

    if student_w is None:
        student_w = np.zeros((student_num, day_num, 5)).astype(int).flatten().tolist()
    if classroom_w is None:
        classroom_w = np.zeros((classroom_num, day_num, 5)).astype(int).flatten().tolist()
    if day_w is None:
        day_w = day_w
    if day_5 is None:
        day_5 = day_5

    request = opt_pb2.OptimizationRequest(
        day_num=day_num,
        student_num=student_num,
        classroom_num=classroom_num,
        schedule_classroom_num=schedule_classroom_num,
        schedule_class_num=schedule_class_num,
        student_w=student_w,
        classroom_w=classroom_w,
        day_w=day_w,
        day_5=day_5
    )

    try:
        response = stub.schedule_opt(request)

        result = {
            "value": response.obj_value,
            "pref": response.obj_pref,
            "w": response.obj_w,
            "X": np.array(response.x).reshape(-1, 5).tolist(),
            "Y": np.array(response.y).tolist(),
            "state": response.success
        }

    except grpc.RpcError as e:
        result = {
            "Error": f"RPC Error: {e.code()} - {e.details()}"
        }

    return result