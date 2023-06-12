import '../../../data/place_information/datastore/models/place_information_response_items.dart';


abstract class GetPlaceInformationRepository{
  Future<List<PlaceInformationItemsResponse>> getPlaceInformation(String place_name);
}