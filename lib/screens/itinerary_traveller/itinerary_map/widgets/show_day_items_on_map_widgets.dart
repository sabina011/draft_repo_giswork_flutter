import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../lay_traveller/wigets/show_places_info.dart';

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

