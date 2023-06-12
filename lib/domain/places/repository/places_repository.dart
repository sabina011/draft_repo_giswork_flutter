import '../../../data/places/datastore/model/place_response.dart';

abstract class GetPlacesRepository {
  Future<List<PlacesResponse>> getPlaces(String mainPlace);
}
