import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/widget.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';

import '../../../model/hive_model/local_store_model.dart';

class LayTravelerViewPackageScreen extends StatelessWidget {
  final List<LocalStoreInformation> userDayItemResponse;

  const LayTravelerViewPackageScreen({
    Key? key,
    required this.userDayItemResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Now Showing Package', style: itineraryTextStyle()),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => popScreen(context),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              CreatorProfileItineraryPackageBuilder(
                userDayItemResponse: userDayItemResponse,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreatorProfileItineraryPackageBuilder extends StatelessWidget {
  final List<LocalStoreInformation> userDayItemResponse;

  CreatorProfileItineraryPackageBuilder({
    Key? key,
    required this.userDayItemResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.80,
      width: size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        itemCount: userDayItemResponse.length,
        itemBuilder: (context, index) {
          bool viewMoreOptionPressed = false;
          StreamController<bool> streamController =
              new StreamController<bool>();
          streamController.sink.add(viewMoreOptionPressed);

          return Container(
            height: size.height * 0.48,
            width: size.width,
            child: Stack(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      16.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 25,
                              color: Colors.black54,
                            ),
                            Text(
                              getTravelledPlaceName(
                                  userDayItemResponse[index].locationName),
                              style: itineraryTextStyle(),
                            ),
                            Spacer(),
                            Spacer(),
                            Text(
                              'Day: ${userDayItemResponse[index].day}',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Geo Points',
                          style: markerPlaceTextStyle(),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                            '${userDayItemResponse[index].geoLocation.points.latitude} , '
                            '${userDayItemResponse[index].geoLocation.points.longitude}'),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Images',
                          style: markerPlaceTextStyle(),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        SingleChildListImageItemBuilder(
                          size: size,
                          u8intImageFileList:
                              userDayItemResponse[index].unitImagesFileList!,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SingleChildListImageItemBuilder extends StatelessWidget {
  final Size size;
  final List<Uint8List> u8intImageFileList;

  const SingleChildListImageItemBuilder({
    Key? key,
    required this.size,
    required this.u8intImageFileList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: u8intImageFileList
            .map(
              (e) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      12.5,
                    ),
                  ),
                ),
                margin: EdgeInsets.only(right: 12.0),
                height: size.height * 0.25,
                width: size.width * 0.4,
                child: Image.memory(
                  e,
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
