import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/place_information/bloc/place_information_bloc.dart';
import '../../../widgets/widget_bloc_state.dart';
import '../itinerary_list/itinerary_story_screen.dart';

class ItineraryStoryBuilder extends StatelessWidget {
  final GetPlaceInformationBloc getPlaceInformationBloc;

  const ItineraryStoryBuilder({
    Key? key,
    required this.getPlaceInformationBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocProvider(
        create: (context) => getPlaceInformationBloc,
        child: BlocBuilder<GetPlaceInformationBloc, GetPlaceInformationState>(
          builder: (context, state) {
            return state.maybeWhen(
                initial: () => SizedBox(),
                loading: () => buildLoading(context),
                success: (placeInformationResponse) => ItineraryStoryScreen(
                      getPlaceInformationItemResponse: placeInformationResponse,
                    ),
                error: (errMessage) => buildError(
                      context,
                      errMessage,
                    ),
                orElse: () => SizedBox());
          },
        ),
      ),
    );
  }
}
