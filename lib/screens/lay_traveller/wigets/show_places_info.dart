import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_images_response.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_response_items.dart';
import 'package:myapp/screens/lay_traveller/constants.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';

import '../../../model/hive_model/local_store_model.dart';

class AlertDialogActionWindowHolder {
//show dialog
  getUserPostedInformation(BuildContext context, String placeName,
      List<Uint8List> data, double latitude, double longitude) {
    showDialog(
      context: context,
      barrierDismissible: true, //user must tab
      builder: (BuildContext context) {
        return new AlertDialog(
          contentPadding: EdgeInsets.all(16.0),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            IconButton(
              onPressed: () => popScreen(context),
              icon: Icon(
                Icons.close,
              ),
            )
          ],
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                placeName,
                style: itineraryTextStyle(),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '${latitude.toStringAsFixed(6)}, ${longitude.toStringAsFixed(6)}',
                style: normalTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                child: Row(
                  children: imagesList(data),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget imageContainer(Uint8List byteData) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.only(top: 8.0, right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Image.memory(
        Uint8List.fromList(byteData),
        fit: BoxFit.cover,
      ),
    );
  }

  List<Widget> imagesList(List<Uint8List> data) {
    List<Widget> widgets = [];
    data.forEach((e) {
      widgets.add(imageContainer(e.buffer.asUint8List()));
    });
    return widgets;
  }

  void mapMarkerDialog(BuildContext context,
      ItineraryPlaceInformationResponse itineraryPlaceInfoResponse) {
    double latitude = itineraryPlaceInfoResponse
        .geoLocationResponse.geoPointsResponse.latitude;
    double longitude = itineraryPlaceInfoResponse
        .geoLocationResponse.geoPointsResponse.longitude;

    showDialog(
      context: context,
      barrierDismissible: true, //user must tab
      builder: (BuildContext context) {
        return new AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            IconButton(
              onPressed: () => popScreen(context),
              icon: Icon(
                Icons.close,
              ),
            ),
          ],
          contentPadding: EdgeInsets.all(16.0),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                itineraryPlaceInfoResponse.locationName,
                style: itineraryTextStyle(),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '${latitude.toStringAsFixed(6)}, ${longitude.toStringAsFixed(6)}',
                style: normalTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                child: Row(
                  children: imagesListItinerary(
                      itineraryPlaceInfoResponse.geoImagesResponse),
                ),
              )
            ],
          ),
        );
      },
    );
  }


  void mapMarkerLocalUserDayItemDialog(BuildContext context,
      LocalStoreInformation userDayItem) {

    double latitude = userDayItem.geoLocation.points.latitude ;
    double longitude  = userDayItem.geoLocation.points.latitude ;

    showDialog(
      context: context,
      barrierDismissible: true, //user must tab
      builder: (BuildContext context) {
        return new AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            IconButton(
              onPressed: () => popScreen(context),
              icon: Icon(
                Icons.close,
              ),
            ),
          ],
          contentPadding: EdgeInsets.all(16.0),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                userDayItem.locationName,
                style: itineraryTextStyle(),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '${latitude.toStringAsFixed(6)}, ${longitude.toStringAsFixed(6)}',
                style: normalTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                child: Row(
                  children: imagesList(
                      userDayItem.unitImagesFileList!),
                ),
              )
            ],
          ),
        );
      },
    );
  }


  void mapMarkerDialogPlaceInformation(BuildContext context,
      PlaceInformationItemsResponse itineraryPlaceInfoResponse) {
    double latitude = itineraryPlaceInfoResponse
        .geoLocationResponse.geoPointsResponse.latitude;
    double longitude = itineraryPlaceInfoResponse
        .geoLocationResponse.geoPointsResponse.longitude;

    showDialog(
      context: context,
      barrierDismissible: true, //user must tab
      builder: (BuildContext context) {
        return new AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            IconButton(
              onPressed: () => popScreen(context),
              icon: Icon(
                Icons.close,
              ),
            ),
          ],
          contentPadding: EdgeInsets.all(16.0),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                itineraryPlaceInfoResponse.location_name,
                style: itineraryTextStyle(),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '${latitude.toStringAsFixed(6)}, ${longitude.toStringAsFixed(6)}',
                style: normalTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                child: Row(
                  children: imagesListItinerary(
                      itineraryPlaceInfoResponse.geoImagesResponse),
                ),
              )
            ],
          ),
        );
      },
    );
  }


  Widget imageContainerItinerary(String imageUrl) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.only(top: 8.0, right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Image.network(
        image_base_url + imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  List<Widget> imagesListItinerary(List<GeoImagesResponse> geoImageResponse) {
    List<Widget> widgets = [];
    geoImageResponse.forEach((element) {
      widgets.add(imageContainerItinerary(element.image_post));
    });
    return widgets;
  }
}
