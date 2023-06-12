import 'dart:convert';
import 'dart:developer' as Developer;
import 'dart:io';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';
import 'package:path_provider/path_provider.dart';


uploadPackageToServer(context, List<LocalStoreInformation> userDaySingleDayList) async {
  var rng = Random();
  List<Map<String, dynamic>> listDataPackageItem = <Map<String, dynamic>>[];

  for (var element in userDaySingleDayList) {
    List<File> imageFiles = [];
    List<File> videoFiles = [];

    var geo_latitude = element.geoLocation.points.latitude;
    var geo_longitude = element.geoLocation.points.longitude;
    var geo_locations_points = "$geo_latitude,$geo_longitude";

    for (var e in element.unitImagesFileList!) {
      final tempDir = await getTemporaryDirectory();
      File file = await File(
              '${tempDir.path}/${rng.nextInt(userDaySingleDayList.length)}image${e.length}.png')
          .create();
      file.writeAsBytesSync(e);
      imageFiles.add(file);
    }

    for (var e in element.unitVideosFileList!) {
      final tempDir = await getTemporaryDirectory();
      File file = await File(
              '${tempDir.path}/${rng.nextInt(userDaySingleDayList.length)}image${e.length}.png')
          .create();
      file.writeAsBytesSync(e);
      videoFiles.add(file);
    }

    List<String> imageFileAsString = imageFiles.map((e) => e.path).toList();
    List<String> videoFileAsString = videoFiles.map((e) => e.path).toList();

    Map<String, dynamic> listOfData = {
      'hotels_and_resturants': element.hotelsAndRestaurants,
      'geographical_info': element.geographicalInfo,
      "transportation_medium": element.transportationMedium,
      "route_information": element.routeInformation,
      "seasonal_information": element.seasonalInformation,
      "location_name": element.locationName,
      "geo_location": geo_locations_points,
      "image_post": imageFileAsString,
      "video_post": videoFileAsString,
    };

    listDataPackageItem.add(listOfData);
  }

  var endPoints = "${base_url}package-post";
  try {
    final response = await http.post(
      Uri.parse(endPoints),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        "Authorization": "Bearer $token",
      },
      body: json.encode(listDataPackageItem),
    );

    if (response.statusCode == 200) {
      Developer.log("Data uploaded successfully");
      popScreen(context);
      return GISFlutterToast(context, 'Package upload successful');
    } else {
      Developer.log("Status code is ${response.statusCode.toString()}");
      return GISFlutterToast(context, 'Failed to upload package! ');
    }
  } catch (ex) {
    popScreen(context);
    Developer.log("Package upload error: ${ex.toString()}");
    return GISFlutterToast(context, 'Failed to upload package! ');
  }
}
