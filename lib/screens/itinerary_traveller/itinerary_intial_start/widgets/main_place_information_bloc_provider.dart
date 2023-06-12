import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/main_place_information/bloc/main_place_information_bloc.dart';
import '../../../../widgets/widget_bloc_state.dart';
import '../../widgets/choose_location_to_start.dart';

class MainPlaceInformationBlocProvider extends StatelessWidget {
  final bool isVisibleDropDown;
  final String dropDownSelectedPlaceName;
  final GetMainPlaceInformationBloc getMainPlaceInformationBloc;
  final Function refreshOnPlaceItemChanged;
  final Function refreshOnDropDownShown;

  MainPlaceInformationBlocProvider({
    Key? key,
    required this.isVisibleDropDown,
    required this.dropDownSelectedPlaceName,
    required this.getMainPlaceInformationBloc,
    required this.refreshOnPlaceItemChanged,
    required this.refreshOnDropDownShown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getMainPlaceInformationBloc,
      child: BlocBuilder<GetMainPlaceInformationBloc,
          GetMainPlaceInformationState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => SizedBox(),
            loading: () => buildLoading(context),
            error: (errMessage) => buildError(context, errMessage),
            success: (listItem) {
              String selectedPlace ='';
              List<String> dropDownItemsForChoosingMainPlace = [];
              if(listItem.isNotEmpty){
                selectedPlace = listItem[0].mainPlaceName.toUpperCase();
                for (int i = 0; i < listItem.length; i++) {
                  String place = listItem[i].mainPlaceName.toUpperCase();
                  dropDownItemsForChoosingMainPlace.add(place);
                }
              }

              Future.delayed(Duration(seconds: 2), () {
                refreshOnDropDownShown(true);
              });

              if (isVisibleDropDown) {
                return ChooseLocationToStart(
                  selectedChar: dropDownSelectedPlaceName.isEmpty
                      ? selectedPlace
                      : dropDownSelectedPlaceName.toUpperCase(),
                  dropDownItemsForChoosingMainPlace:
                      dropDownItemsForChoosingMainPlace,
                  onChanged: (String? value) {
                    selectedPlace = value!;
                    refreshOnPlaceItemChanged(selectedPlace);
                  },
                );
              } else {
                return SizedBox();
              }
            },
            orElse: () => SizedBox(),
            // ...
          );
        },
      ),
    );
  }
}
