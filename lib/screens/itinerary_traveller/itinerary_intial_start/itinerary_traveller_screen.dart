import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/application/main_place_information/bloc/main_place_information_bloc.dart';
import 'package:myapp/application/package_information/bloc/package_information_bloc.dart';
import 'package:myapp/application/place_information/bloc/place_information_bloc.dart';
import 'package:myapp/application/provider/location_service_provider.dart';
import 'package:myapp/screens/lay_traveller/constants.dart';
import 'package:myapp/screens/lay_traveller/wigets/feature_show_generic_widget.dart';
import 'package:myapp/widgets/search_box.dart';
import 'package:provider/provider.dart';

import '../../../application/injectable/injection.dart';
import '../../../application/itinerary_show/itinerary_show_bloc.dart';
import '../../../utils/functions/itinerary_dialog_option.dart';
import '../widgets/map_component.dart';
import '../widgets/tab_bar_view.dart';
import '../widgets/widget.dart';
import 'widgets/main_place_information_bloc_provider.dart';

class ItineraryTravellerScreen extends StatefulWidget {
  const ItineraryTravellerScreen({Key? key}) : super(key: key);
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Places'),
    Tab(text: 'Overview'),
  ];

  @override
  State<ItineraryTravellerScreen> createState() =>
      _ItineraryTravellerScreenState();
}

class _ItineraryTravellerScreenState extends State<ItineraryTravellerScreen>
    with TickerProviderStateMixin {
  int counter = 0;
  late Timer _timer;
  var points = <LatLng>[];
  bool isDropdownVisible = false;
  String selectedPlacesToRenderView = '';
  late TabController _tabController;
  var _placeNameNotifier = ValueNotifier<String>('');
  MapController _mapController = new MapController();
  final getMainPlaceInformationBloc = getIt<GetMainPlaceInformationBloc>();
  final getItineraryShowBloc = getIt<GetItineraryShowBloc>();
  final getInformationBloc = getIt<GetPlaceInformationBloc>();
  final itineraryShowBloc = getIt<GetItineraryShowBloc>();
  final getPackageInfoBloc = getIt<GetPackageInformationBloc>();
  final searchBoxController = TextEditingController();

  @override
  void didChangeDependencies() {
    getLocationNameService();
    runTimer();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _timer.cancel();
    _placeNameNotifier.dispose();
    getItineraryShowBloc.close();
    getMainPlaceInformationBloc.close();
    getInformationBloc.close();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      length: ItineraryTravellerScreen.myTabs.length,
    );
    getMainPlaceInformationBloc.add(
      GetMainPlaceInformationEvent.getMainPlaceInformation(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            children: [
              GenericFlutterMapComponent(
                latLng: points,
                mapController: _mapController,
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.4),
                height: screenHeight * 0.7,
                width: screenWidth,
                decoration: kDecoration(),
                child: _placeNameNotifier.value.isNotEmpty
                    ? ItineraryTabBarView(
                        tabController: _tabController,
                        onPressed: () =>
                            placeInformationFilterAndStartBlocEvent(context,
                                getInformationBloc, _placeNameNotifier.value),
                        getInformationBloc: getInformationBloc,
                        placeName: selectedPlacesToRenderView.toLowerCase(),
                        isDropdownVisible: isDropdownVisible,
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ),

              Positioned(
                left: screenWidth * 0.05,
                top: screenHeight * 0.02,
                child: ShowItineraryUserLocation(),
              ),
              //search box
              Positioned(
                left: screenWidth * 0.05,
                top: screenHeight * 0.10,
                child: PackageSearchBox(
                  searchBoxController: searchBoxController,
                ),
              ),

              ///jump to  lay traveler itinerary
              Positioned(
                right: screenWidth * 0.02,
                bottom: screenHeight * 0.05,
                child: GenericPositionedItemFromStartNextScreen(
                  icons: Icons.logout,
                  onPressed: () => popUpItineraryCloseDialogOption(
                      context, "Itinerary Showing"),
                ),
              ),

              ///show single person itinerary with user specific id
              // Positioned(
              //   left: screenWidth * 0.05,
              //   top: screenHeight * 0.08,
              //   child: ElevatedButton(
              //     onPressed: () =>
              //         jumpToItineraryShowPackage(context, getItineraryShowBloc),
              //     child: Text('Show Itinerary Package'),
              //   ),
              // ),

              //choose places information to start as a package.
              Positioned(
                right: screenWidth * 0.05,
                top: screenHeight * 0.02,
                child: MainPlaceInformationBlocProvider(
                  dropDownSelectedPlaceName: selectedPlacesToRenderView,
                  isVisibleDropDown: isDropdownVisible,
                  getMainPlaceInformationBloc: getMainPlaceInformationBloc,
                  refreshOnPlaceItemChanged: refreshOnPlaceItemChanged,
                  refreshOnDropDownShown: refreshOnDropDownShown,
                ),
              ),
              Positioned(
                left: screenWidth * 0.05,
                top: screenHeight * 0.02,
                child: ValueListenableBuilder(
                  valueListenable: _placeNameNotifier,
                  builder: (context, value, _) {
                    if (counter < 2) {
                      if (value.toString().isNotEmpty) {
                        placeInformationFilterAndStartBlocEvent(
                          context,
                          getInformationBloc,
                          value.toString(),
                        );
                        selectedPlacesToRenderView = getLocationPlaceName(value.toString());
                        counter++;
                      }
                    }
                    return SizedBox();
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void placeInformationFilterAndStartBlocEvent(BuildContext context,
      GetPlaceInformationBloc getPlaceInformBloc, String placeName) {
    //start bloc event
    getPlaceInformBloc.add(
      GetPlaceInformationEvent.getPlaceInformation(
        place_name: getLocationPlaceName(placeName),
      ),
    );
  }

  getLocationNameService() {
    Provider.of<LocationServiceProvider>(context, listen: false)
        .getUserLocationInfo();
  }

  void refreshOnPlaceItemChanged(String placeName) {
    setState(() => selectedPlacesToRenderView = placeName);
    placeInformationFilterAndStartBlocEvent(
        context, getInformationBloc, selectedPlacesToRenderView);
  }

  void refreshOnDropDownShown(bool dropDownStatus) {
    setState(() => isDropdownVisible = dropDownStatus);
  }

  void runTimer() {
    _timer = Timer(Duration(seconds: 3), () {
      var geo_points =
          context.read<LocationServiceProvider>().locationGeoPoints;
      if (geo_points != null) {
        var placeName = context.read<LocationServiceProvider>().locationName;
        _placeNameNotifier.value = placeName;

        var geoPointListStyle = (geo_points.split(','));
        var latitude = double.parse(geoPointListStyle[0]);
        var longitude = double.parse(geoPointListStyle[1]);
        setState(
          () => points.add(
            new LatLng(latitude, longitude),
          ),
        );
        _mapController.move(
          new LatLng(points[0].latitude, points[0].longitude),
          LayTravellerConstant.zoomValueLevel,
        );
      }
    });
  }
}
