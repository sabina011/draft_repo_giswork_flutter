import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';

import 'datastore/model/place_response.dart';

@injectable
class GetPlacesApiService {
  final DioClient dioClient;

  GetPlacesApiService(this.dioClient);

  Future<List<PlacesResponse>> getPlaces(String mainPlace) async {
    List<PlacesResponse> newPostItems = [];
    var url = '${base_url}places?place_name=$mainPlace';
    Map<String, String> headers = {
      "Content-Type": "application/json",
    };
    final result =
        await dioClient.dio.get(url, options: Options(headers: headers));
    for (var x in result.data) {
      final value = PlacesResponse.fromJson(x);
      print(value.toString());
      newPostItems.add(value);
    }
    return newPostItems;
  }
}
