import 'package:flutter/material.dart';

import '../../../../constant/app_const.dart';
import '../../../../data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import '../../../../data/place_information/datastore/models/place_information_images_response.dart';

class ItineraryListItemBuilder extends StatelessWidget {
  final Size size;
  final List<ItineraryPlaceInformationResponse> itineraryPlaceInformation;

  const ItineraryListItemBuilder({
    Key? key,
    required this.size,
    required this.itineraryPlaceInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itineraryPlaceInformation.length,
      itemBuilder: (context, index) {
        final placeInformation = itineraryPlaceInformation[index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Stack(
            children: <Widget>[
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: cardColor,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  16.0,
                  20.0,
                  16.0,
                  16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      placeInformation.locationName[0].toUpperCase() +
                          placeInformation.locationName.substring(1),
                      style: TextStyle(
                        color: screenTextColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class PlaceAssociatedInformationResponse extends StatelessWidget {
  final Size size;
  final ItineraryPlaceInformationResponse placeInformation;

  const PlaceAssociatedInformationResponse({
    Key? key,
    required this.placeInformation,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.55,
      margin: EdgeInsets.fromLTRB(
          16.0, MediaQuery.of(context).size.height * 0.10, 16.0, 16.0),
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                'Place Information',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Geo Points',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '${placeInformation.geoLocationResponse.geoPointsResponse.latitude} , '
                '${placeInformation.geoLocationResponse.geoPointsResponse.longitude}',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Photos',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: size.height * 0.32,
                width: size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: _getChildren(
                        context,
                        placeInformation.geoImagesResponse,
                        MediaQuery.of(context).size),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getChildren(
    BuildContext context,
    List<GeoImagesResponse> geoImageResponse,
    Size screenSize,
  ) {
    return List<Widget>.generate(geoImageResponse.length, (i) {
      String imageUrl = geoImageResponse[i].image_post;

      return Container(
        margin: EdgeInsets.only(
          right: 10.0,
        ),
        height: screenSize.height * 0.33,
        width: screenSize.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            50.0,
          ),
        ),
        child: Image.network(
          image_base_url + imageUrl,
          fit: BoxFit.cover,
        ),
      );
    });
  }
}
