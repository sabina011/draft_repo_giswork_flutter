import 'package:flutter/material.dart';

import 'authentication_constants.dart';
import 'authentication_location.dart';

class AuthenticationUserState extends ChangeNotifier {
  var authState = AuthenticationState.Progress;

  void getUserLocationAuthenticationCredentials(
      double lat1, double lat2, double long1, double long2) {

    //check for authentication
    authState = LocationBasedAuthentication()
        .getLocationGeoPoints(lat1, lat2, long1, long2);
    print(authState);
    notifyListeners();
  }
}
