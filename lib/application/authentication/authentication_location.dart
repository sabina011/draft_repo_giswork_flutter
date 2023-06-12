import 'dart:developer' as Developer;
import 'dart:math';

import 'package:vector_math/vector_math.dart';

import 'authentication_constants.dart';

class LocationBasedAuthentication {


  AuthenticationState getLocationGeoPoints(
      double lat1, double lat2, double long1, double long2) {
    ///Authentication state holder
    var state;

    try {
      ///convert degrees in radians
      lat1 = radians(lat1);
      lat2 = radians(lat2);
      long1 = radians(long1);
      long2 = radians(long2);

      /// Haversine formula
      double dLongitude = long2 - long1;
      double dLatitude = lat2 - lat1;
      double a = pow(sin(dLatitude / 2), 2) +
          cos(lat1) * cos(lat2) * pow(sin(dLongitude / 2), 2);

      double c = 2 * asin(sqrt(a));

      ///coordinates distance by Haversine formula
      double distance_calculated = c * AuthenticationGisConstant.RadiusOfEarth;
      Developer.log(AuthenticationGisConstant.DistanceCalcPrint + distance_calculated.toString());

      ///check for valid
      if (distance_calculated > AuthenticationGisConstant.ConciseAuthenticationRadius) {
        state = AuthenticationState.Failure;
      } else {
        state = AuthenticationState.Success;
      }
    } catch (ex) {
      state = AuthenticationState.Failure;
      Developer.log(AuthenticationGisConstant.AuthenticationErrorMsg +ex.toString());
    }

    return state;
  }
}
