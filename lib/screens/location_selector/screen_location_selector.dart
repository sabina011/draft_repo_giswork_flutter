import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';
import 'package:myapp/utils/functions/functions_alert_dialog.dart';
import 'package:myapp/widgets/widget_form_field.dart';
import 'package:myapp/widgets/widget_gis_button.dart';

class LocationSelectorScreen extends StatefulWidget {
  const LocationSelectorScreen({Key? key}) : super(key: key);

  @override
  State<LocationSelectorScreen> createState() => _LocationSelectorScreenState();
}

class _LocationSelectorScreenState extends State<LocationSelectorScreen> {
  TextEditingController _placeSearchController = new TextEditingController();
  MapController _mapController = new MapController();

  var points = <LatLng>[
    new LatLng(27.7172, 85.324),
  ];

  getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    return position;
  }

  buildMap() {
    getLocation().then((response) {
      if (response.isSuccessful) {
        response.listen((Position position) {
          _mapController.move(
            new LatLng(position.latitude, position.longitude),
            20.0,
          );
        });
      }
    });
  }

  @override
  void dispose() {
    _placeSearchController.dispose();
    super.dispose();
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
              FlutterMap(
                mapController: _mapController,
                options: MapOptions(
                  onLongPress: (position, latLng) {
                    setState(
                      () => points.add(
                        LatLng(
                          latLng.latitude,
                          latLng.longitude,
                        ),
                      ),
                    );
                  },
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
                  new PolylineLayerOptions(
                    polylines: [
                      new Polyline(
                        points: points,
                        strokeWidth: 6.0,
                        color: Colors.green,
                        isDotted: true,
                      )
                    ],
                  ),
                  new MarkerLayerOptions(
                    markers: getMarker(),
                  ),
                ],
              ),
              Positioned(
                top: 10,
                left: 20,
                right: 20,
                child: LocationSearchFormField(
                  hintText: "Search for place_posts",
                  searchPlaceTextController: _placeSearchController,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () {},
                  child: GISButtonSaveOrUpload(
                    context: context,
                    btn_text: 'Add Route Package',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Marker> getMarker() {
    List<Marker> markers = [];
    if (points.isNotEmpty) {
      for (var x in points) {
        var marker = new Marker(
          point: LatLng(x.latitude, x.longitude),
          builder: (context) => new Container(
            child: IconButton(
              hoverColor: Colors.red,
              icon: Icon(Icons.location_on_sharp),
              color: Colors.red,
              iconSize: 30,
              onPressed: () {
                GISAlertDialogRoute(
                  context,
                  "Route Point",
                  "You can add information to the place_posts.",
                  "Want to delete route from the package route ?",
                  "Delete route",
                  () {
                    setState(() => points.remove(x));
                    popScreen(context);
                  },
                );
              },
            ),
          ),
          width: 35.0,
          height: 35.0,
          anchorPos: AnchorPos.exactly(Anchor(0, 0)),
        );
        markers.add(marker);
      }
    }
    return markers;
  }
}
