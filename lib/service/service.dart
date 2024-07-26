
import 'package:dio/dio.dart';
import 'package:rest_api/models/task.dart';
import 'package:retrofit/retrofit.dart';

part 'service.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;
  @GET('/tasks')
  Future<List<Task>> getTasks();
  @GET('/tasks/65')
  Future<Map<String, dynamic>> getSingleTask();
}
