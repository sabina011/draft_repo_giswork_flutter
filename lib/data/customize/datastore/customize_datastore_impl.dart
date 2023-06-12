import 'package:injectable/injectable.dart';
import 'package:myapp/data/customize/custmize_api_service.dart';
import 'package:myapp/domain/customize/datastore/customize_datastore.dart';

import 'models/customize_request.dart';
import 'models/customize_response.dart';

@LazySingleton(as: GetCustomizeDataStore)
class GetCustomizeDataStoreImpl extends GetCustomizeDataStore {
  final CustomizeApiService customizeApiService;

  GetCustomizeDataStoreImpl(this.customizeApiService);

  @override
  Future<CustomizeResponse> customizeToServer(
      Map<String, dynamic> customUserInputs) {
    return customizeApiService.customizeToServer(
      CustomizeRequest(customUserInputs: customUserInputs),
    );
  }
}
