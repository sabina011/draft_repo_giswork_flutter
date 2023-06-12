import 'package:flutter/material.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_main_place_items.dart';

import '../../../../config/routes/routes_handler.dart';
import '../../../../constant/app_const.dart';
import 'text_styles.dart';

class ItineraryDayInformation extends StatelessWidget {
  final int day;
  final int index;
  final String placeName;
  final List<ItineraryPlaceInformationResponse> itineraryPlaceInformation;

  const ItineraryDayInformation({
    Key? key,
    required this.day,
    required this.index,
    required this.placeName,
    required this.itineraryPlaceInformation
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'DAY',
          style: dayTextKeyLabelStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Spacer(),
            Text(
              '$day',
              style: dayTextLabelStyle,
            ),
            Spacer(),
            IconButton(
              onPressed: () => jumpToMainPlaceInformationItineraryShowScreen(
                  context, day, index, placeName, itineraryPlaceInformation),
              icon: Icon(
                Icons.arrow_forward,
                color: screenTextColor,
                size: 40.0,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Text(
          placeName[0].toUpperCase() + placeName.substring(1),
          style: TextStyle(
            color: screenTextColor,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
