import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/constant/app_const.dart';

import '../../../data/place_information/datastore/models/place_information_response_items.dart';
import '../widgets/card_view.dart';

class ItineraryStoryScreen extends StatefulWidget {
  final List<PlaceInformationItemsResponse> getPlaceInformationItemResponse;

  const ItineraryStoryScreen({
    Key? key,
    required this.getPlaceInformationItemResponse,
  }) : super(key: key);

  @override
  State<ItineraryStoryScreen> createState() => _ItineraryStoryScreenState();
}

class _ItineraryStoryScreenState extends State<ItineraryStoryScreen> {
  @override
  Widget build(BuildContext context) {
    final placesInfo = widget.getPlaceInformationItemResponse;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: placesInfo.length,
      itemBuilder: (context, index) {
        double lat = placesInfo[index].geoLocationResponse.geoPointsResponse.latitude;
        double long = placesInfo[index].geoLocationResponse.geoPointsResponse.longitude;
        latLongTester.add(new LatLng(lat, long));
        return CardView(
          data: placesInfo[index],
        );
      },
    );
  }
}
