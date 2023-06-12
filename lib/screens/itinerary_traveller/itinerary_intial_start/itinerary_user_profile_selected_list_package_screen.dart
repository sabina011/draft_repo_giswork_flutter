import 'package:flutter/material.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_newsfeed/news_feed_story_itinerary.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/custom_elevation_button.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/story_view.dart';

import '../../../config/routes/routes_handler.dart';
import '../../../data/place_information/datastore/models/place_information_response_items.dart';

class ItineraryUserProfileSelectedScreen extends StatelessWidget {
  final List<PlaceInformationItemsResponse> itemResponse;
  final int userId;

  const ItineraryUserProfileSelectedScreen({
    Key? key,
    required this.itemResponse,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    List<PlaceInformationItemsResponse> filteredPlaceInformationItemsResponse =
        itemResponse.where((e) => e.userId == userId).toList();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      shrinkWrap: false,
                      itemCount: filteredPlaceInformationItemsResponse.length,
                      itemBuilder: (context, index) {
                        final data =
                            filteredPlaceInformationItemsResponse[index];
                        return ItineraryStoryView(
                          storyImages: data.geoImagesResponse,
                          profileImageUrl: data.geoImagesResponse[0].image_post,
                          placeName: data.location_name,
                        );
                      }),
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Center(
              child: SizedBox(
                width: screenWidth * 0.4,
                child: CustomItineraryButton(
                  btnText: 'View on Map',
                  icons: Icons.map_outlined,
                  onPressed: () => jumpToItineraryViewOnMap(
                      context,
                      filteredPlaceInformationItemsResponse,
                    ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.685,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  shrinkWrap: false,
                  itemCount: filteredPlaceInformationItemsResponse.length,
                  itemBuilder: (context, index) {
                    final data = filteredPlaceInformationItemsResponse[index];
                    final geoData = data.geoLocationResponse.geoPointsResponse;
                    return NewsFeedItineraryStory(
                      username: data.location_name,
                      profileImageUrl: data.geoImagesResponse[0].image_post,
                      postImageUrl: data.geoImagesResponse,
                      likes: 112,
                      comments: 32,
                      caption:
                          'Latitude: ${geoData.latitude} , Longitude: ${geoData.longitude}',
                      day: data.day,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
