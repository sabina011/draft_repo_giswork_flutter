import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/application/lay_traveller/insert_data.dart';
import 'package:myapp/screens/customize/widgets/customize_image_videos_widgets.dart';
import 'package:myapp/screens/lay_traveller/wigets/inputField.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/utils/services/native/media/media_file_selector.dart';
import 'package:myapp/widgets/widget.dart';
import 'package:myapp/widgets/widget_gis_button.dart';
import 'package:provider/provider.dart';

import '../../application/provider/location_service_provider.dart';
import '../customize/customize_constants.dart';

class LayTravellerInformation extends StatefulWidget {
  const LayTravellerInformation({Key? key});

  @override
  _LayTravellerInformationState createState() =>
      _LayTravellerInformationState();
}

class _LayTravellerInformationState extends State<LayTravellerInformation> {
  var points = <LatLng>[];
  List<XFile>? image;
  List<File>? videos;
  bool check_image = false;
  bool check_video = false;

  Map<String, dynamic> detailsMap = new Map<String, dynamic>();
  final _inputGeographyController = new TextEditingController();
  final _inputHotelsAndResturantController = new TextEditingController();
  final _inputTransportationMediumController = new TextEditingController();
  final _inputRouteInformationController = new TextEditingController();
  final _inputSeasonalInformationController = new TextEditingController();
  final _inputPlaceController = new TextEditingController();

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  getLocationNameService() {
    context.read<LocationServiceProvider>().getUserLocationInfo();
  }

  @override
  void initState() {
    getLocationNameService();
    super.initState();
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
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  Center(
                    child: GISDynamicText(
                      text: 'Location Information',
                      isHeadings: true,
                    ),
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight * 2,
                  ),
                  GISDynamicText(
                    text: 'Hotels and Resturants',
                    isHeadings: true,
                  ),
                  GenericInputBox(
                    inputController: _inputHotelsAndResturantController,
                    hintText: "",
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Geographical Information',
                    isHeadings: true,
                  ),
                  GenericInputBox(
                    inputController: _inputGeographyController,
                    hintText: " ",
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Transportation  Medium',
                    isHeadings: true,
                  ),
                  GenericInputBox(
                    inputController: _inputTransportationMediumController,
                    hintText: " ",
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Place Information',
                    isHeadings: true,
                  ),
                  GenericInputBox(
                    inputController: _inputPlaceController,
                    hintText: _inputPlaceController.text =
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
                  GenericInputBox(
                    inputController: _inputSeasonalInformationController,
                    hintText: " ",
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight,
                  ),
                  GISDynamicText(
                    text: 'Route Information',
                    isHeadings: true,
                  ),
                  GenericInputBox(
                    inputController: _inputRouteInformationController,
                    hintText: " ",
                  ),
                  SizedBox(
                    height: CustomizeGisConstant.sizedBoxHeight * 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        bool hasImage =
                            context.read<FileDataProvider>().check_image;
                        if (hasImage) {
                          loadContentToControllers();
                          //insert data to hive
                          layTravellerInsertData(context, detailsMap);
                        } else {
                          GISFlutterToast(context, "Please insert images");
                        }
                      }
                    },
                    child: GISButtonSaveOrUpload(
                      btn_text: 'Save to phone',
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

  void loadContentToControllers() {
    detailsMap["hotelsAndRestaurants"] =
        _inputHotelsAndResturantController.text;
    detailsMap["transportationMedium"] =
        _inputTransportationMediumController.text;
    detailsMap["locationName"] = _inputPlaceController.text;
    detailsMap["routeInformation"] = _inputRouteInformationController.text;
    detailsMap["seasonalInformation"] =
        _inputSeasonalInformationController.text;
    detailsMap["geographicalInfo"] = _inputGeographyController.text;
  }
}
