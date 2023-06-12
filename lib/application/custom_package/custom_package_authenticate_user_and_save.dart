import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:myapp/application/custom_package/custom_package_constants.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_item.dart';
import 'package:myapp/model/hive_model/local_store_model.dart' as local_store;
import 'package:myapp/screens/customize/customize_constants.dart';
import 'package:provider/provider.dart';

import '../../model/hive_model/local_store_model.dart';
import '../../utils/functions/function_circular_progress_show.dart';
import '../../utils/functions/function_current_date.dart';
import '../../utils/functions/function_flutter_toast.dart';
import '../../utils/functions/functions_alert_dialog.dart';
import '../../utils/services/local_storage/hive/hive_save_post.dart';
import '../../utils/services/native/media/media_file_selector.dart';
import '../authentication/authentication_constants.dart';
import '../authentication/authentication_state.dart';
import '../provider/location_service_provider.dart';

void validateUserInputs(
  BuildContext context,
  UserPostItem userPost,
  UploadType uploadType,
  LocalStoreInformation userDay,
) {
  var _fileDataProvider = Provider.of<FileDataProvider>(context, listen: false);
  var _locationServiceProvider =
      Provider.of<LocationServiceProvider>(context, listen: false);
  final auth_provider =
      Provider.of<AuthenticationUserState>(context, listen: false);

  var isImageHasLoaded = _fileDataProvider.check_image;
  var geo_data = _locationServiceProvider.locationGeoPoints;
  var imageLocalSelected = _fileDataProvider.imageList;
  var videoFileLocalSelected = _fileDataProvider.imageList;
  var geoPointListStyle = (geo_data.split(','));

  var user_posted_location_latitude =
      userPost.geoLocationsUserPost!.geoPointsUserPost!.latitude!;
  var user_posted_location_longitude =
      userPost.geoLocationsUserPost!.geoPointsUserPost!.longitude!;

  auth_provider.getUserLocationAuthenticationCredentials(
    user_posted_location_latitude,
    double.parse(geoPointListStyle[0]),
    user_posted_location_longitude,
    double.parse(geoPointListStyle[1]),
  );

  if (userDay.locationName.isEmpty) {
    return GISAlertDialog(
        context,
        CustomGisPackage.AlertDialogTitle,
        CustomGisPackage.AlertDialogBody,
        CustomGisPackage.AlertDialogConfirmStr);
  }
  if (!isImageHasLoaded) {
    return GISFlutterToast(context, CustomGisPackage.NoImageSelectionError);
  } else {
    var authenticated = auth_provider.authState;
    if (uploadType == UploadType.ServerUpLoad) {
      if (authenticated == AuthenticationState.Success) {
        Map<String, dynamic> mapUserData = Map<String, dynamic>();
        List<File> imagesList =
            imageLocalSelected!.map((e) => File(e.path)).toList();
        List<File> videoList =
            videoFileLocalSelected!.map((e) => File(e.path)).toList();

        mapUserData['transportation_medium'] = userDay.transportationMedium;
        mapUserData['hotels_and_resturants'] = userDay.hotelsAndRestaurants;
        mapUserData['geographical_info'] = userDay.geographicalInfo;
        mapUserData['seasonal_information'] = userDay.seasonalInformation;
        mapUserData['route_information'] = userDay.routeInformation;
        mapUserData['location_name'] = userDay.locationName;
        mapUserData['image_post'] = imagesList;
        mapUserData['video_post'] = videoList;
        mapUserData['geo_location'] = _locationServiceProvider.locationGeoPoints;

        //jump to login screen for upload.
        jumpToLoginScreen(context, false,mapUserData: mapUserData);
      } else {
        log(AuthenticationState.Failure.toString());
        return GISFlutterToast(
            context, CustomGisPackage.AuthenticationErrResponse);
      }
    } else {
      GISCircularProgressDialog(context, "Saving");
      List<Uint8List> imagesListFile = imageLocalSelected!
          .map((e) => File(e.path).readAsBytesSync())
          .toList();
      List<Uint8List> videosListFile = videoFileLocalSelected!
          .map((e) => File(e.path).readAsBytesSync())
          .toList();

      local_store.Points points = new local_store.Points(
        latitude: double.parse(geoPointListStyle[0]),
        longitude: double.parse(geoPointListStyle[1]),
      );

      local_store.GeoLocation geo_credential =
          new local_store.GeoLocation(srid: 4326, points: points);

      var user_day = new LocalStoreInformation();
      user_day.hotelsAndRestaurants = userDay.hotelsAndRestaurants;
      user_day.transportationMedium = userDay.transportationMedium;
      user_day.locationName = userDay.locationName;
      user_day.routeInformation = userDay.routeInformation;
      user_day.seasonalInformation = userDay.seasonalInformation;
      user_day.geographicalInfo = userDay.geographicalInfo;
      user_day.images = ['x.jpg'];
      user_day.videos = ['x.jpg'];
      user_day.unitImagesFileList = imagesListFile;
      user_day.unitVideosFileList = videosListFile;
      user_day.createdAt = currentDate();
      user_day.geoLocation = geo_credential;

      if (authenticated == AuthenticationState.Success) {
        log(AuthenticationState.Success.toString());
        storeLocalDataToHiveDB(context, user_day, userDayHiveBoxName);
      } else {
        log(AuthenticationState.Failure.toString());
        Navigator.pop(context);
        return GISFlutterToast(
            context, CustomGisPackage.AuthenticationErrResponse);
      }
    }
  }
}
