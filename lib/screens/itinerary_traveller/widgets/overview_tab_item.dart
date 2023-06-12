import 'package:flutter/material.dart';
import 'package:myapp/application/injectable/injection.dart';
import 'package:myapp/application/place_information/bloc/place_information_bloc.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/widgets/widget_gis_button.dart';

import '../../../constant/app_str.dart';
import '../../../widgets/widget.dart';
import 'widget.dart';

class OverviewTabView extends StatelessWidget {
  final String placeName;
  final bool isDropDownVisible;
  final double imageHeight = 100;
  final double imageWidth = 100;

  OverviewTabView({
    Key? key,
    required this.placeName,
    required this.isDropDownVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getPlaceInformationBloc = getIt<GetPlaceInformationBloc>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GISDynamicText(
              text: 'General Information',
              isHeadings: true,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(GisStr.strKathmandu),
            SizedBox(
              height: 10.0,
            ),
            GISDynamicText(
              text: 'Images',
              isHeadings: true,
            ),
            SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              ///custom images assigned
              child: Row(
                children: [
                  ImageUrlPath.image1,
                  ImageUrlPath.image2,
                  ImageUrlPath.image3,
                  ImageUrlPath.image1,
                  ImageUrlPath.image2
                ]
                    .map(
                      (imageUrl) => customImageContainer(
                        imageUrl,
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () {
                //controller
                print("User Profile list screen btn pressed!");
                jumpToUserProfileListScreen(
                  context,
                  getPlaceInformationBloc,
                  placeName,
                );
              },
              child: GISButtonSaveOrUpload(
                context: context,
                btn_text: 'Explore Place',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
