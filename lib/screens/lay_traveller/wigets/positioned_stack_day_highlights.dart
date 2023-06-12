import 'package:flutter/material.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_response_items.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/widget.dart';

import '../../../model/hive_model/local_store_model.dart';
import '../constants.dart';
import 'image_view_scrollable.dart';

class LayTravellerDayHighLights extends StatelessWidget {
  final bool isLayTravellerHighlights;
  final double screenHeight;
  final double screenWidth;
  final double distanceTravelled;
  final List<LocalStoreInformation> userSelectedDay;
  final List<PlaceInformationItemsResponse> placeItemInformationResponse;

  LayTravellerDayHighLights(
      {Key? key,
      required this.screenHeight,
      required this.screenWidth,
      required this.distanceTravelled,
      required this.userSelectedDay,
      required this.isLayTravellerHighlights,
      required this.placeItemInformationResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.8,
      width: screenWidth * 0.45,
      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Day Highlights',
              style: textHighlightStyle,
            ),
            SizedBox(
              height: 4.0,
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 8.0),
                height: screenHeight * 0.60,
                width: screenWidth,
                child: isLayTravellerHighlights
                    ? ListUserDayItemBuilder(userSelectedDay: userSelectedDay)
                    : ListPlaceInformationResponseItemBuilder(
                        placeItemInformationResponse:
                            placeItemInformationResponse,
                      ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text('Travel distance', style: textPlaceHighlightStyle),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.1),
              child: Text(
                '${distanceTravelled}m',
                style: textPlaceHighlightStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListUserDayItemBuilder extends StatelessWidget {
  final List<LocalStoreInformation> userSelectedDay;

  const ListUserDayItemBuilder({
    Key? key,
    required this.userSelectedDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: userSelectedDay.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getTravelledPlaceName(userSelectedDay[index].locationName),
              style: textPlaceHighlightStyle,
            ),
            SingleChildScrollView(
              child: Column(
                children: imagesHighLightsListForLayTraveller(
                  context,
                  userSelectedDay[index].unitImagesFileList!,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        );
      },
    );
  }
}

class ListPlaceInformationResponseItemBuilder extends StatelessWidget {
  final List<PlaceInformationItemsResponse> placeItemInformationResponse;

  const ListPlaceInformationResponseItemBuilder({
    Key? key,
    required this.placeItemInformationResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: placeItemInformationResponse.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              placeItemInformationResponse[index].location_name,
              style: textPlaceHighlightStyle,
            ),
            SingleChildScrollView(
              child: Column(
                children: imagesHighLightsListItineraryConsumer(
                  context,
                  placeItemInformationResponse[index].geoImagesResponse,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            )
          ],
        );
      },
    );
  }
}
