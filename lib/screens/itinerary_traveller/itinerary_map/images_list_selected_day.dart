import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_geo_points_response.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_images_response.dart';

import '../../../constant/app_const.dart';
import '../../../widgets/widget.dart';

class ImageListShowSelectedDay extends StatelessWidget {
  final MapController mapController;
  final List<ItineraryPlaceInformationResponse>
      itineraryPlaceInformationResponse;
  List<Map<String, dynamic>> itineraryPlaceInformationIterator = [];

  ImageListShowSelectedDay({
    Key? key,
      required this.itineraryPlaceInformationResponse,
      required this.mapController,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    itineraryPlaceInformationFilterAndAssignToNewList(
        itineraryPlaceInformationResponse, itineraryPlaceInformationIterator);
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
              int postID = itineraryPlaceInformationIterator[i]['id'];
              List<GeoImagesResponse> imagesResponse =
                  itineraryPlaceInformationIterator[i]['images'];
              int day = itineraryPlaceInformationIterator[i]['day'];
              GeoPointsResponse geoPoints =
                  itineraryPlaceInformationIterator[i]['points'];
              String placeName = itineraryPlaceInformationIterator[i]['place'];

              return InkWell(
                onTap: () => jumpToImageAssociatedInformationViewScreen(
                    context, day, postID, geoPoints, placeName),
                child: Row(
                  children: imagesResponse.map((e) {
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
                          child: Image.network(
                            image_base_url + e.image_post,
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
    List<ItineraryPlaceInformationResponse> itineraryPlaceInformationResponse,
    List<Map<String, dynamic>> itineraryPlaceInformationIterator) {
  itineraryPlaceInformationResponse.forEach((e) {
    itineraryPlaceInformationIterator.add({
      'id': e.id,
      'images': e.geoImagesResponse,
      'day': e.day,
      'place': e.locationName,
      'points': e.geoLocationResponse.geoPointsResponse
    });
  });
}
