import 'package:geolocator/geolocator.dart';

import '../../../../resources/strings/location_str.dart';

class LocationPermissionChecker {
  Future<dynamic> displayCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error(LocationGisPermissions.LocationServiceDisabled);
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error(
            LocationGisPermissions.LocationServicePermissionDenied);
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          LocationGisPermissions.LocationServicePermissionPermanentDenied);
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return position;
  }
}
