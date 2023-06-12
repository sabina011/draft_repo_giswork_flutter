import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../utils/services/native/location_permission/location_permission.dart';
class LocationServiceProvider extends ChangeNotifier {
  String locationName = '';
  Position? location;
  var locationGeoPoints;

  // finds user location longitude and latitude
  Future<void> getUserLocationInfo() async {
    try {
      final LocationPermissionChecker permissionChecker = LocationPermissionChecker();
      final Position currentPosition = await permissionChecker.displayCurrentLocation();
      await getUserLocationAreaInformation(currentPosition);
      location = currentPosition;
      locationGeoPoints = '${location!.latitude},${location!.longitude}';
      notifyListeners();
    } catch (e) {
      log("Error getting user location: $e");
    }
  }

  // gets user location information
  Future<void> getUserLocationAreaInformation(Position currentPosition) async {
    try {
      final List<Placemark> placeMarks = await placemarkFromCoordinates(
        currentPosition.latitude,
        currentPosition.longitude,
        localeIdentifier: "en",
      );
      final Placemark place = placeMarks.first;
      locationName = "${place.subLocality!}, ${place.locality!}";
      notifyListeners();
    } catch (e) {
      log("Error getting user location area information: $e");
    }
  }
}
