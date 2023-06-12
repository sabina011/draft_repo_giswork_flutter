import '../../../data/itinerary_show/datastore/models/itinerary_response_items.dart';

abstract class GetItineraryShowDataStore{
  Future<List<ItineraryShowItemsResponse>> getItineraryShow(String packageName);
}