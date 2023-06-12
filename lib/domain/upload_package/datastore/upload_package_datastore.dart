import 'package:myapp/data/upload_package/datastore/models/upload_package_response.dart';

abstract class GetUploadPackageDataStore {
  Future<UploadPackageResponse> uploadPackage(
      bool isCompletedPackage, List<Map<String, dynamic>> userSingleDayList);
}
