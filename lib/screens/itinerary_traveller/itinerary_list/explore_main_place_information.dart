import 'package:flutter/material.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_list/widgets/item_builder.dart';

class ExploreMainPlaceItineraryInformation extends StatelessWidget {
  final int day;
  final int index;
  final String placeName;
  final List<ItineraryPlaceInformationResponse> itineraryPlaceInformation;

  const ExploreMainPlaceItineraryInformation({
    Key? key,
    required this.day,
    required this.index,
    required this.placeName,
    required this.itineraryPlaceInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final placeItinerary = placeName[0].toUpperCase() + placeName.substring(1);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height * 0.95,
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Itinerary - $placeItinerary',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ItineraryListItemBuilder(
                    size: size,
                    itineraryPlaceInformation: itineraryPlaceInformation,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
