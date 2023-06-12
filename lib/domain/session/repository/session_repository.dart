import '../../../data/session/datastore/models/login_response.dart';

abstract class GetSessionRepository {
  Future<LoginResponse> userLogin(String username, String password);
}
