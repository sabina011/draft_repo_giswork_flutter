import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/application/place_information/bloc/place_information_bloc.dart';

import '../../../widgets/widget_bloc_state.dart';
import 'widgets/users_associated_with_place_information.dart';

class ItineraryUserProfileListScreen extends StatefulWidget {
  final GetPlaceInformationBloc getPlaceInformationBloc;
  final String getPlaceName;

  const ItineraryUserProfileListScreen(
      {Key? key,
      required this.getPlaceInformationBloc,
      required this.getPlaceName})
      : super(key: key);

  @override
  State<ItineraryUserProfileListScreen> createState() =>
      _ItineraryUserProfileListScreenState();
}

class _ItineraryUserProfileListScreenState
    extends State<ItineraryUserProfileListScreen> {
  @override
  void initState() {
    widget.getPlaceInformationBloc.add(
      GetPlaceInformationEvent.getPlaceInformation(
        place_name: widget.getPlaceName,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => widget.getPlaceInformationBloc,
          child: BlocBuilder<GetPlaceInformationBloc, GetPlaceInformationState>(
            builder: (context, state) {
              return state.maybeWhen(
                  initial: () => SizedBox(),
                  loading: () => buildLoading(context),
                  success: (placeInfoItemResponse) {
                    List<int> users = [];
                    for (int i = 0; i < placeInfoItemResponse.length; i++) {
                      int userId = placeInfoItemResponse[i].userId;
                      !users.contains(userId) ? users.add(userId):null;
                    }

                    return UserAssociatedPlaceInformationBuilder(
                      users: users,
                      placeInfoItemResponse: placeInfoItemResponse,
                    );
                  },
                  error: (errMessage) => buildError(context, errMessage),
                  orElse: () => SizedBox());
            },
          ),
        ),
      ),
    );
  }
}
