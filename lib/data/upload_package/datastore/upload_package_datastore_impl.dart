import 'package:injectable/injectable.dart';
import 'package:myapp/data/upload_package/datastore/models/upload_package_response.dart';

import '../../../domain/upload_package/datastore/upload_package_datastore.dart';
import '../upload_package_api_service.dart';
import 'models/upload_package_request.dart';

@LazySingleton(as: GetUploadPackageDataStore)
class GetUploadPackageDataStoreImpl extends GetUploadPackageDataStore {
  final UploadPackageApiService uploadPackageApiService;

  GetUploadPackageDataStoreImpl(this.uploadPackageApiService);

  @override
  Future<UploadPackageResponse> uploadPackage(
      bool isCompletePackage,
      List<Map<String, dynamic>> userSingleDayList) {
    return uploadPackageApiService.uploadPackage(UploadPackageRequest(
      isCompletePackage: isCompletePackage,
      userSingleDayList: userSingleDayList,
    ));
  }
}
