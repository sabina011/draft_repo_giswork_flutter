import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/resources/styles/app_style.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';

import '../../application/injectable/injection.dart';
import '../../application/upload_package/choose_package_upload_option.dart';
import '../../model/hive_model/local_store_model.dart';
import '../../screens/lay_traveller/profile/lay_traveler_profile_screen.dart';
import 'itinerary_dialog_option.dart';

enum PackageStatus { TRUE, FALSE }

PackageStatus _status = PackageStatus.TRUE;

void alertDialogOptionChoosePackageCompletion(
    BuildContext context,
    List<LocalStoreInformation> userSingleDayList,
    int selected,
    List<int> dropDownListItemLayTraveller,
    TextEditingController packageNameController,
    Random random,
    List<LocalStoreInformation>? itineraryPackageItemsInstance) {
  final prefs = getIt<SharedPreferenceHelper>();

  showDialog(
    context: context,
    barrierDismissible: false, //user must tab
    builder: (BuildContext context) {
      return StatefulBuilder(builder: (context, setState) {
        final focusNode = FocusNode();
        return AlertDialog(
          title: Text(
            'Is current package completed?',
            style: AppTextStyle.textAlertTitleTextStyle,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text('Yes'),
                leading: Radio(
                  value: PackageStatus.TRUE,
                  groupValue: _status,
                  onChanged: (value) {
                    setState(() {
                      _status = value! as PackageStatus;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('No'),
                leading: Radio(
                  value: PackageStatus.FALSE,
                  groupValue: _status,
                  onChanged: (value) {
                    setState(() {
                      _status = value as PackageStatus;
                    });
                  },
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => popScreen(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                //parse the string [true or false] to bool
                bool packageStatus = (_status.name.toLowerCase() == "true");

                //save the current status of the package for the
                // current itinerary package.
                prefs.setCurrentPackageCompletionStatus(
                    packageCompletedStatus: packageStatus);

                if (packageStatus) {
                  final packageName =
                      prefs.getItineraryPackageForItineraryUpload();
                  popUpItineraryActionOrOperationDialogOption(
                    context,
                    'save',
                    () async {
                      await insertPackageToStorage(context, packageName, random,
                          itineraryPackageItemsInstance);
                    },
                  );
                }

                popScreen(context);
                GisUploadPackageOptionDialog(
                    context,
                    userSingleDayList,
                    selected,
                    dropDownListItemLayTraveller,
                    packageNameController);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      });
    },
  );
}
