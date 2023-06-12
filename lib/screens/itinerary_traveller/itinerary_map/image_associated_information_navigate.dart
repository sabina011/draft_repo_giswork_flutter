import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_geo_points_response.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';

import '../../../constant/app_const.dart';
import '../../lay_traveller/wigets/show_places_info.dart';
import '../../lay_traveller/wigets/text_styles.dart';

class ImageAssociatedInformationViewScreen extends StatefulWidget {
  final int day;
  final int postInformationId;
  final GeoPointsResponse geoPointsResponse;
  final String placeName;

  ImageAssociatedInformationViewScreen({
    Key? key,
    required this.day,
    required this.postInformationId,
    required this.geoPointsResponse,
    required this.placeName,
  }) : super(key: key);

  @override
  State<ImageAssociatedInformationViewScreen> createState() =>
      _ImageAssociatedInformationViewScreenState();
}

class _ImageAssociatedInformationViewScreenState
    extends State<ImageAssociatedInformationViewScreen> {
  MapController _mapController = new MapController();

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 5), () {
      _mapController.move(
        LatLng(
          widget.geoPointsResponse.latitude,
          widget.geoPointsResponse.longitude,
        ),
        AppSharedConst.MAP_ZOOM_IN_LEVEL,
      );
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
              FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  center: LatLng(27.622098, 85.109003),
                  bounds: LatLngBounds(
                    LatLng(29.818604, 80.843462),
                    LatLng(26.722920, 88.099280),
                  ),
                ),
                layers: [
                  new TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                  ),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        point: new LatLng(
                          widget.geoPointsResponse.latitude,
                          widget.geoPointsResponse.longitude,
                        ),
                        builder: (context) => new Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(widget.placeName ,style: markerPlaceTextStyle(),),
                              IconButton(
                                hoverColor: Colors.red,
                                icon: Icon(Icons.location_on),
                                color: Colors.red,
                                iconSize: 30,
                                onPressed: () => alertDialogItemShowTask(
                                  context,
                                  widget.placeName,
                                  [],
                                  widget.geoPointsResponse.latitude,
                                  widget.geoPointsResponse.longitude,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width:size.width * 0.3,
                        height:size.height *0.1,
                        anchorPos: AnchorPos.exactly(Anchor(0, 0)),
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                top: 20,
                left: 20,
                child: SizedBox(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Day ${widget.day}',
                        style: mainPlaceTextStyle(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: IconButton(
                          onPressed: () => popScreen(context),
                          icon: Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void alertDialogItemShowTask(
  BuildContext context,
  String placeName,
  List data,
  double latitude,
  double longitude,
) {
  AlertDialogActionWindowHolder()
      .getUserPostedInformation(context, placeName, [], latitude, longitude);
}
