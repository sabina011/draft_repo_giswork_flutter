import 'package:injectable/injectable.dart';
import 'package:myapp/domain/package_information/datastore/package_information_datastore.dart';

import '../package_information_api_service.dart';
import 'models/package_information_response.dart';

@LazySingleton(as: GetPackageInformationDataStore)
class GetPackageInformationDataStoreImpl extends GetPackageInformationDataStore{
  final GetPackageInformationApiService getMainPlaceInformationApiService;
  GetPackageInformationDataStoreImpl(this.getMainPlaceInformationApiService);

  @override
  Future<PackageInformationResponse> getPackageInformation(String query) {
    return getMainPlaceInformationApiService.getPackageInformation(query);
  }
}
