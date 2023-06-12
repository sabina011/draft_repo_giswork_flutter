import 'package:geolocator/geolocator.dart';

import '../../data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import '../../data/place_information/datastore/models/place_information_geo_points_response.dart';


double calculatedTotalDistanceCoveredWithPlaceInformation(
    List<ItineraryPlaceInformationResponse> itineraryPlaceInfoResponse) {
  double totalDistanceTravelledInSingleSelectedDay = 0.0;
  try {
    for (int i = 0; i < itineraryPlaceInfoResponse.length - 1; i++) {
      if (itineraryPlaceInfoResponse.length > 1) {
        ///reflecting the distance travelled and adding to the next distance
        /// travelled
        /// [0] -> [1] =>  1
        /// [1] -> [2] => 1 + 2 == 3
        /// [2] -> [3] => 3+3   == 6

        //current GeoPoints instance
        GeoPointsResponse currGeoPointsResponse =
            itineraryPlaceInfoResponse[i].geoLocationResponse.geoPointsResponse;

        //current point lat / longs
        double currPointLatitude = currGeoPointsResponse.latitude;
        double currPointLongitude = currGeoPointsResponse.longitude;

        //next GeoPoints instance
        GeoPointsResponse nextGeoPointsResponse =
            itineraryPlaceInfoResponse[i + 1]
                .geoLocationResponse
                .geoPointsResponse;

        //next point lat / longs
        double nextPointLatitude = nextGeoPointsResponse.latitude;
        double nextPointLongitude = nextGeoPointsResponse.longitude;

        totalDistanceTravelledInSingleSelectedDay += Geolocator.distanceBetween(
            currPointLatitude,
            currPointLongitude,
            nextPointLatitude,
            nextPointLongitude);
      }
    }
  } catch (ex) {
    print("Exception for distance calculation ${ex}");
  }
  return totalDistanceTravelledInSingleSelectedDay;
}
