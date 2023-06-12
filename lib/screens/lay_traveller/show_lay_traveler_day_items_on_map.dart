import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/application/upload_package/upload_package_data_conversion.dart';
import 'package:myapp/screens/lay_traveller/wigets/image_lay_traveler_selected_day.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';
import 'package:myapp/utils/functions/check_for_distance_units.dart';

import '../../model/hive_model/local_store_model.dart';
import 'wigets/show_places_info.dart';

class ShowLayTravelerDayItemsOnMapScreen extends StatefulWidget {
  final List<LocalStoreInformation> userDayTravelerInformation;

  const ShowLayTravelerDayItemsOnMapScreen({
    Key? key,
    required this.userDayTravelerInformation,
  }) : super(key: key);

  @override
  State<ShowLayTravelerDayItemsOnMapScreen> createState() =>
      _ShowLayTravelerDayItemsOnMapScreenState();
}

class _ShowLayTravelerDayItemsOnMapScreenState
    extends State<ShowLayTravelerDayItemsOnMapScreen> {
  List<LocalStoreInformation> userDayItemList = [];
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
    renderItineraryData(markers, widget.userDayTravelerInformation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder(
      initialData: selectedDay,
      stream: dayStreamController.stream,
      builder: (context, snapshot) {
        final List<LocalStoreInformation> itineraryPlaceInformationResponse =
            widget.userDayTravelerInformation
                .where((element) => element.day == selectedDay)
                .toList();

        final totalDistanceCovered =
            calculatedTotalDistanceTravelled(itineraryPlaceInformationResponse)
                .toStringAsFixed(2);

        return SafeArea(
          child: Scaffold(
            persistentFooterAlignment: AlignmentDirectional.centerStart,
            persistentFooterButtons:
                persistentFooterButtons(widget.userDayTravelerInformation),
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
                    child: ImageLayTravelerListShowSelectedDay(
                      userDayItemResponse: userDayItemList,
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
                                double.parse(totalDistanceCovered),
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
      List<LocalStoreInformation> userDayItemResponse) {
    List<Widget> persistentWidgets = [];
    List<Widget> rowElement = [];

    ///get total number of itinerary day
    List<int> numberOfDayItinerary =
        userDayItemResponse.map((e) => e.day).toList();

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
              userDayItemList.clear();
              renderItineraryData(markers, widget.userDayTravelerInformation);
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
  void renderItineraryData(
      List<Marker> markers, List<LocalStoreInformation> userDayItem) {
    userDayItemList = userDayItem.where((e) => e.day == selectedDay).toList();

    userDayItemList.forEach(
      (item) {
        double latitude = item.geoLocation.points.latitude;
        double longitude = item.geoLocation.points.longitude;

        latLngPoints.add(new LatLng(latitude, longitude));
        Marker newMarker = new Marker(
          point: new LatLng(latitude, longitude),
          builder: (context) => new Container(
            child: IconButton(
              hoverColor: Colors.red,
              icon: Icon(Icons.location_on),
              color: Colors.red,
              iconSize: 30,
              onPressed: () {
                AlertDialogActionWindowHolder()
                    .mapMarkerLocalUserDayItemDialog(context, item);
              },
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
