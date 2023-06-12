import 'package:flutter/material.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_main_place_items.dart';

import '../../../constant/app_const.dart';
import '../../../utils/functions/function_calculate_travelled_distance.dart';
import 'widgets/itinenary_day_informations.dart';
import 'widgets/total_distance_travelled_show.dart';

class ItineraryShowCardView extends StatelessWidget {
  final int day;
  final int index;
  final String placeName;
  final List<ItineraryPlaceInformationResponse> itineraryPlaceInformation;

  const ItineraryShowCardView({
    Key? key,
    required this.day,
    required this.index,
    required this.placeName,
    required this.itineraryPlaceInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = calculatedTotalDistanceCoveredWithPlaceInformation(itineraryPlaceInformation)
        .toStringAsFixed(2);
    return Stack(
      children: <Widget>[
        Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: cardColor,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16.0, 60.0, 16.0, 16.0),
          child: ItineraryDayInformation(
            day: day,
            index: index,
            placeName: placeName,
            itineraryPlaceInformation: itineraryPlaceInformation,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(
              16.0, MediaQuery.of(context).size.height * 0.29, 16.0, 16.0),
          child: TotalDistanceTravelled(
            totalDistanceTravelledResult: result,
            itineraryPlaceInformationResponse: itineraryPlaceInformation,
          ),
        ),
      ],
    );
  }
}

