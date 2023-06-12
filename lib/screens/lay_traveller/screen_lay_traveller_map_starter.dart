import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/application/connection/bloc/connection_bloc.dart';
import 'package:myapp/application/lay_traveller/insert_data.dart';
import 'package:myapp/application/provider/location_service_provider.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/screens/lay_traveller/constants.dart';
import 'package:myapp/screens/lay_traveller/wigets/image_photos_view_localstore_widget.dart';
import 'package:myapp/screens/lay_traveller/wigets/image_video_icon_view.dart';
import 'package:myapp/screens/lay_traveller/wigets/show_current_user_location.dart';
import 'package:myapp/screens/lay_traveller/wigets/travelled_place_list_widget.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/utils/services/local_storage/hive/hive_store_provider.dart';
import 'package:myapp/utils/services/native/media/media_file_selector.dart';
import 'package:myapp/widgets/widget_gis_button.dart';
import 'package:provider/provider.dart';

import '../../model/hive_model/local_store_model.dart';
import 'wigets/lay_screen_map_component.dart';

class LayTravellerMapStarter extends StatefulWidget {
  final NetworkConnectionBloc networkConnectionBloc;

  const LayTravellerMapStarter({
    Key? key,
    required this.networkConnectionBloc,
  }) : super(key: key);

  @override
  State<LayTravellerMapStarter> createState() => _LayTravellerMapStarterState();
}

class _LayTravellerMapStarterState extends State<LayTravellerMapStarter> {
  final List<LatLng> points = [];
  late MapController _mapController;

  @override
  void didChangeDependencies() {
    getLocationNameService();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    _mapController = MapController();
    getVisitedPlacesHiveCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              LayScreenMapComponent(
                points: points,
                mapController: _mapController,
              ),
              Positioned(
                left: size.width * 0.8,
                top: size.height * 0.2,
                right: 0,
                child: LayTravellerImageVideoIconView(
                  size: size,
                  onCameraOptionPressed: () =>
                      context.read<FileDataProvider>().pickImageByCamera(),
                  onVideoOptionPressed: () => () {},
                ),
              ),
              Positioned(
                left: size.width * 0.05,
                right: size.width * 0.02,
                top: size.height * 0.02,
                child: ShowCurrentUserLocationWithCloseOption(),
              ),
              Positioned(
                right: 0,
                top: size.height * 0.07,
                left: size.width * 0.05,
                child: LayTravellerVisitedPlaces(),
              ),
              Positioned(
                right: 0,
                bottom: size.height * 0.1,
                left: size.width * 0.05,
                child: LayTravellerImageAndPhotosView(),
              ),
              context.watch<FileDataProvider>().imageList!.isNotEmpty
                  ? Positioned(
                      left: 0,
                      right: 0,
                      bottom: size.height * 0.01,
                      child: InkWell(
                        onTap: () {
                          getLocationNameService();
                          checkLocationAndImageParam(context);
                        },
                        child: GISButtonSaveOrUpload(
                          context: context,
                          btn_text: 'Add data',
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }


  getLocationNameService() async{
    await Provider.of<LocationServiceProvider>(context, listen: false)
        .getUserLocationInfo();
  }


  void getVisitedPlacesHiveCall() {
    Future.delayed(Duration(seconds: 2), () {
      Provider.of<HiveOperationsProvider>(context, listen: false)
          .localUserDayHiveCall(userDayHiveBoxName);
    });
  }

  void runTimer() {
    Future.delayed(Duration(seconds: 2), () {
      var geo_points =
          context.read<LocationServiceProvider>().locationGeoPoints;
      if (geo_points != null) {
        var geoPointListStyle = (geo_points.split(','));
        var latitude = double.parse(geoPointListStyle[0]);
        var longitude = double.parse(geoPointListStyle[1]);
        setState(() => points.add(new LatLng(
              latitude,
              longitude,
            )));
        _mapController!.move(
          new LatLng(
            points[0].latitude,
            points[0].longitude,
          ),
          LayTravellerConstant.zoomValueLevel,
        );
      }
    });
  }
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
    List<LocalStoreInformation> conditionalDay =
        userDay.where((e) => e.day < 5).toList();
    conditionalDay.forEach((item) {
      widgets.add(
        textContainer(item.locationName),
      );
    });
  }

  return widgets;
}

void checkLocationAndImageParam(BuildContext context) {
  bool hasImage = context.read<FileDataProvider>().check_image;
  if (!hasImage) {
    return GISFlutterToast(context, "Please insert image!");
  } else {
    insertLayUserData(context);
  }
}

///if user should get the proper location place name this code should be called:
//BlocProvider<NetworkConnectionBloc>(
//             create: (context) => widget.networkConnectionBloc
//               ..add(NetworkConnectionEvent.networkConnectionObserve()),
//             child: BlocListener<NetworkConnectionBloc, NetworkConnectionState>(
//               listener: (context, state) {
//                 state.maybeWhen(
//                   initial: () =>
//                       GISFlutterToast(context, "Checking internet please wait"),
//                   failure: () => GISFlutterToast(
//                       context, "Please check your connection, No Internet!"),
//                   success: () => () {},
//                   orElse: () => GISFlutterToast(context, "Ideal"),
//                 );
//               },
//               child: Container(
//                 height: size.height,
//                 width: size.width,
//                 child: Stack(
//                   children: [
//                     LayScreenMapComponent(
//                       points: points,
//                       mapController: _mapController,
//                     ),
//                     Positioned(
//                       left: size.width * 0.8,
//                       top: size.height * 0.2,
//                       right: 0,
//                       child: LayTravellerImageVideoIconView(
//                         size: size,
//                         onCameraOptionPressed: () => context
//                             .read<FileDataProvider>()
//                             .pickImageByCamera(),
//                         onVideoOptionPressed: () => () {},
//                       ),
//                     ),
//                     Positioned(
//                       left: size.width * 0.05,
//                       right: size.width * 0.02,
//                       top: size.height * 0.02,
//                       child: ShowCurrentUserLocationWithCloseOption(),
//                     ),
//                     Positioned(
//                       right: 0,
//                       top: size.height * 0.07,
//                       left: size.width * 0.05,
//                       child: LayTravellerVisitedPlaces(),
//                     ),
//                     Positioned(
//                       right: 0,
//                       bottom: size.height * 0.1,
//                       left: size.width * 0.05,
//                       child: LayTravellerImageAndPhotosView(),
//                     ),
//                     context.watch<FileDataProvider>().imageList!.isNotEmpty
//                         ? Positioned(
//                             left: 0,
//                             right: 0,
//                             bottom: size.height * 0.01,
//                             child: BlocBuilder<NetworkConnectionBloc,
//                                 NetworkConnectionState>(
//                               builder: (context, state) {
//                                 return state.maybeWhen(
//                                   failure: () => GISButtonSaveOrUpload(
//                                     context: context,
//                                     btn_text: 'Oops! No Internet',
//                                   ),
//                                   success: () => InkWell(
//                                     onTap: () {
//                                       getLocationNameService();
//                                       checkLocationAndImageParam(context);
//                                     },
//                                     child: GISButtonSaveOrUpload(
//                                       context: context,
//                                       btn_text: 'Add data',
//                                     ),
//                                   ),
//                                   orElse: () => SizedBox(),
//                                 );
//                               },
//                             ),
//                           )
//                         : SizedBox(),
//                   ],
//                 ),
//               ),
//             )),
