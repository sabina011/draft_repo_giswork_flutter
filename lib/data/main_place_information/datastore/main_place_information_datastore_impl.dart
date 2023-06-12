import 'package:injectable/injectable.dart';

import '../../../domain/main_place_information/datastore/main_place_information_datastore.dart';
import '../main_place_information_api_service.dart';
import 'models/main_place_information_response_items.dart';

@LazySingleton(as: GetMainPlaceInformationDataStore)
class GetMainPlaceInformationDataStoreImpl extends GetMainPlaceInformationDataStore {
  final GetMainPlaceInformationApiService getMainPlaceInformationApiService;

  GetMainPlaceInformationDataStoreImpl(this.getMainPlaceInformationApiService);


  @override
  Future<List<MainPlaceInformationItemsResponse>> getMainPlaceInformation() {
    return getMainPlaceInformationApiService.getMainPlaceInformation();
  }
}
