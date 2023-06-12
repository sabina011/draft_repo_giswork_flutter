import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/application/itinerary_show/itinerary_show_bloc.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_response_items.dart';
import 'package:myapp/widgets/widget.dart';

import '../../../config/routes/routes_handler.dart';
import '../../../utils/functions/function_flutter_toast.dart';
import '../../../widgets/widget_bloc_state.dart';
import '../../lay_traveller/wigets/text_styles.dart';

class ItineraryShowPackage extends StatefulWidget {
  final GetItineraryShowBloc getItineraryShowBloc;

  const ItineraryShowPackage({Key? key, required this.getItineraryShowBloc})
      : super(key: key);

  @override
  State<ItineraryShowPackage> createState() => _ItineraryShowPackageState();
}

class _ItineraryShowPackageState extends State<ItineraryShowPackage> {
  List<Map<String, dynamic>> mainPlaceItems = [];
  List<ItineraryShowItemsResponse> itineraryResponseItems = [];

  @override
  void initState() {
    widget.getItineraryShowBloc.add(
      GetItineraryShowEvent.getItinerary(
        packageName: "Kathmandu",
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocProvider(
        create: (context) => widget.getItineraryShowBloc,
        child: BlocListener<GetItineraryShowBloc, GetItineraryShowState>(
          listener: (BuildContext context, state) {
            state.when(
              initial: () {},
              loading: () {},
              error: (errMsg) => GISFlutterToast(context, errMsg),
              success: (data) =>
                  filteredAndShowData(context, data, mainPlaceItems),
            );
          },
          child: BlocBuilder<GetItineraryShowBloc, GetItineraryShowState>(
            builder: (context, state) {
              return state.maybeWhen(
                  initial: () => SizedBox(),
                  loading: () => buildLoading(context),
                  success: (itineraryShowItemResponse) {
                    return ListItemBuilderSuccessLoaded(
                      itineraryShowItemsResponse: itineraryShowItemResponse,
                    );
                  },
                  error: (errMessage) => buildError(context, errMessage),
                  orElse: () => SizedBox());
            },
          ),
        ),
      ),
    ));
  }
}

class ListItemBuilderSuccessLoaded extends StatelessWidget {
  final List<ItineraryShowItemsResponse> itineraryShowItemsResponse;

  const ListItemBuilderSuccessLoaded({
    Key? key,
    required this.itineraryShowItemsResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itineraryShowItemsResponse.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: GISDynamicText(
            isHeadings: true,
            text: itineraryShowItemsResponse[index].mainPlaceId.toString(),
          ),
          title: Text(
            itineraryShowItemsResponse[index].mainPlaceName,
            style: mainPlaceTextStyle(),
          ),
          subtitle: Text(
            'Total place travelled: ${itineraryShowItemsResponse[index].placeCount}',
            style: totalPlaceTextStyle(),
          ),
        );
      },
    );
  }
}

void filteredAndShowData(BuildContext context,
    List<ItineraryShowItemsResponse> data, var mainPlaceItems) {
  for (int i = 0; i < data.length; i++) {
    List<int> dayList =
        data[i].itineraryPlaceInformationResponse.map((e) => e.day).toList();
    Set<int> dayFilteredList = Set.from(dayList);
    dayFilteredList.forEach((item) {
      List<ItineraryPlaceInformationResponse> dataItems = data[i]
          .itineraryPlaceInformationResponse
          .where((e) => e.day == item)
          .toList();
      mainPlaceItems.add({
        'day': item,
        'main_place': data[i].mainPlaceName,
        'data': dataItems
      });
    });
  }

  ///sorting the day wise in mainPlaceItems list
  mainPlaceItems.sort((a, b) {
    return a['day'].toString().compareTo(b['day'].toString());
  });

  ///itinerary list map show
  // jumpToItineraryListItemScreen(context, mainPlaceItems);

  ///itinerary show map option.
  jumpToItineraryShowScreenOnMap(context, data);
}
