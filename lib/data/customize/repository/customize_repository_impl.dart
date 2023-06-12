import 'dart:developer';

import 'package:injectable/injectable.dart';

import '../../../domain/customize/datastore/customize_datastore.dart';
import '../../../domain/customize/repository/customize_repository.dart';
import '../datastore/models/customize_response.dart';

@LazySingleton(as: GetCustomizeRepository)
class GetCustomizeRepositoryImpl extends GetCustomizeRepository {
  final GetCustomizeDataStore getCustomizeDataStore;

  GetCustomizeRepositoryImpl(this.getCustomizeDataStore);

  Future<CustomizeResponse> customizeToServer(
      Map<String, dynamic> mapUserInputs) async {
    try {
      final result =
          await getCustomizeDataStore.customizeToServer(mapUserInputs);
      return result;
    } catch (ex) {
      log("Error fetching session store data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
