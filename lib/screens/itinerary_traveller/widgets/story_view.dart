import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_images_response.dart';

class ItineraryStoryView extends StatelessWidget {
  final List<GeoImagesResponse> storyImages;
  final String profileImageUrl;
  final String placeName;

  const ItineraryStoryView({
    Key? key,
    required this.storyImages,
    required this.profileImageUrl,
    required this.placeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.1,
      margin: EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              image_base_url + profileImageUrl!,
            ),
            radius: 50.0,
          ),
          SizedBox(width: 10.0),
          Center(
            child: Text(
              placeName,
            ),
          ),
        ],
      ),
    );
  }
}
