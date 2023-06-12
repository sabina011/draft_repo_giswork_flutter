import 'package:flutter/material.dart';

import '../../../../data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import '../../../../utils/functions/check_for_distance_units.dart';

class TotalDistanceTravelled extends StatelessWidget {
  final totalDistanceTravelledResult;
  final List<ItineraryPlaceInformationResponse>
      itineraryPlaceInformationResponse;

  const TotalDistanceTravelled({
    Key? key,
    required this.totalDistanceTravelledResult,
    required this.itineraryPlaceInformationResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text(
              'Total distance  ${getCalculatedDistanceUnits(
                double.parse(totalDistanceTravelledResult),
              )}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travelled Places',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children:
                  _getChildren(context, itineraryPlaceInformationResponse),
            )
          ],
        ),
      ),
    );
  }
}

List<Widget> _getChildren(BuildContext context,
    List<ItineraryPlaceInformationResponse> itineraryPlaceInformationResponse) {
  return List<Widget>.generate(itineraryPlaceInformationResponse.length, (i) {
    String placeName = itineraryPlaceInformationResponse[i].locationName;

    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Icon(Icons.location_on, color: Colors.grey[600], size: 20.0),
            SizedBox(width: 4.0),
            Text(
              placeName,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              width: 8.0,
            )
          ],
        ),
      ),
    );
  });
}
