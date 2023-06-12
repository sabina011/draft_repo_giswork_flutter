import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';
import 'package:myapp/data/upload_package/datastore/models/upload_package_response.dart';

import '../sharedPreference/sharedpreference_helper.dart';
import 'datastore/models/upload_package_request.dart';

@injectable
class UploadPackageApiService {
  final DioClient dioClient;
  final SharedPreferenceHelper prefs;

  UploadPackageApiService(this.prefs, this.dioClient);

  Future<UploadPackageResponse> uploadPackage(
      UploadPackageRequest request) async {
    String? userToken = prefs.getUserAccessToken();
    String? completePackageUploadName = prefs.getItineraryPackageName();
    String? travelingPackageUploadName = prefs.getItineraryPackageForItineraryUpload();

    Map<String, String> headers = {
      'Content-Type': 'multipart/form-data',
      "Authorization": "Bearer $userToken",
    };

    final isCompletePackage = request.isCompletePackage;
    final finalDataList = request.userSingleDayList;

    var imagesList = [];
    var multiPartImageFiles = [];
    var multiPartImagesWithGeoKey = [];

    for (int i = 0; i < finalDataList.length; i++) {
      imagesList.add(
        {
          finalDataList[i]["geo_location"]:
              finalDataList[i].remove("image_post"),
        },
      );
    }

    for (int i = 0; i < imagesList.length; i++) {
      var temp_list = [];
      String image_key_str_raw = imagesList[i].keys.toString();
      String image_key = image_key_str_raw.replaceAll(RegExp(r"^.|.$"), "");
      int key_data_length = imagesList[i][image_key].length;

      for (int j = 0; j < key_data_length; j++) {
        var path = imagesList[i][image_key][j];
        temp_list.add(await MultipartFile.fromFile(
          path,
          filename: path.split('/').last,
        ));
      }
      multiPartImageFiles.add(temp_list);
      multiPartImagesWithGeoKey.add({
        image_key: multiPartImageFiles[i],
      });
    }

    late FormData formData;
    if (isCompletePackage) {
      print("Completed package upload");
      if (completePackageUploadName!.isNotEmpty) {
        /// package item list data
        formData = FormData.fromMap({
          "package_name": completePackageUploadName,
          "data": jsonEncode(finalDataList),
          "image_post": multiPartImagesWithGeoKey,
        });
      }
    } else {
      ///local store list items upload
      ///formData to hold the list data

      print("Not completed package ");
      formData = FormData.fromMap({
        "package_name": travelingPackageUploadName,
        "data": jsonEncode(finalDataList),
        "image_post": multiPartImagesWithGeoKey,
      });

      // //post the data to the remote server
      // final response = await dioClient.dio.post('${base_url}itenary',
      //     data: formData, options: Options(headers: headers));
    }

    try{

      final response = await dioClient.dio.post(
          '${base_url}packages',
          data: formData,
          options: Options(headers: headers));

      if (response.statusCode == 200) {
        final result = UploadPackageResponse.fromJson(response.data);
        return result;
      }
    }catch(ex){
      print("Error uploading!:$ex");
      return throw new UnimplementedError();
    }
    return throw new UnimplementedError();
  }
}
