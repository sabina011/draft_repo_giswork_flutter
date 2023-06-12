import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';

import '../../../data/place_information/datastore/models/place_information_images_response.dart';

Widget imageContainerHighLights(BuildContext context, Uint8List byteData) {
  return Container(
    height: 200,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    child: Image.memory(
      Uint8List.fromList(byteData),
      fit: BoxFit.cover,
    ),
  );
}

List<Widget> imagesHighLightsListForLayTraveller(
    BuildContext context, List<Uint8List> data) {
  List<Widget> widgets = [];
  data.forEach((item) {
    widgets.add(
      imageContainerHighLights(
        context,
        item.buffer.asUint8List(),
      ),
    );
  });
  return widgets;
}

Widget imageContainerHighLightsForItineraryConsumer(
    BuildContext context, String imageUrl) {
  return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Image.network(
        image_base_url + imageUrl,
        fit: BoxFit.cover,
      ));
}

List<Widget> imagesHighLightsListItineraryConsumer(
    BuildContext context, List<GeoImagesResponse> data) {
  List<Widget> widgets = [];
  data.forEach((item) {
    widgets.add(
      imageContainerHighLightsForItineraryConsumer(
        context,
        item.image_post,
      ),
    );
  });
  return widgets;
}

Widget imageContainerItinerary(BuildContext context, Uint8List byteData) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.15,
    width: MediaQuery.of(context).size.width * 0.4,
    margin: EdgeInsets.only(top: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.memory(
        Uint8List.fromList(byteData),
        fit: BoxFit.cover,
      ),
    ),
  );
}

List<Widget> imageContainerListForItinerary(
    BuildContext context, List<Uint8List> data) {
  List<Widget> widgets = [];

  data.forEach((item) {
    widgets.add(
      imageContainerItinerary(
        context,
        item.buffer.asUint8List(),
      ),
    );
  });
  return widgets;
}

//itenary show methods
Widget LayTravellerImageContainerItineraryShow(
    BuildContext context, String imageUrl) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.15,
    width: MediaQuery.of(context).size.width * 0.4,
    margin: EdgeInsets.only(top: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        image_base_url + imageUrl,
        fit: BoxFit.cover,
      ),
    ),
  );
}

List<Widget> LayTravellerListImageContainerItinerary(
    BuildContext context, List<GeoImagesResponse> data) {
  List<Widget> widgets = [];
  data.forEach((item) {
    widgets.add(
      LayTravellerImageContainerItineraryShow(
        context,
        item.image_post,
      ),
    );
  });
  return widgets;
}
