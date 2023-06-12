import 'package:flutter/material.dart';

import '../../../data/place_information/datastore/models/place_information_response_items.dart';
import '../../../widgets/widget.dart';
import 'custom_elevation_button.dart';
import 'widget.dart';

class CardView extends StatelessWidget {
  final PlaceInformationItemsResponse data;

  const CardView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      child: SizedBox(
        width: size.width * 0.5,
        height: size.height * 0.35,
        child: Padding(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GISDynamicText(
                text: data.location_name,
                isHeadings: true,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: imageStoryViewer(
                    data.geoImagesResponse,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ), //SizedBox
              Center(
                child: SizedBox(
                  width: size.width * 0.4,
                  child: CustomItineraryButton(
                    btnText: 'Explore',
                    icons: Icons.touch_app,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
