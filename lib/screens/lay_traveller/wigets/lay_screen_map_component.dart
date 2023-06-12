import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../utils/functions/function_flutter_toast.dart';

class LayScreenMapComponent extends StatelessWidget {
  final MapController mapController;
  final List<LatLng> points;

  const LayScreenMapComponent({
    Key? key,
    required this.mapController,
    required this.points,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        center: LatLng(
          28.234380912218974,
          84.37345504760742,
        ),
        bounds: LatLngBounds(
          LatLng(27.451667, 85.401389),
          LatLng(28.791389, 83.731389),
        ),
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
          markers: markerLayerOptionMarkers(),
        ),
      ],
    );
  }

  List<Marker> markerLayerOptionMarkers() {
    List<Marker> markers = [];
    if (points.isNotEmpty) {
      points.forEach((item) {
        Marker marker = addNewMarkerDetail(item);
        markers.add(marker);
      });
    }
    return markers;
  }

  Marker addNewMarkerDetail(LatLng latLngItem) {
    return new Marker(
      point: LatLng(latLngItem.latitude, latLngItem.longitude),
      builder: (context) => new Container(
        child: IconButton(
          hoverColor: Colors.red,
          icon: Icon(Icons.location_on_sharp),
          color: Colors.red,
          iconSize: 30,
          onPressed: () {
            GISFlutterToast(context, "Marker clicked");
          },
        ),
      ),
      width: 35.0,
      height: 35.0,
      anchorPos: AnchorPos.exactly(Anchor(0, 0)),
    );
  }
}
