import 'package:injectable/injectable.dart';
import 'package:myapp/data/places/places_api_service.dart';
import 'package:myapp/domain/places/datastore/places_datastore.dart';

import 'model/place_response.dart';

@LazySingleton(as: GetPlacesDataStore)
class GetPlacesDataStoreImpl extends GetPlacesDataStore {
  final GetPlacesApiService apiService;

  GetPlacesDataStoreImpl(this.apiService);

  @override
  Future<List<PlacesResponse>> getPlaces(String mainPlace) {
    return apiService.getPlaces(mainPlace);
  }
}
