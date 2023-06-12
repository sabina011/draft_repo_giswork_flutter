import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';
import 'package:myapp/data/session/datastore/models/login_request.dart';

import 'datastore/models/login_response.dart';

@injectable
class SessionLoginApiService {
  final DioClient dioClient;

  SessionLoginApiService(this.dioClient);

  Future<LoginResponse> userLogin(LoginRequest request) async {
    final loginRequestToMap = request.toJson();
    FormData formLoginData = FormData.fromMap(loginRequestToMap);

    final response = await dioClient.dio.post(
      '${base_url}auth/token/',
      data: formLoginData,
    );

    final result = LoginResponse.fromJson(response.data);
    return result;
  }
}
