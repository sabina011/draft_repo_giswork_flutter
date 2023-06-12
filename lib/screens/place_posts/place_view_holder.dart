import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:myapp/application/places/bloc/place_new_bloc.dart';
import 'package:myapp/screens/place_posts/widgets.dart';
import 'package:myapp/widgets/widget_bloc_state.dart';

import '../../application/user_posts/bloc/user_post_new_bloc.dart';

class PlaceViewHolder extends StatefulWidget {
  final GetPlacesBloc getPlacesBloc;
  final UserPostBloc getUserPostBloc;

  PlaceViewHolder({
    required this.getPlacesBloc,
    required this.getUserPostBloc,
  });

  @override
  State<PlaceViewHolder> createState() => _PlaceViewHolderState();
}

class _PlaceViewHolderState extends State<PlaceViewHolder> {
  var point_data;
  bool check_value = false;
  bool selectedDayValueChanged = false;
  int selectedDayForUserPostEvent = 1;
  MapController controller = new MapController();
  static const EdgeInsets edgeInsetsPadding = EdgeInsets.all(16.0);

  getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    return position;
  }

  buildMap() {
    getLocation().then((response) {
      if (response.isSuccessful) {
        response.listen((Position position) {
          controller.move(
              new LatLng(position.latitude, position.longitude), 20.0);
        });
      }
    });
  }

  @override
  void initState() {
    widget.getPlacesBloc.add(
      GetPlacesEvent.getPlaces(
        place: 'Tilicho',
      ),
    );
    widget.getUserPostBloc.add(
      UserPostGetEvent.getUserPost(
        day: selectedDayForUserPostEvent,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: persistentFooterButtons(context),
      body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => widget.getPlacesBloc,
            ),
            BlocProvider(
              create: (context) => widget.getUserPostBloc,
            )
          ],
          child: BlocBuilder<GetPlacesBloc, GetPlaceState>(
            builder: (context, state) {
              return state.maybeWhen(
                  initial: () => SizedBox(),
                  loading: () => Center(child: CircularProgressIndicator()),
                  success: (placesList) => buildLoaded(context, placesList),
                  error: (errMsg) => buildError(context, errMsg),
                  orElse: () => SizedBox());
            },
          )),
    );
  }
}
