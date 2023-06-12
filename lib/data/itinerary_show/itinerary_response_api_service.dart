import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';

import '../sharedPreference/sharedpreference_helper.dart';
import 'datastore/models/itinerary_response_items.dart';

@injectable
class GetItineraryShowApiService {
  final DioClient dioClient;
  final SharedPreferenceHelper prefs;

  GetItineraryShowApiService(this.prefs, this.dioClient);

  Future<List<ItineraryShowItemsResponse>> getItineraryShow(packageName) async {
    final response = await dioClient.dio.get('${base_url}itinerary-unique-package?package_name=$packageName');

    if (response.statusCode == 200) {
      List<ItineraryShowItemsResponse> itineraryShowItemList =[];
      for(var item in response.data){
        var result = ItineraryShowItemsResponse.fromJson(item);
        itineraryShowItemList.add(result);
      }
      return itineraryShowItemList;
    }
    return throw new UnimplementedError();
  }
}
