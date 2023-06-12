import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';

import '../../../../application/injectable/injection.dart';
import '../../../../application/upload_package/upload_package_data_conversion.dart';
import '../../../../model/hive_model/local_store_model.dart';
import '../../../../utils/functions/app_size.dart';
import '../../../../utils/functions/special/already_exists_package_checker_func.dart';
import 'lay_traveler_utils.dart';

class SingleItemShowItineraryInformationToStore extends StatefulWidget {
  final List<LocalStoreInformation> userDayItemResponse;

  SingleItemShowItineraryInformationToStore({
    Key? key,
    required this.userDayItemResponse,
  }) : super(key: key);

  @override
  State<SingleItemShowItineraryInformationToStore> createState() =>
      _SingleItemShowItineraryInformationToStoreState();
}

class _SingleItemShowItineraryInformationToStoreState
    extends State<SingleItemShowItineraryInformationToStore> {
  TextEditingController packageNameController = new TextEditingController();
  final prefs = getIt<SharedPreferenceHelper>();
  bool isPackageItemExisted = false;

  @override
  void initState() {
    super.initState();
    checkItineraryExist();
  }

  void checkItineraryExist() async {
    isPackageItemExisted = await checkIfPackageAlreadyExists(
        context, packageNameController.text, widget.userDayItemResponse);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = getDeviceScreenSize(context);
    Random random = new Random(0);
    //bool? isRecentPackSaved = prefs.getRecentPackageSaveStatus();

    List<int> getPackageDays =
        widget.userDayItemResponse.map((e) => e.day).toList();
    getPackageDays.sort();
    int maxDays = getPackageDays.last;

    final calculatedDistance =
        calculatedTotalDistanceTravelled(widget.userDayItemResponse)
            .toStringAsFixed(2);

    return !isPackageItemExisted
        ? SharedItineraryItemBuilder(
            isCurrentPackage: true,
            maxNumberOfDays: maxDays,
            calculatedDistanceAsFixedString: calculatedDistance,
            localStoredItemInformation: widget.userDayItemResponse,
            random: random,
            packageNameController: packageNameController,
          )
        : Container(
            height: size.height * 0.1,
            width: size.width,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text('Package Already Saved!')),
              ),
            ),
          );
  }
}
