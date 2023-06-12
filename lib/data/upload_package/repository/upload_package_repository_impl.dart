import 'package:injectable/injectable.dart';

import '../../../domain/upload_package/datastore/upload_package_datastore.dart';
import '../../../domain/upload_package/repository/upload_package_repository.dart';
import '../datastore/models/upload_package_response.dart';

@LazySingleton(as: GetUploadPackageRepository)
class GetUploadPackageRepositoryImpl extends GetUploadPackageRepository {
  final GetUploadPackageDataStore getUploadPackageDataStore;

  GetUploadPackageRepositoryImpl(this.getUploadPackageDataStore);

  Future<UploadPackageResponse> uploadPackage(bool isCompletePackage,
      List<Map<String, dynamic>> userSingleDayList) async {
    try {
      final result = await getUploadPackageDataStore.uploadPackage(
          isCompletePackage, userSingleDayList);
      return result;
    } catch (ex) {
      print("Error fetching upload package data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
