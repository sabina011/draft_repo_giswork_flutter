import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:myapp/application/upload_package/bloc/upload_package_bloc.dart';
import 'package:myapp/resources/strings/app_str.dart';
import 'package:myapp/utils/functions/function_circular_progress_show.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tuple/tuple.dart';

import '../../config/routes/routes_handler.dart';
import '../../model/hive_model/local_store_model.dart';
import '../../utils/functions/function_flutter_toast.dart';
import '../../utils/functions/special/geo_location_information.dart';

void convertUserDayValueAndUpload(
  BuildContext context,
  bool isCompletedPackage,
  List<LocalStoreInformation> userSingleDayList,
  UploadPackageBloc uploadPackageBloc,
) async {
  Random random = new Random(0);
  List<Map<String, dynamic>> userSingleDayListToMap = [];
  Map<String, dynamic> userDayMap;

  //place information variables
  Tuple2<String, String> placeInformation;
  String placeName;
  String mainPlaceName;

  GISCircularProgressDialog(context, 'Uploading Package please wait');
  if (userSingleDayList.length != 0 || userSingleDayList.isNotEmpty) {
    for (int i = 0; i < userSingleDayList.length; i++) {
      String storedPlaceName = userSingleDayList[i].locationName;
      double geoLatitude = userSingleDayList[i].geoLocation.points.latitude;
      double geoLongitude = userSingleDayList[i].geoLocation.points.longitude;

      //check if local stored null or not
      if (storedPlaceName == AppStr.nullValueGlobalConstant) {
        String locationName = await getLocationName(geoLatitude, geoLongitude);
        placeInformation = getLocationPlaceInformation(locationName);
      } else {
        placeInformation = getLocationPlaceInformation(storedPlaceName);
      }

      //append to the placeName & mainPlaceName
      mainPlaceName = placeInformation.item1;
      placeName = placeInformation.item2;

      List<String> converterToFile = [];
      var imageDataList = userSingleDayList[i].unitImagesFileList;
      for (var unit8ImageFile in imageDataList!) {
        var rand = random.nextInt(100);
        final file = await createFilePath(unit8ImageFile, rand);
        converterToFile.add(file);
      }

      userDayMap = {
        "day": userSingleDayList[i].day.toString(),
        "place_name": mainPlaceName,
        "location_name": placeName,
        "geo_location": "$geoLatitude,$geoLongitude",
        "image_post": converterToFile,
      };
      userSingleDayListToMap.add(userDayMap);
    }
    jumpToLoginScreen(context, true,
        isCompletedPackage: isCompletedPackage,
        mapUploadPackage: userSingleDayListToMap);
  } else {
    return GISFlutterToast(
        context, 'Please check location name and other data!');
  }
}

Future<String> createFilePath(Uint8List data, int rand) async {
  final tempDir = await getTemporaryDirectory();
  final file = File('${tempDir.path}/m${rand + 2}y${rand}_${rand * 2}file.jpg');
  await file.writeAsBytes(data);
  return file.path;
}

///calculates the total distances
double calculatedTotalDistanceTravelled(
    List<LocalStoreInformation> userDayList) {
  double totalDistanceTravelledInSingleSelectedDay = 0.0;
  try {
    for (int i = 0; i < userDayList.length - 1; i++) {
      if (userDayList.length > 1) {
        ///reflecting the distance travelled and adding to the next distance travelled
        /// [0] -> [1] =>  1
        /// [1] -> [2] => 1 + 2 == 3
        /// [2] -> [3] => 3+3   == 6
        totalDistanceTravelledInSingleSelectedDay += Geolocator.distanceBetween(
            userDayList[i].geoLocation.points.latitude,
            userDayList[i].geoLocation.points.longitude,
            userDayList[i + 1].geoLocation.points.latitude,
            userDayList[i + 1].geoLocation.points.longitude);
      }
    }
  } catch (ex) {
    print("Exception for distance calculation ${ex}");
  }
  return totalDistanceTravelledInSingleSelectedDay;
}
