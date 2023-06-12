import 'package:injectable/injectable.dart';
import 'package:myapp/domain/itinerary_show/datastore/itinerary_show_datastore.dart';

import '../itinerary_response_api_service.dart';
import 'models/itinerary_response_items.dart';

@LazySingleton(as: GetItineraryShowDataStore)
class GetMainPlaceInformationDataStoreImpl extends GetItineraryShowDataStore {
  final GetItineraryShowApiService getItineraryShowApiService;

  GetMainPlaceInformationDataStoreImpl(this.getItineraryShowApiService);

  @override
  Future<List<ItineraryShowItemsResponse>> getItineraryShow(String packageName) {
    return getItineraryShowApiService.getItineraryShow(packageName);
  }
}
