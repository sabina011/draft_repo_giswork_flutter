import 'package:injectable/injectable.dart';
import 'package:myapp/domain/itinerary_show/datastore/itinerary_show_datastore.dart';
import 'package:myapp/domain/itinerary_show/repository/itinerary_show_repository.dart';

import '../datastore/models/itinerary_response_items.dart';


@LazySingleton(as: GetItineraryShowRepository)
class GetMainPlaceInformationRepositoryImpl extends GetItineraryShowRepository {
  final GetItineraryShowDataStore getItineraryShowDataStore;
  GetMainPlaceInformationRepositoryImpl(this.getItineraryShowDataStore);

  @override
  Future<List<ItineraryShowItemsResponse>> getItineraryShow(String packageName) async {
    try {
      final result = await getItineraryShowDataStore.getItineraryShow(packageName);
      return result;
    } catch (ex) {
      print("Error place information data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
