import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:myapp/domain/session/repository/session_repository.dart';

import '../../../domain/session/datastore/session_datastore.dart';
import '../datastore/models/login_response.dart';

@LazySingleton(as: GetSessionRepository)
class GetSessionRepositoryImpl extends GetSessionRepository {
  final GetSessionDataStore getSessionDataStore;

  GetSessionRepositoryImpl(this.getSessionDataStore);

  Future<LoginResponse> userLogin(String username, String password) async {
    try {
      final result = await getSessionDataStore.userLogin(username, password);
      return result;
    } catch (ex) {
      log("Error fetching session store data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
