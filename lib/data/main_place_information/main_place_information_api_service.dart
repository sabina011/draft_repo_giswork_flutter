import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';

import '../sharedPreference/sharedpreference_helper.dart';
import 'datastore/models/main_place_information_response_items.dart';

@injectable
class GetMainPlaceInformationApiService {
  final DioClient dioClient;
  final SharedPreferenceHelper prefs;

  GetMainPlaceInformationApiService(this.prefs, this.dioClient);

  Future<List<MainPlaceInformationItemsResponse>> getMainPlaceInformation() async {
    final response =
        await dioClient.dio.get('${base_url}place-list');

    if (response.statusCode == 200) {
      List<MainPlaceInformationItemsResponse> mainPlaceInformationItemList =[];
      for(var item in response.data){
        var result = MainPlaceInformationItemsResponse.fromJson(item);
        mainPlaceInformationItemList.add(result);
      }
      return mainPlaceInformationItemList;
    }
    return throw new UnimplementedError();
  }
}
