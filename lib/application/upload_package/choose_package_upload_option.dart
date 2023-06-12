import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/resources/dimensions/app_dimensions.dart';
import 'package:myapp/resources/styles/app_style.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';

import '../../model/hive_model/local_store_model.dart';
import '../../widgets/widget.dart';
import '../injectable/injection.dart';
import 'bloc/upload_package_bloc.dart';
import 'upload_package_data_conversion.dart';

void GisUploadPackageOptionDialog(
    BuildContext context,
    List<LocalStoreInformation> userSingleDayList,
    int selected,
    List<int> dropDownListItemLayTraveller,
    TextEditingController packageNameController) {
  int selectedDropDown = selected;
  final formKey = GlobalKey<FormState>();
  final prefs = getIt<SharedPreferenceHelper>();

  String? localStoredPackageName =
      prefs.getItineraryPackageForItineraryUpload();

  showDialog(
    context: context,
    barrierDismissible: false, //user must tab
    builder: (BuildContext context) {
      return StatefulBuilder(builder: (context, setState) {
        return new SimpleDialog(
          contentPadding: EdgeInsets.all(
            AppDimension.DimensionPaddingSize16,
          ),
          title: Center(
            child: GISDynamicText(
              text: "Package Upload Alert",
              isHeadings: true,
            ),
          ),
          children: [
            GISDynamicText(
              text: "Choose day or either upload whole package once.",
              isHeadings: false,
            ),
            SizedBox(height: AppDimension.DimensionSizedBoxSize16),
            localStoredPackageName!.isEmpty
                ? Form(
                    key: formKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Package name',
                        suffixIcon: IconButton(
                          onPressed: () => packageNameController.clear(),
                          icon: Icon(Icons.close),
                        ),
                      ),
                      controller: packageNameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter package name';
                        }
                        return null;
                      },
                      // ot
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Package name :',
                        style: AppTextStyle.textNormalKeyStyle,
                      ),
                      Text(
                        localStoredPackageName,
                        style: AppTextStyle.textNormalValueStyle,
                      )
                    ],
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select days :',
                  style: AppTextStyle.textNormalKeyStyle,
                ),
                SizedBox(
                  width: AppDimension.DimensionSizedBoxSize20,
                ),
                DropdownButton<int>(
                  value: selectedDropDown,
                  items: dropDownListItemLayTraveller.map((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(
                        value.toString(),
                        style: AppTextStyle.textNormalValueStyle,
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() => selectedDropDown = value!);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onPressed: () => popScreen(context),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onPressed: () {
                    if (localStoredPackageName.isEmpty) {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        String packageName = packageNameController.text;
                        //function to upload the data if the itinerary data is there

                        prefs.setItineraryPackageForItineraryUpload(
                            packageName: packageName);
                        uploadIfLocalDataExists(context, userSingleDayList,
                            selectedDropDown, packageName);
                      }
                    } else {
                      uploadIfLocalDataExists(context, userSingleDayList,
                          selectedDropDown, localStoredPackageName);
                    }
                  },
                ),
              ],
            )
          ],
        );
      });
    },
  );
}

void uploadIfLocalDataExists(
    BuildContext context,
    List<LocalStoreInformation> userSingleDayList,
    int selected,
    String packageName) {
  final prefs = getIt<SharedPreferenceHelper>();

  var dataList;
  bool? isAlreadyUploaded = prefs.getItineraryUploadState();

  if (isAlreadyUploaded!) {
    //get last uploaded max day and the total data length for that day
    int? getUploadedDay = prefs.getMaxDayUploadValue();
    int? getUploadedDayMaxDataLength = prefs.getMaxDayUploadValueDataLength();

    if (getUploadedDay! <= selected) {
      //new data max length for getUploaded day
      var checkForMaxDayLengthForSelectedDay =
          userSingleDayList.where((e) => e.day == getUploadedDay).toList();

      //logic to assign day data which is not uploaded before for selected day
      List<LocalStoreInformation> toUploadMissingDayListForAlreadySelectedDay =
          [];
      if (checkForMaxDayLengthForSelectedDay.length >
          getUploadedDayMaxDataLength!) {
        for (int i = getUploadedDayMaxDataLength;
            i < checkForMaxDayLengthForSelectedDay.length;
            i++) {
          toUploadMissingDayListForAlreadySelectedDay
              .add(checkForMaxDayLengthForSelectedDay[i]);
        }
      }
      dataList = userSingleDayList
          .where((e) => e.day > getUploadedDay && e.day <= selected)
          .toList();
      dataList.addAll(toUploadMissingDayListForAlreadySelectedDay);
    } else {
      return GISFlutterToast(context, "Oops! No data to upload.");
    }
  } else {
    dataList = userSingleDayList.where((e) => e.day <= selected).toList();
  }

  if (dataList.isEmpty) {
    return GISFlutterToast(context, "Oops! No data to upload.");
  }

  //selected day max data length
  var dataListForSelected =
      userSingleDayList.where((e) => e.day == selected).toList();

  //store selected information into sharedPreferences
  Map<String, dynamic> map = {
    'max_upload_day': selected,
    'max_upload_day_length': dataListForSelected.length
  };
  String rawJson = jsonEncode(map);
  prefs.setMaxDayUploadedInstanceTemporary(maxDayDataLengthTemporary: rawJson);

  //upload to server
  final uploadPackage = getIt<UploadPackageBloc>();
  convertUserDayValueAndUpload(context, false, dataList, uploadPackage);
  popScreen(context);
}
