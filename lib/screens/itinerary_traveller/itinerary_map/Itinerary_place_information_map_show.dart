import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';

import '../../../data/itinerary_show/datastore/models/itinerary_response_items.dart';
import '../../../data/place_information/datastore/models/place_information_geo_location_response.dart';
import 'show_day_items_on_map.dart';

class ItineraryPlaceInformationMapShow extends StatefulWidget {
  final List<ItineraryShowItemsResponse> itineraryShowItemResponse;

  const ItineraryPlaceInformationMapShow(
      {Key? key, required this.itineraryShowItemResponse})
      : super(key: key);

  @override
  State<ItineraryPlaceInformationMapShow> createState() =>
      _ItineraryPlaceInformationMapShowState();
}

class _ItineraryPlaceInformationMapShowState
    extends State<ItineraryPlaceInformationMapShow> {
  List<Polygon> polygons = [];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    geoLocationResponse(polygons, widget.itineraryShowItemResponse);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color: Colors.red,
          child: Stack(
            children: <Widget>[
              FlutterMap(
                //mapController: controller,
                options: MapOptions(
                  center: LatLng(27.622098, 85.109003),
                  bounds: LatLngBounds(
                    LatLng(29.818604, 80.843462),
                    LatLng(26.722920, 88.099280),
                  ),
                ),

                layers: [
                  new TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                  ),
                  new PolygonLayerOptions(
                    polygons: polygons,
                  ),
                ],
              ),
              Positioned(
                  left: 20.0,
                  top: 20.0,
                  child: Text(
                    'Itinerary -[Itinerary Name]',
                    style: mainPlaceTextStyle(),
                  )),
              Positioned(
                left: 20.0,
                top: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ShowDayItemsOnMapScreen(
                          itineraryShowItemsResponse:
                              widget.itineraryShowItemResponse,
                        ),
                      ),
                    );
                  },
                  child: Text('Jump to Day Data'),
                ),
              ),
            ],
          ),
          // ...
        ),
      ),
    );
  }
}

/// functions to filter the itinerary package and get the geo response and
/// separate day 1,day2, day3 in polygon.
void geoLocationResponse(List<Polygon> polygons,
    List<ItineraryShowItemsResponse> itineraryShowItemResponse) {
  ///add the number of days from the itinerary
  List<int> numberOfDays = itineraryShowItemResponse
      .map(
          (e) => e.itineraryPlaceInformationResponse.map((e) => e.day).toList())
      .expand((i) => i)
      .toList();

  ///remove duplication of days using SET
  Set days = Set.from(numberOfDays);

  ///iterate over the numbers of days in itinerary
  for (var singleDay in days) {
    ///filter the items associated with the particular day
    var filteredList = itineraryShowItemResponse
        .where((item) => item.itineraryPlaceInformationResponse
            .any((place) => place.day == singleDay))
        .toList();

    ///get all the geolocation response from the particular day
    List<GeoLocationResponse> geoLocationResponse = filteredList
        .map((e) => e.itineraryPlaceInformationResponse
            .map((e) => e.geoLocationResponse)
            .toList())
        .expand((i) => i)
        .toList();

    ///geo location response add to list
    List<LatLng> coordinates = [];
    for (int i = 0; i < geoLocationResponse.length; i++) {
      double latitude = geoLocationResponse[i].geoPointsResponse.latitude;
      double longitude = geoLocationResponse[i].geoPointsResponse.longitude;
      coordinates.add(LatLng(latitude, longitude));
    }

    ///add coordinates to polygon widgets
    var polygonWidget = Polygon(
      points: coordinates,
      color: Colors.blue.withOpacity(0.3),
      borderColor: Colors.blue,
      borderStrokeWidth: 3,
    );

    polygons.add(polygonWidget);
  }
}
