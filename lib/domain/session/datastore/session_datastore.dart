import '../../../data/session/datastore/models/login_response.dart';

abstract class GetSessionDataStore {
  Future<LoginResponse> userLogin(String username, String password);
}
