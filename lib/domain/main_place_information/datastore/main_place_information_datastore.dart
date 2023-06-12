import '../../../data/main_place_information/datastore/models/main_place_information_response_items.dart';

abstract class GetMainPlaceInformationDataStore{
  Future<List<MainPlaceInformationItemsResponse>> getMainPlaceInformation();
}