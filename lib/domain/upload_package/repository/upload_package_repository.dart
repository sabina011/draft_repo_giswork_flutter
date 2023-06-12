import 'package:myapp/data/upload_package/datastore/models/upload_package_response.dart';

abstract class GetUploadPackageRepository {
  Future<UploadPackageResponse> uploadPackage(
      bool isCompletePackage, List<Map<String, dynamic>> userSingleDayList);
}
