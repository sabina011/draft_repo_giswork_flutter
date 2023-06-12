import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';

import '../sharedPreference/sharedpreference_helper.dart';
import 'datastore/models/place_information_response_items.dart';

@injectable
class GetPlaceInformationApiService {
  final DioClient dioClient;
  final SharedPreferenceHelper prefs;

  GetPlaceInformationApiService(this.prefs, this.dioClient);

  Future<List<PlaceInformationItemsResponse>> getPlaceInformation(
      String place_name) async {
    final response =
        await dioClient.dio.get('${base_url}itinerary-main-place?main_place=$place_name');

    if (response.statusCode == 200) {
      List<PlaceInformationItemsResponse> placeInformationItemList =[];
      for(var item in response.data){
        var result = PlaceInformationItemsResponse.fromJson(item);
        placeInformationItemList.add(result);
      }
      return placeInformationItemList;
    }
    return throw new UnimplementedError();
  }
}
