import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';
import 'package:myapp/utils/functions/check_for_distance_units.dart';

import '../../../data/itinerary_show/datastore/models/itinerary_response_items.dart';
import '../../../utils/functions/function_calculate_travelled_distance.dart';
import '../../lay_traveller/wigets/show_places_info.dart';
import 'images_list_selected_day.dart';

class ShowDayItemsOnMapScreen extends StatefulWidget {
  final List<ItineraryShowItemsResponse> itineraryShowItemsResponse;

  const ShowDayItemsOnMapScreen({
    Key? key,
    required this.itineraryShowItemsResponse,
  }) : super(key: key);

  @override
  State<ShowDayItemsOnMapScreen> createState() =>
      _ShowDayItemsOnMapScreenState();
}

class _ShowDayItemsOnMapScreenState extends State<ShowDayItemsOnMapScreen> {
  List<ItineraryPlaceInformationResponse> itineraryPlaceInfoList = [];
  MapController _mapController = new MapController();
  List<Marker> markers = [];
  List<LatLng> latLngPoints = [];
  List<int> daySelector = [];
  int selectedDay = 0;
  bool isButtonNotSelected = true;
  StreamController<int> dayStreamController = new StreamController<int>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    dayStreamController.sink.add(++selectedDay);
    renderItineraryData(markers, widget.itineraryShowItemsResponse);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder(
      initialData: selectedDay,
      stream: dayStreamController.stream,
      builder: (context, snapshot) {
        final List<ItineraryPlaceInformationResponse>
            itineraryPlaceInformationResponse = widget
                .itineraryShowItemsResponse
                .map((e) => e.itineraryPlaceInformationResponse)
                .expand((element) => element)
                .where((element) => element.day == selectedDay)
                .toList();

        final totalDistanceCovered =
            calculatedTotalDistanceCoveredWithPlaceInformation(
                    itineraryPlaceInformationResponse)
                .toStringAsFixed(2);

        return SafeArea(
          child: Scaffold(
            persistentFooterAlignment: AlignmentDirectional.centerStart,
            persistentFooterButtons:
                persistentFooterButtons(widget.itineraryShowItemsResponse),
            body: Container(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
                  FlutterMap(
                    mapController: _mapController,
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
                      new MarkerLayerOptions(
                        markers: markers,
                      ),
                      new PolylineLayerOptions(polylines: [
                        Polyline(
                          points: latLngPoints,
                          isDotted: false,
                          strokeWidth: 3,
                          color: Colors.red,
                        )
                      ]),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    bottom: size.height * 0.01,
                    left: size.width * 0.03,
                    child: ImageListShowSelectedDay(
                      itineraryPlaceInformationResponse: itineraryPlaceInfoList,
                      mapController: _mapController,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: SizedBox(
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Day ${selectedDay}',
                              style: mainPlaceTextStyle(),
                            ),
                            Text(
                              'Distance: ${getCalculatedDistanceUnits(
                                double.parse(
                                  totalDistanceCovered,
                                ),
                              )}',
                              style: distanceTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> persistentFooterButtons(
      List<ItineraryShowItemsResponse> itineraryShowItemResponse) {
    List<Widget> persistentWidgets = [];
    List<Widget> rowElement = [];

    ///get total number of itinerary day
    List<int> numberOfDayItinerary = itineraryShowItemResponse
        .map((e) =>
            e.itineraryPlaceInformationResponse.map((e) => e.day).toList())
        .expand((i) => i)
        .toList();

    ///get unique day items from the redundant list item
    Set filteredDays = Set.from(numberOfDayItinerary);
    filteredDays.forEach((element) {
      rowElement.add(
        Visibility(
          visible: isButtonNotSelected && selectedDay != element,
          child: ElevatedButton(
            onPressed: () {
              selectedDay = element;
              dayStreamController.sink.add(selectedDay);
              if (selectedDay != element) {
                isButtonNotSelected = false;
              }
              latLngPoints.clear();
              markers.clear();
              itineraryPlaceInfoList.clear();
              renderItineraryData(markers, widget.itineraryShowItemsResponse);
            },
            child: Text('Day ${element} '),
          ),
        ),
      );
      rowElement.add(SizedBox(
        width: 10.0,
      ));
    });

    persistentWidgets.add(
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(children: rowElement),
      ),
    );
    return persistentWidgets;
  }

  ///adding itinerary items to markers and points for polyline
  void renderItineraryData(List<Marker> markers,
      List<ItineraryShowItemsResponse> itineraryShowItemsResponse) {
    itineraryPlaceInfoList = itineraryShowItemsResponse
        .expand((e) => e.itineraryPlaceInformationResponse)
        .where((e) => e.day == selectedDay)
        .toList();
    itineraryPlaceInfoList.forEach(
      (item) {
        double latitude = item.geoLocationResponse.geoPointsResponse.latitude;
        double longitude = item.geoLocationResponse.geoPointsResponse.longitude;

        latLngPoints.add(new LatLng(latitude, longitude));
        Marker newMarker = new Marker(
          point: new LatLng(latitude, longitude),
          builder: (context) => new Container(
            child: IconButton(
              hoverColor: Colors.red,
              icon: Icon(Icons.location_on),
              color: Colors.red,
              iconSize: 30,
              onPressed: () => AlertDialogActionWindowHolder()
                  .mapMarkerDialog(context, item),
            ),
          ),
          width: 35,
          height: 35,
          anchorPos: AnchorPos.exactly(Anchor(0, 0)),
        );
        markers.add(newMarker);
      },
    );
  }
}
