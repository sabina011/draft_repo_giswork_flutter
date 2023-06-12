import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/application/provider/location_service_provider.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/screens/lay_traveller/constants.dart';
import 'package:myapp/screens/lay_traveller/profile/lay_traveler_profile_screen.dart';
import 'package:myapp/screens/lay_traveller/profile/widgets/traveled_package_list.dart';
import 'package:myapp/screens/lay_traveller/wigets/positioned_stack_day_highlights.dart';
import 'package:myapp/screens/lay_traveller/wigets/show_current_user_location.dart';
import 'package:myapp/screens/lay_traveller/wigets/show_places_info.dart';
import 'package:myapp/utils/services/local_storage/hive/hive_store_provider.dart';
import 'package:provider/provider.dart';

import '../../application/connection/bloc/connection_bloc.dart';
import '../../application/injectable/injection.dart';
import '../../application/upload_package/upload_package_data_conversion.dart';
import '../../utils/functions/alert_option_package_choose.dart';
import '../../utils/functions/itinerary_dialog_option.dart';
import '../../utils/functions/special/already_exists_package_checker_func.dart';
import '../../widgets/widget_gis_button.dart';
import 'wigets/feature_show_generic_widget.dart';

class NextMapTravellingScreen extends StatefulWidget {
  const NextMapTravellingScreen({Key? key}) : super(key: key);

  @override
  State<NextMapTravellingScreen> createState() =>
      _NextMapTravellingScreenState();
}

class _NextMapTravellingScreenState extends State<NextMapTravellingScreen> {
  final networkConnectionBloc = getIt<NetworkConnectionBloc>();
  var points = <LatLng>[];
  late Timer _timer;
  late int selectedDay;
  String LocationName = '';
  List<int> dropDownListItemLayTraveller = [];
  MapController _mapController = new MapController();

  late List<LocalStoreInformation> itineraryPackageItemsInstance;
  List<LocalStoreInformation> userSelectedDay = [];
  double totalDistanceTravelledInSingleSelectedDay = 0.0;
  bool isVisible = false;
  StreamController<int> dayStreamController = new StreamController<int>();
  TextEditingController packageNameController = TextEditingController();

  Random random = new Random();
  final prefs = getIt<SharedPreferenceHelper>();

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    generateDropDownItem();
    getLocationNameService();
    selectedDay = traveller_max_day;
    dayStreamController.sink.add(traveller_max_day);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    getLocationNameService();
    runTimer();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final userDayInstance =
        Provider.of<HiveOperationsProvider>(context, listen: false);
    Random random = new Random();

    return SafeArea(
      child: Scaffold(
        body: StreamBuilder(
          initialData: selectedDay,
          stream: dayStreamController.stream,
          builder: (context, snapshot) {
            return Container(
              height: screenHeight,
              width: screenWidth,
              child: Stack(
                children: [
                  FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      center: LatLng(28.234380912218974, 84.37345504760742),
                      bounds: LatLngBounds(
                        LatLng(27.451667, 85.401389),
                        LatLng(28.791389, 83.731389),
                      ),
                    ),
                    layers: [
                      new TileLayerOptions(
                        urlTemplate:
                            "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayerOptions(
                        markers: placeMarker(context),
                      )
                    ],
                  ),
                  Positioned(
                    top: 10,
                    left: 20,
                    child: ShowCurrentUserLocation(),
                  ),
                  Positioned(
                    top: screenHeight * 0.05,
                    child: LayTravellerDayHighLights(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      distanceTravelled: double.parse(
                          totalDistanceTravelledInSingleSelectedDay
                              .toStringAsFixed(3)),
                      userSelectedDay: userSelectedDay,
                      isLayTravellerHighlights: true,
                      placeItemInformationResponse: [],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: Column(
                      children: [
                        Text('Select Days'),
                        DropdownButton<int>(
                          value: selectedDay,
                          items: dropDownListItemLayTraveller.map((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            dayStreamController.sink.add(value!);
                            selectedDay = value;
                          },
                        ),
                      ],
                    ),
                  ),

                  ///jump to creator package list
                  Positioned(
                    right: screenWidth * 0.02,
                    bottom: screenHeight * 0.44,
                    child: GenericPositionedItemFromStartNextScreen(
                      icons: Icons.directions_bus,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CreatorPackageListScreen(),
                          ),
                        );
                      },
                    ),
                  ),

                  ///jump to lay lay traveler profile screen
                  Positioned(
                    right: screenWidth * 0.02,
                    bottom: screenHeight * 0.36,
                    child: GenericPositionedItemFromStartNextScreen(
                        icons: Icons.person,
                        onPressed: () {
                          bool? isPackageCompleted =
                              prefs.getCurrentPackageCompletionStatus();

                          switch (isPackageCompleted) {
                            case true:
                              jumpToLayTravelerProfileScreen(context, [],
                                  isPackageCompleted: true);
                              break;

                            case false:
                              uploadCheckerInstanceItinerary(context, random);
                              break;

                            default:
                              jumpToLayTravelerProfileScreen(
                                  context, itineraryPackageItemsInstance);
                          }
                        }),
                  ),

                  ///itinerary close operation
                  Positioned(
                    right: screenWidth * 0.02,
                    bottom: screenHeight * 0.28,
                    child: GenericPositionedItemFromStartNextScreen(
                      icons: Icons.logout,
                      onPressed: () => popUpItineraryCloseDialogOption(
                          context, "Itinerary Creation"),
                    ),
                  ),

                  ///jump to  lay traveler itinerary show
                  Positioned(
                    right: screenWidth * 0.02,
                    bottom: screenHeight * 0.20,
                    child: GenericPositionedItemFromStartNextScreen(
                      icons: Icons.navigate_next,
                      onPressed: () => jumpToLayTravelerItineraryOnMapScreen(
                          context, userDayInstance.layTravellerData),
                    ),
                  ),

                  ///code to upload package
                  Positioned(
                    right: screenWidth * 0.02,
                    bottom: screenHeight * 0.12,
                    child: GenericPositionedItemFromStartNextScreen(
                      icons: Icons.upload_sharp,
                      onPressed: () => alertDialogOptionChoosePackageCompletion(
                          context,
                          userDayInstance.layTravellerData,
                          selectedDay,
                          dropDownListItemLayTraveller,
                          packageNameController,
                          random,
                          itineraryPackageItemsInstance),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: screenHeight * 0.01,
                    child: InkWell(
                      onTap: () {
                        jumpToLayTravellerMapStarter(
                            context, networkConnectionBloc);
                      },
                      child: GISButtonSaveOrUpload(
                        context: context,
                        btn_text: "Start Next",
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void generateDropDownItem() {
    for (int i = 0; i < traveller_max_day; i++) {
      dropDownListItemLayTraveller.add(i + 1);
    }
  }

  Marker addNewMarker(BuildContext context, String locationName,
      List<Uint8List> imageList, double latitude, double longitude) {
    Marker marker;
    marker = new Marker(
      point: new LatLng(latitude, longitude),
      builder: (context) => new Container(
        child: IconButton(
          hoverColor: Colors.red,
          icon: Icon(Icons.location_on),
          color: Colors.red,
          iconSize: 30,
          onPressed: () {
            AlertDialogActionWindowHolder().getUserPostedInformation(
                context, locationName, imageList, latitude, longitude);
          },
        ),
      ),
      width: 35.0,
      height: 35.0,
      anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    );
    return marker;
  }

  List<Marker> placeMarker(BuildContext context) {
    List<Marker> markers = [];

    var data = context.read<HiveOperationsProvider>();
    if (data.isLayTravellerHiveBoxHasData) {
      //storing all the data stored in lay traveller data
      itineraryPackageItemsInstance = data.layTravellerData;

      userSelectedDay =
          data.layTravellerData.where((e) => e.day == selectedDay).toList();
      totalDistanceTravelledInSingleSelectedDay =
          calculatedTotalDistanceTravelled(userSelectedDay);

      userSelectedDay.forEach((item) {
        Marker marker = addNewMarker(
            context,
            item.locationName,
            item.unitImagesFileList!,
            item.geoLocation.points.latitude,
            item.geoLocation.points.longitude);
        markers.add(marker);
      });
    } else {
      print('No lay traveller data');
    }
    return markers;
  }

  getLocationNameService() async{
   await Provider.of<LocationServiceProvider>(context, listen: false)
        .getUserLocationInfo();
  }

  void runTimer() {
    _timer = Timer(Duration(seconds: 3), () {
      var geo_points =
          context.read<LocationServiceProvider>().locationGeoPoints;
      if (geo_points != null) {
        var geoPointListStyle = (geo_points.split(','));
        var latitude = double.parse(geoPointListStyle[0]);
        var longitude = double.parse(geoPointListStyle[1]);
        setState(() => points.add(new LatLng(latitude, longitude)));
        _mapController.move(
          new LatLng(
            points[0].latitude,
            points[0].longitude,
          ),
          LayTravellerConstant.zoomValueLevel,
        );
      }
    });
  }

  //upload checker instance
  void uploadCheckerInstanceItinerary(
      BuildContext context, Random random) async {
    //shared preference
    final prefs = getIt<SharedPreferenceHelper>();

    final maxUploadedDay = prefs.getMaxDayUploadValue();
    final maxDayUploadValueLength = prefs.getMaxDayUploadValueDataLength();
    final packageName = prefs.getItineraryPackageForItineraryUpload();

    final localStoredInformList =
        List<LocalStoreInformation>.from(itineraryPackageItemsInstance);
    final itineraryDays = localStoredInformList.map((e) => e.day).toList()
      ..sort();

    final totalDaysForMaxDay = localStoredInformList
        .where((e) => e.day == itineraryDays.last)
        .toList();

    final isAlreadyExistPackage = await checkIfPackageAlreadyExists(
        context, packageName!, itineraryPackageItemsInstance);

    if (!isAlreadyExistPackage) {
      if (maxUploadedDay == itineraryDays.last &&
          maxDayUploadValueLength == totalDaysForMaxDay.length) {
        popUpItineraryActionOrOperationDialogOption(
          context,
          'save',
          () async {
            await insertPackageToStorage(
                context, packageName, random, itineraryPackageItemsInstance);
          },
        );
      } else {
        jumpToLayTravelerProfileScreen(context, itineraryPackageItemsInstance);
      }
    } else {
      jumpToLayTravelerProfileScreen(context, []);
    }
  }
}
