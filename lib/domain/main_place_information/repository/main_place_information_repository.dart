import '../../../data/main_place_information/datastore/models/main_place_information_response_items.dart';


abstract class GetMainPlaceInformationRepository{
  Future<List<MainPlaceInformationItemsResponse>> getMainPlaceInformation();
}