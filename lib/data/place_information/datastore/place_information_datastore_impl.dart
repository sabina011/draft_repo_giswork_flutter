import 'package:injectable/injectable.dart';

import '../../../domain/place_information/datastore/place_information_datastore.dart';
import '../place_information_api_service.dart';
import 'models/place_information_response_items.dart';

@LazySingleton(as: GetPlaceInformationDataStore)
class GetUploadPackageDataStoreImpl extends GetPlaceInformationDataStore {
  final GetPlaceInformationApiService getPlaceInformationApiService;

  GetUploadPackageDataStoreImpl(this.getPlaceInformationApiService);


  @override
  Future<List<PlaceInformationItemsResponse>> getPlaceInformation(String place_name) {
    return getPlaceInformationApiService.getPlaceInformation(place_name);
  }
}
