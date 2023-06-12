import 'package:injectable/injectable.dart';
import 'package:myapp/data/session/datastore/models/login_request.dart';
import 'package:myapp/data/session/session_api_service.dart';
import 'package:myapp/domain/session/datastore/session_datastore.dart';

import 'models/login_response.dart';

@LazySingleton(as: GetSessionDataStore)
class GetSessionDataStoreImpl extends GetSessionDataStore {
  final SessionLoginApiService sessionLoginApiService;

  GetSessionDataStoreImpl(this.sessionLoginApiService);

  @override
  Future<LoginResponse> userLogin(String username, String password) {
    return sessionLoginApiService.userLogin(
      LoginRequest(
        username: username,
        password: password,
      ),
    );
  }
}
