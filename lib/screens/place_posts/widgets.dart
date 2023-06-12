import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/application/injectable/injection.dart';
import 'package:myapp/application/places/places_methods.dart';
import 'package:myapp/application/user_posts/bloc/user_post_new_bloc.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/data/places/datastore/model/place_response.dart';
import 'package:provider/provider.dart';

import '../../application/provider/check_drop_down_value.dart';
import '../../data/user_post/datastore/model/user_post_item.dart';
import '../../utils/functions/function_reuse.dart';
import '../../widgets/widget_bloc_state.dart';
import 'place_post_constants.dart';

//single marker
addMarker(double lat, double long, String name, String imageUrl) {
  Marker marker;
  marker = new Marker(
    point: new LatLng(lat, long),
    builder: (context) => new Container(
      child: IconButton(
        hoverColor: Colors.green,
        icon: Icon(Icons.location_on),
        color: Colors.cyanAccent,
        iconSize: 45,
        onPressed: () {
          PlaceViewComponents().showPlacesContent(
              context, name, imageUrl, 'Dynamic short notes');
        },
      ),
    ),
    width: 35.0,
    height: 35.0,
    anchorPos: AnchorPos.exactly(Anchor(0, 0)),
  );
  return marker;
}

//list of markers
List<Marker> placeMarker(BuildContext context, List<PlacesResponse> places) {
  List<Marker> markers = [];
  if (places.length > 0) {
    print("Database data called");
    for (var x in places) {
      double latitude = x.getPlaceGeoLocations!.geoPointsUserPost!.latitude!;
      double longitude = x.getPlaceGeoLocations!.geoPointsUserPost!.longitude!;

      //return substring to remove ' /media/ '
      String imageRequiredUrl = x.image!.substring(7, x.image!.length);
      markers.add(addMarker(latitude, longitude, x.name!, imageRequiredUrl));
    }
  } else {
    print("Local data called:");
    for (var x in point) {
      markers.add(addMarker(
          x.latitude, x.longitude, 'Dyanmic Text', 'assets/images/chame.jpg'));
    }
  }
  return markers;
}

Widget buildDropWhenSuccess(BuildContext context, UserPostItem userPostItem) {
  List<int> listOfNumber = [];
  int maxDropDownNumber = userPostItem.max_day!;
  int i = 0;

  while (maxDropDownNumber > i) {
    i++;
    listOfNumber.add(i);
  }

  return Consumer<CheckDropDownValue>(
    builder: (context, dropDrown, child) => DropdownButton<int>(
      value:
          dropDrown.dayItemSelected ? dropDrown.selectedDay : listOfNumber[0],
      items: listOfNumber.map((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(
            value.toString(),
          ),
        );
      }).toList(),
      onChanged: (value) {
        dropDrown.selectListItem(value!);
        dropDrown.itemSelectedCheck();

        final bloc = getIt<UserPostBloc>();
        jumpToUserPostSelected(
          context,
          dropDrown.selectedDay,
          bloc,
        );
      },
    ),
  );
}

List<Widget> persistentFooterButtons(BuildContext context) {
  return <Widget>[
    new IconButton(
        icon: new Icon(Icons.timer),
        visualDensity: VisualDensity.standard,
        hoverColor: Colors.cyan,
        onPressed: () {
          PlaceViewComponents().seasonalInfromation(context);
        }),
    new IconButton(
        icon: new Icon(Icons.directions_bus),
        visualDensity: VisualDensity.standard,
        hoverColor: Colors.cyan,
        onPressed: () {
          PlaceViewComponents().showPlacesContent(
            context,
            "Besishar",
            "assets/images/chame.jpg",
            "This is short notes.",
          );
        }),
    new IconButton(
      icon: new Icon(Icons.map),
      visualDensity: VisualDensity.standard,
      hoverColor: Colors.cyan,
      onPressed: () {},
    )
  ];
}

Widget buildLoaded(BuildContext context, List<PlacesResponse> places) {
  return Container(
    child: Stack(
      children: <Widget>[
        FlutterMap(
          //mapController: controller,
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
                subdomains: ['a', 'b', 'c']),
            new PolylineLayerOptions(polylines: [
              new Polyline(
                points: point,
                strokeWidth: 3.0,
                color: Colors.green,
                isDotted: true,
              )
            ]),
            new MarkerLayerOptions(
              //iterate to mark the places
              markers: placeMarker(context, places),
            ),
          ],
        ),
        Positioned(
          left: 20.0,
          bottom: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                // 'Dynamic Text',
                "Tilicho",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 20.0,
          top: 50.0,
          child: Container(
            height: 40,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Choose days',
                    style: styleDayWiseContainer(),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  BlocBuilder<UserPostBloc, UserPostState>(
                      builder: (context, state) {
                    return state.when(
                      initial: () => SizedBox(),
                      loading: () => Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (userPostItems) =>
                          buildDropWhenSuccess(context, userPostItems[0]),
                      error: (err) => buildError(context, err),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
    // ...
  );
}
