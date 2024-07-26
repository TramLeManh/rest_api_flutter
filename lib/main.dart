import 'package:dio/dio.dart';
import 'package:rest_api/service/service.dart';

void main(List<String> args) {
  final dio = Dio(); // Provide a dio instance
  dio.options.headers['Demo-Header'] =
      'demo header'; // config your dio headers globally
  final client = ApiService(dio);
  client.getSingleTask().then((tasks) {
      print(tasks);
  }).catchError((error) {
    print('Error: $error');
  });
}
