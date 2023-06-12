import 'package:flutter/material.dart';

import '../itinerary_list/custom_expansiontile_itinerary.dart';

class ItineraryListItemScreen extends StatelessWidget {
  final List<Map<String, dynamic>> mainPlaceItems;

  ItineraryListItemScreen({required this.mainPlaceItems});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight * 0.95,
          width: screenWidth,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Itinerary',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: mainPlaceItems.length,
                    itemBuilder: (context, index) {
                      final day = mainPlaceItems[index]['day'];
                      final mainPlace = mainPlaceItems[index]['main_place'];
                      final data = mainPlaceItems[index]['data'];

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ItineraryShowCardView(
                          day: day,
                          index: index,
                          placeName: mainPlace,
                          itineraryPlaceInformation: data,
                        ),
                      );
                    },
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
