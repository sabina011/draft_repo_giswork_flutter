import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:myapp/application/provider/location_service_provider.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/model/hive_model/local_store_model.dart' as local_store;
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/resources/strings/app_str.dart';
import 'package:myapp/utils/functions/function_circular_progress_show.dart';
import 'package:myapp/utils/functions/function_current_date.dart';
import 'package:myapp/utils/services/native/media/media_file_selector.dart';
import 'package:provider/provider.dart';

import '../../model/hive_model/local_store_lay_traveler.dart';
import '../../utils/services/local_storage/hive/hive_save_post.dart';

void layTravellerInsertData(
    BuildContext context, Map<String, dynamic> detailsMap) {
  var _fileDataProvider = Provider.of<FileDataProvider>(context, listen: false);
  var _locationServiceProvider =
      Provider.of<LocationServiceProvider>(context, listen: false);

  var geo_data = _locationServiceProvider.locationGeoPoints;
  var imageLocalSelected = _fileDataProvider.imageList;
  var videoFileLocalSelected = _fileDataProvider.imageList;
  var geoPointListStyle = (geo_data.split(','));

  List<Uint8List> imagesListFile =
      imageLocalSelected!.map((e) => File(e.path).readAsBytesSync()).toList();
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
  user_day.hotelsAndRestaurants = detailsMap["hotelsAndRestaurants"];
  user_day.transportationMedium = detailsMap["transportationMedium"];
  user_day.locationName = detailsMap["locationName"];
  user_day.routeInformation = detailsMap["routeInformation"];
  user_day.seasonalInformation = detailsMap["seasonalInformation"];
  user_day.geographicalInfo = detailsMap["geographicalInfo"];
  user_day.images = ['x.jpg'];
  user_day.videos = ['x.jpg'];
  user_day.unitImagesFileList = imagesListFile;
  user_day.unitVideosFileList = videosListFile;
  user_day.createdAt = currentDate();
  user_day.geoLocation = geo_credential;

  GISCircularProgressDialog(context, "Saving");
  storeLocalDataToHiveDB(context, user_day, layTravellerHiveBoxName);
}

///map function to insert data
void insertLayUserData(BuildContext context) {
  var _fileDataProvider = Provider.of<FileDataProvider>(context, listen: false);
  var _locationServiceProvider =
      Provider.of<LocationServiceProvider>(context, listen: false);

  var geo_data = _locationServiceProvider.locationGeoPoints;
  var imageLocalSelected = _fileDataProvider.imageList;
  var videoFileLocalSelected = _fileDataProvider.imageList;
  var geoPointListStyle = (geo_data.split(','));

  List<Uint8List> imagesListFile =
      imageLocalSelected!.map((e) => File(e.path).readAsBytesSync()).toList();
  List<Uint8List> videosListFile = videoFileLocalSelected!
      .map((e) => File(e.path).readAsBytesSync())
      .toList();

  local_store.Points points = new local_store.Points(
    latitude: double.parse(geoPointListStyle[0]),
    longitude: double.parse(geoPointListStyle[1]),
  );

  local_store.GeoLocation geo_credential =
      new local_store.GeoLocation(srid: 4326, points: points);

  ///check if the location is null and assign a undefined value.
  String locationPlaceName = _locationServiceProvider.locationName;

  locationPlaceName.isEmpty
      ? locationPlaceName = AppStr.nullValueGlobalConstant
      : null;

  var user_day = new LocalStoreInformation();
  user_day.hotelsAndRestaurants = "null";
  user_day.transportationMedium = "null";
  user_day.locationName = locationPlaceName;
  // user_day.locationName = 'Bijuli bajar, Kathmandu';
  user_day.routeInformation = "null";
  user_day.seasonalInformation = "null";
  user_day.geographicalInfo = "null";
  user_day.images = ['x.jpg'];
  user_day.videos = ['x.jpg'];
  user_day.unitImagesFileList = imagesListFile;
  user_day.unitVideosFileList = videosListFile;
  user_day.createdAt = currentDate();
  user_day.geoLocation = geo_credential;

  GISCircularProgressDialog(context, "Saving");
  storeLocalDataToHiveDB(context, user_day, layTravellerHiveBoxName);
}

///function to insert the lay traveler package list
void insertLayTravelerPackageList(BuildContext context,
    LocalStoreLayTravelerInformation localStoreLayTravelerInformation) {
  storeLayTravelerPackageListToHiveDB(
      context, localStoreLayTravelerInformation);
}
