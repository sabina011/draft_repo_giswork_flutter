import 'package:flutter/material.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/scrollable_card_component.dart';

import '../../../application/place_information/bloc/place_information_bloc.dart';
import '../itinerary_intial_start/itinerary_traveller_screen.dart';
import 'overview_tab_item.dart';

class ItineraryTabBarView extends StatelessWidget {
  final VoidCallback onPressed;
  final GetPlaceInformationBloc getInformationBloc;
  final TabController tabController;
  final String placeName;
  final bool isDropdownVisible;

  const ItineraryTabBarView({
    Key? key,
    required this.tabController,
    required this.onPressed,
    required this.getInformationBloc,
    required this.placeName,
    required this.isDropdownVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TabBar(
          labelColor: Colors.black,
          tabs: ItineraryTravellerScreen.myTabs,
          controller: tabController,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: ScrollableCardComponent(
                  onPressed: onPressed,
                  getInformationBloc: getInformationBloc,
                  tabController: tabController,
                  placeName: placeName,
                ),
              ),
              OverviewTabView(
                placeName: placeName,
                isDropDownVisible: isDropdownVisible,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
