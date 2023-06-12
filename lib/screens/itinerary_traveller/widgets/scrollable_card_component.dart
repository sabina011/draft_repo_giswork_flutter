import 'package:flutter/material.dart';

import '../../../application/place_information/bloc/place_information_bloc.dart';
import '../../lay_traveller/constants.dart';
import 'itinerary_story_builder.dart';

class ScrollableCardComponent extends StatelessWidget {
  final VoidCallback onPressed;
  final GetPlaceInformationBloc getInformationBloc;
  final TabController tabController;
  final String placeName;

  ScrollableCardComponent({
    Key? key,
    required this.onPressed,
    required this.getInformationBloc,
    required this.tabController,
    required this.placeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 4,
            width: size.width * 0.1,
            color: Colors.black26,
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            height: 4,
            width: size.width * 0.15,
            color: Colors.black26,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Places to Visit',
                style: textPlaceHighlightStyle,
              ),
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.refresh,
                  size: 30.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: size.height * 0.35,
              child: ItineraryStoryBuilder(
                getPlaceInformationBloc: getInformationBloc,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
