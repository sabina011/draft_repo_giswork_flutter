import 'package:myapp/data/itinerary_show/datastore/models/itinerary_response_items.dart';

abstract class GetItineraryShowRepository{
  Future<List<ItineraryShowItemsResponse>> getItineraryShow(String packageName);
}