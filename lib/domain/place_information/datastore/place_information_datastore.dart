import '../../../data/place_information/datastore/models/place_information_response_items.dart';

abstract class GetPlaceInformationDataStore{
  Future<List<PlaceInformationItemsResponse>> getPlaceInformation(String place_name);
}