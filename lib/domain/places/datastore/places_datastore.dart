import '../../../data/places/datastore/model/place_response.dart';

abstract class GetPlacesDataStore {
  Future<List<PlacesResponse>> getPlaces(String mainPlace);
}
