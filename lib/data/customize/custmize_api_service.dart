import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/customize/datastore/models/customize_request.dart';
import 'package:myapp/data/network/dio_client.dart';

import '../sharedPreference/sharedpreference_helper.dart';
import 'datastore/models/customize_response.dart';

@injectable
class CustomizeApiService {
  final DioClient dioClient;
  final SharedPreferenceHelper prefs;

  CustomizeApiService(this.dioClient, this.prefs);

  Future<CustomizeResponse> customizeToServer(CustomizeRequest request) async {
    String? userToken = prefs.getUserAccessToken();
    Map<String, String> headers = {
      "Content-Type": "multipart/form-data",
      "Authorization": "Bearer $userToken",
    };

    Map<String, dynamic> mapCustomizeData = Map.from(request.customUserInputs);

    // store map[images/videos] to new variables
    List<File> images = mapCustomizeData['image_post'];
    List<File> videos = mapCustomizeData['video_post'];

    //removing map[images/videos] from map
    mapCustomizeData.removeWhere(
        (key, value) => key == 'image_post' || key == 'video_post');

    FormData formCustomizeData = FormData.fromMap(mapCustomizeData);
    for (var imageFile in images) {
      formCustomizeData.files.addAll([
        MapEntry(
            "image_post",
            await MultipartFile.fromFile(imageFile.path,
                filename: imageFile.path.toString().split("/").last)),
      ]);
    }

    for (var videoFile in videos) {
      formCustomizeData.files.addAll([
        MapEntry(
            "video_post",
            await MultipartFile.fromFile(videoFile.path,
                filename: videoFile.path.toString().split("/").last)),
      ]);
    }

    final response = await dioClient.dio.post('${base_url}posts',
        data: formCustomizeData, options: Options(headers: headers));

    final result = CustomizeResponse.fromJson(response.data);
    return result;
  }
}
