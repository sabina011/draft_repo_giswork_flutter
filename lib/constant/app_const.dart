import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
// *********************** App color *******************************************

const Color primaryAppColor = Colors.green;
final screenTextColor = Color(0xFFeeeee4);
final cardColor = Color(0xFF022a5d);

//************************** App base url **************************************

const String base_url = "https://cd70-113-199-225-144.ngrok-free.app/";

const String image_base_url = "$base_url/media/";
//**************************** Token  ******************************************
String? token;

//*************************** Hive box names ***********************************
final String userDayHiveBoxName = "userDay";
final String layTravellerHiveBoxName = "lay_traveller";
final String layTravelerItineraryListHiveBoxName =
    "lay_traveler_itinerary_list";

//*************************** Traveller MAX day ********************************
int traveller_max_day = 0;
int user_day_max_day = 0;

//srid number geolocationx
const int GEO_SRID = 4326;

//***************************** polyline option for selected day ***************
List<LatLng> latLongTester = [];

//*********************** const class to hold shared variables *****************
class AppSharedConst {
  static double MAP_ZOOM_IN_LEVEL = 13.0;
}
