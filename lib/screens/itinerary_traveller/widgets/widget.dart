import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_images_response.dart';
import 'package:provider/provider.dart';

import '../../../application/provider/location_service_provider.dart';
import '../../../model/hive_model/local_store_model.dart';
import '../../../widgets/widget.dart';
import '../../customize/customize_constants.dart';
import '../../lay_traveller/constants.dart';

class ShowItineraryUserLocation extends StatelessWidget {
  const ShowItineraryUserLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Icon(
            Icons.location_on_sharp,
            color: Colors.red,
          ),
          Consumer<LocationServiceProvider>(
            builder: (context, data, child) => data.locationName.isNotEmpty
                ? GISDynamicText(
                    text: data.locationName,
                    isHeadings: true,
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}

Widget imageStoriesContainer(String imageUrl) {
  return Container(
    height: CustomizeGisConstant.imageHeight * 0.75,
    width: CustomizeGisConstant.imageWidth * 0.75,
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

List<Widget> imageStoryViewer(List<GeoImagesResponse> imagesLists) {
  List<Widget> widgets =
      imagesLists.map((e) => imageStoriesContainer(e.image_post)).toList();
  return widgets;
}

Decoration kDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(32.0),
      topRight: Radius.circular(32.0),
    ),
  );
}

Widget customImageContainer(String imageUrl) {
  return Container(
    height: CustomizeGisConstant.imageHeight * 0.75,
    width: CustomizeGisConstant.imageWidth * 0.75,
    margin: EdgeInsets.only(top: 8.0, right: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    child: Image.network(
      imageUrl,
      fit: BoxFit.cover,
    ),
  );
}

Widget textContainer(String locationName) {
  return Container(
    margin: EdgeInsets.only(right: 8.0),
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.all(
        Radius.circular(
          50.0,
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        locationName,
        style: travelPlacedTextStyle,
      ),
    ),
  );
}

List<Widget> travelledPlaceList(List<LocalStoreInformation> userDay) {
  List<Widget> widgets = [];
  if (userDay.length > 0) {
    List<LocalStoreInformation> conditionalDay = userDay.where((e) => e.day < 5).toList();
    for (var x in conditionalDay) {
      widgets.add(
        textContainer(
          x.locationName,
        ),
      );
    }
  }

  return widgets;
}

String getLocationPlaceName(String placeName) {
  String place_name;
  if (placeName.contains(',')) {
    var new_str = placeName.split(new RegExp(r"[,]"));
    place_name = new_str[1].trim();
  } else {
    place_name = placeName;
  }
  return place_name;
}

String getTravelledPlaceName(String placeName) {
  String travelled_place_name;
  if (placeName.contains(',')) {
    var new_str = placeName.split(new RegExp(r"[,]"));
    travelled_place_name = new_str[0].trim();
  } else {
    travelled_place_name = placeName;
  }
  return travelled_place_name;
}

Widget customNewsFeedImageContainer(
    String imageUrl, double height, double width) {
  return Container(
    height: height * 0.45,
    width: width,
    margin: EdgeInsets.only(top: 8.0, right: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    child: Image.network(
      imageUrl,
      fit: BoxFit.cover,
    ),
  );
}
