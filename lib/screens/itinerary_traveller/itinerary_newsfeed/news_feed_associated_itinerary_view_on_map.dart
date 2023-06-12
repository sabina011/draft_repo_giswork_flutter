import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_response_items.dart';

import '../../../model/hive_model/local_store_model.dart';
import '../../../utils/functions/function_navigation_logic.dart';
import '../../../widgets/widget_gis_button.dart';
import '../../lay_traveller/wigets/positioned_stack_day_highlights.dart';
import '../../lay_traveller/wigets/show_current_user_location.dart';
import '../../lay_traveller/wigets/show_places_info.dart';

class NewsFeedAssociatedItineraryViewOnMapScreen extends StatefulWidget {
  final List<PlaceInformationItemsResponse> placeInformationItemResponse;

  const NewsFeedAssociatedItineraryViewOnMapScreen({
    Key? key,
    required this.placeInformationItemResponse,
  }) : super(key: key);

  @override
  State<NewsFeedAssociatedItineraryViewOnMapScreen> createState() =>
      _NewsFeedAssociatedItineraryViewOnMapScreenState();
}

class _NewsFeedAssociatedItineraryViewOnMapScreenState
    extends State<NewsFeedAssociatedItineraryViewOnMapScreen> {
  var points = <LatLng>[];
  int selected = 1;
  List<int> dropDownListItemLayTraveller = [];
  MapController _mapController = new MapController();
  List<LocalStoreInformation> userSelectedDay = [];
  double totalDistanceTravelledInSingleSelectedDay = 0.0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    generateDropDownItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final data = widget.placeInformationItemResponse
        .where((e) => e.day == selected)
        .toList();

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            children: [
              FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  center: LatLng(28.234380912218974, 84.37345504760742),
                  bounds: LatLngBounds(
                    LatLng(27.451667, 85.401389),
                    LatLng(28.791389, 83.731389),
                  ),
                ),
                layers: [
                  new TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                  ),
                  // MarkerLayerOptions(
                  //   markers: placeMarker(context),
                  // )
                ],
              ),
              Positioned(
                top: 10,
                left: 20,
                child: ShowCurrentUserLocation(),
              ),
              Positioned(
                top: screenHeight * 0.05,
                child: LayTravellerDayHighLights(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  distanceTravelled: double.parse(
                      totalDistanceTravelledInSingleSelectedDay
                          .toStringAsFixed(3)),
                  userSelectedDay: [],
                  placeItemInformationResponse: data,
                  isLayTravellerHighlights: false,
                ),
              ),
              Positioned(
                top: 10,
                right: 20,
                child: Column(
                  children: [
                    Text('Select Days'),
                    DropdownButton<int>(
                      value: selected,
                      items: dropDownListItemLayTraveller.map((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() => selected = value!);
                        totalDistanceTravelledInSingleSelectedDay =
                            calculatedTotalDistanceTravelledByItineraryTraveller(
                                data);
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: screenHeight * 0.01,
                child: InkWell(
                  onTap: () => popScreen(context),
                  child: GISButtonSaveOrUpload(
                    context: context,
                    btn_text: " Go Back! ",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void generateDropDownItem() {
    //gets the day list from the placeInformational
    final days = widget.placeInformationItemResponse.map((e) => e.day).toList();
    int maximumDay =
        days.reduce((value, element) => value > element ? value : element);
    for (int i = 0; i < maximumDay; i++) {
      dropDownListItemLayTraveller.add(i + 1);
    }
  }

  Marker addNewMarker(BuildContext context, String locationName,
      List<Uint8List> imageList, double latitude, double longitude) {
    Marker marker;
    marker = new Marker(
      point: new LatLng(latitude, longitude),
      builder: (context) => new Container(
        child: IconButton(
          hoverColor: Colors.red,
          icon: Icon(Icons.location_on),
          color: Colors.red,
          iconSize: 30,
          onPressed: () {
            AlertDialogActionWindowHolder().getUserPostedInformation(
                context, locationName, imageList, latitude, longitude);
          },
        ),
      ),
      width: 35.0,
      height: 35.0,
      anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    );
    return marker;
  }

//   List<Marker> placeMarker(BuildContext context) {
//     List<Marker> markers = [];
//
//     if (data.isLayTravellerHasData) {
//       setState(() {
//         userSelectedDay =
//             data.layTravellerData.where((e) => e.day == selected).toList();
//         totalDistanceTravelledInSingleSelectedDay =
//             calculatedTotalDistanceTravelled(userSelectedDay);
//       });
//
//       for (var x in userSelectedDay) {
//         Marker marker = addNewMarker(
//             context,
//             x.locationName,
//             x.unitImagesFileList!,
//             x.geoLocation.points.latitude,
//             x.geoLocation.points.longitude);
//         markers.add(marker);
//       }
//     } else {
//       print('No lay traveller data');
//     }
//     return markers;
//   }
}

///calculates the total distances
double calculatedTotalDistanceTravelledByItineraryTraveller(
    List<PlaceInformationItemsResponse> placeInfoList) {
  double totalDistanceTravelledInSingleSelectedDay = 0.0;
  try {
    for (int i = 0; i < placeInfoList.length - 1; i++) {
      if (placeInfoList.length > 1) {
        ///reflecting the distance travelled and adding to the next distance travelled
        /// [0] -> [1] =>  1
        /// [1] -> [2] => 1 + 2 == 3
        /// [2] -> [3] => 3+3   == 6
        totalDistanceTravelledInSingleSelectedDay += Geolocator.distanceBetween(
            placeInfoList[i].geoLocationResponse.geoPointsResponse.latitude,
            placeInfoList[i].geoLocationResponse.geoPointsResponse.longitude,
            placeInfoList[i + 1].geoLocationResponse.geoPointsResponse.latitude,
            placeInfoList[i + 1]
                .geoLocationResponse
                .geoPointsResponse
                .longitude);
      }
    }
  } catch (ex) {
    print("Exception for distance calculation ${ex}");
  }
  return totalDistanceTravelledInSingleSelectedDay;
}
