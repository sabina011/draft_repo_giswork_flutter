import 'package:flutter/material.dart';

import '../../wigets/text_styles.dart';
import '../lay_traveler_profile_screen.dart';
import 'creator_profile_itinerary_builder.dart';

class CreatorPackageListScreen extends StatelessWidget {
  const CreatorPackageListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreatorProfileTopWidgetContainer(),
                SizedBox(height: 16.0),
                Text('Traveled Package', style: itineraryTextStyle()),
                SizedBox(height: 16.0),
                CreatorProfileItineraryPackageListBuilder(
                  isTraveledPackageListView: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
