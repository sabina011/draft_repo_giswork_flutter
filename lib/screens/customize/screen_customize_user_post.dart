import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_item.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/screens/customize/widgets/customize_image_videos_widgets.dart';
import 'package:myapp/widgets/widget.dart';
import 'package:myapp/widgets/widget_form_field.dart';
import 'package:myapp/widgets/widget_gis_button.dart';
import 'package:provider/provider.dart';

import '../../application/custom_package/custom_package_authenticate_user_and_save.dart';
import '../../application/provider/location_service_provider.dart';
import 'customize_constants.dart';

class CustomizeSingleDayInformation extends StatefulWidget {
  final UserPostItem userPost;

  const CustomizeSingleDayInformation({
    required this.userPost,
  });

  @override
  _CustomizeSingleDayInformationState createState() =>
      _CustomizeSingleDayInformationState();
}

class _CustomizeSingleDayInformationState
    extends State<CustomizeSingleDayInformation> {
  var points = <LatLng>[];
  List<XFile>? image;
  List<File>? videos;
  bool check_image = false;
  bool check_video = false;
  late UserPostItem userPost;
  final _inputGeographyController = new TextEditingController();
  final _inputHotelsAndResturantController = new TextEditingController();
  final _inputTransportationMediumController = new TextEditingController();
  final _inputRouteInformationController = new TextEditingController();
  final _inputSeasonalInformationController = new TextEditingController();
  final _inputPlaceController = new TextEditingController();

  static final GlobalKey<FormState> _formKeyCustomize = GlobalKey<FormState>();

  @override
  void initState() {
    userPost = widget.userPost;
    Provider.of<LocationServiceProvider>(context, listen: false)
        .getUserLocationInfo();
    initializeTextEditingControllers();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _inputGeographyController.dispose();
    _inputHotelsAndResturantController.dispose();
    _inputTransportationMediumController.dispose();
    _inputRouteInformationController.dispose();
    _inputSeasonalInformationController.dispose();
    _inputPlaceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: Container(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            child: Form(
              key: _formKeyCustomize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Hotels and Resturants',
                    isHeadings: true,
                  ),
                  GisFormField(
                    controller: _inputHotelsAndResturantController,
                    initialValue: _inputHotelsAndResturantController.text,
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Geographical Information',
                    isHeadings: true,
                  ),
                  GisFormField(
                    controller: _inputGeographyController,
                    initialValue: _inputGeographyController.text,
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Transportation  Medium',
                    isHeadings: true,
                  ),
                  GisFormField(
                    controller: _inputTransportationMediumController,
                    initialValue: _inputTransportationMediumController.text,
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Place Information',
                    isHeadings: true,
                  ),
                  GisFormField(
                    controller: _inputPlaceController,
                    initialValue: _inputPlaceController.text =
                        context.watch<LocationServiceProvider>().locationName,
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  ImageVideoView(),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Seasonal Information',
                    isHeadings: true,
                  ),
                  GisFormField(
                    controller: _inputSeasonalInformationController,
                    initialValue: _inputSeasonalInformationController.text,
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Route Information',
                    isHeadings: true,
                  ),
                  GisFormField(
                    controller: _inputRouteInformationController,
                    initialValue: _inputRouteInformationController.text,
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight * 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKeyCustomize.currentState!.validate()) {
                        validateUserInputs(
                          context,
                          userPost,
                          UploadType.LocalUpload,
                          userDayInputs(),
                        );
                      }
                    },
                    child: GISButtonSaveOrUpload(
                      btn_text: 'Save to Phone',
                      context: context,
                    ),
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKeyCustomize.currentState!.validate()) {
                        validateUserInputs(
                          context,
                          userPost,
                          UploadType.ServerUpLoad,
                          userDayInputs(),
                        );
                      }
                    },
                    child: GISButtonSaveOrUpload(
                      btn_text: 'Upload',
                      context: context,
                    ),
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight * 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void initializeTextEditingControllers() {
    _inputGeographyController.text = userPost.geographical_info!;
    _inputHotelsAndResturantController.text = userPost.hotels_and_resturants!;
    _inputTransportationMediumController.text = userPost.transportation_medium!;
    _inputRouteInformationController.text = userPost.route_information!;
    _inputSeasonalInformationController.text = userPost.seasonal_information!;
  }

  LocalStoreInformation userDayInputs() {
    LocalStoreInformation userDay = LocalStoreInformation();
    userDay.seasonalInformation = _inputSeasonalInformationController.text;
    userDay.hotelsAndRestaurants = _inputHotelsAndResturantController.text;
    userDay.locationName = _inputPlaceController.text;
    userDay.routeInformation = _inputRouteInformationController.text;
    userDay.geographicalInfo = _inputGeographyController.text;
    userDay.transportationMedium = _inputTransportationMediumController.text;
    return userDay;
  }
}
