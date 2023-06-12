import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_geo_points_response.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/widget.dart';

import '../../../widgets/widget.dart';

class ImageLayTravelerListShowSelectedDay extends StatelessWidget {
  final MapController mapController;
  final List<LocalStoreInformation> userDayItemResponse;
  List<Map<String, dynamic>> itineraryPlaceInformationIterator = [];

  ImageLayTravelerListShowSelectedDay({
    Key? key,
    required this.userDayItemResponse,
    required this.mapController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    itineraryPlaceInformationFilterAndAssignToNewList(
        userDayItemResponse, itineraryPlaceInformationIterator);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GISDynamicText(
          text: 'Photos',
          isHeadings: true,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: size.width,
          height: size.height * 0.33,
          child: ListView.builder(
            itemCount: itineraryPlaceInformationIterator.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int i) {
              ///assign to local variable
              List<Uint8List> imagesResponse =
                  itineraryPlaceInformationIterator[i]['images'];
              int day = itineraryPlaceInformationIterator[i]['day'];
              Points points = itineraryPlaceInformationIterator[i]['points'];
              String rawPlaceName =
                  itineraryPlaceInformationIterator[i]['place'];

              return InkWell(
                onTap: () {
                  String placeName = getLocationPlaceName(rawPlaceName);

                  /// assigning geo points data to Model GeoPoints
                  GeoPointsResponse geoPointsResponse = new GeoPointsResponse(
                      latitude: points.latitude, longitude: points.longitude);

                  ///jump to image associated screen
                  jumpToImageAssociatedInformationViewScreen(
                      context, day, null, geoPointsResponse, placeName);
                },
                child: Row(
                  children: imagesResponse.map((uint8Image) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Container(
                        height: size.height * 0.33,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.memory(
                            uint8Image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

void itineraryPlaceInformationFilterAndAssignToNewList(
    List<LocalStoreInformation> userPlaceItemResponse,
    List<Map<String, dynamic>> itineraryPlaceInformationIterator) {
  userPlaceItemResponse.forEach((e) {
    itineraryPlaceInformationIterator.add({
      'images': e.unitImagesFileList,
      'day': e.day,
      'place': e.locationName,
      'points': e.geoLocation.points
    });
  });
}
