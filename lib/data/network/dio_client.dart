import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    _dio.interceptors.add(LogInterceptor());
  }

  Dio get dio => _dio;
}
