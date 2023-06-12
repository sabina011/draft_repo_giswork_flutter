import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class GenericFlutterMapComponent extends StatefulWidget {
  final List<LatLng> latLng;
  final MapController mapController;

  const GenericFlutterMapComponent({
    Key? key,
    required this.latLng,
    required this.mapController,
  }) : super(key: key);

  @override
  State<GenericFlutterMapComponent> createState() =>
      _GenericFlutterMapComponentState();
}

class _GenericFlutterMapComponentState
    extends State<GenericFlutterMapComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: widget.mapController,
      options: MapOptions(
        onLongPress: (position, latLng) {},
        center: LatLng(28.234380912218974, 84.37345504760742),
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
          polylineCulling: true,
          polylines: [],
        ),
        new MarkerLayerOptions(
          markers: [],
        ),
      ],
    );
  }
}
