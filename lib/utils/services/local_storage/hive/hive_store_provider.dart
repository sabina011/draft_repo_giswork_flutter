import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';

import '../../../../model/hive_model/local_store_lay_traveler.dart';

class HiveOperationsProvider extends ChangeNotifier {
  List<LocalStoreInformation> userDay = [];
  List<LocalStoreInformation> layTravellerData = [];
  List<LocalStoreInformation> userDaySingeDayList = [];

  bool isUserDayHiveBoxHasData = false;
  bool isLayTravellerHiveBoxHasData = false;
  bool isSingleDayPackageUserDayHasData = false;

  ///check for the list of itinerary for lay traveler packages.
  ///list to store the list of itinerary
  bool isLayTravelerItineraryListHiveBoxHasData = false;
  List<LocalStoreLayTravelerInformation> localStoreLayTravelerInfoList = [];

  Box<LocalStoreInformation> userDayHiveBox =
      Hive.box<LocalStoreInformation>(userDayHiveBoxName);
  Box<LocalStoreInformation> layTravellerHiveBox =
      Hive.box<LocalStoreInformation>(layTravellerHiveBoxName);
  Box<LocalStoreLayTravelerInformation> layTravelerItineraryListHiveBox =
      Hive.box<LocalStoreLayTravelerInformation>(
          layTravelerItineraryListHiveBoxName);

  void localUserDayHiveCall(String hiveBoxName) async {
    try {
      if (hiveBoxName == userDayHiveBoxName) {
        userDay = userDayHiveBox.values.toList();
        if (userDay.isNotEmpty) {
          var userDayList = [];
          userDay.forEach((item) {
            userDayList.add(item.day);
          });

          user_day_max_day = userDayList
              .reduce((value, element) => value > element ? value : element);
          isUserDayHiveBoxHasData = true;
        }
      } else if (hiveBoxName == layTravelerItineraryListHiveBoxName) {
        localStoreLayTravelerInfoList =
            layTravelerItineraryListHiveBox.values.toList();
        if (localStoreLayTravelerInfoList.isNotEmpty) {
          isLayTravelerItineraryListHiveBoxHasData = true;
        }
      } else {
        layTravellerData = layTravellerHiveBox.values.toList();
        if (layTravellerData.isNotEmpty) {
          var layTravellerDayList = [];
          layTravellerData.forEach((item) {
            layTravellerDayList.add(item.day);
          });
          traveller_max_day = layTravellerDayList
              .reduce((value, element) => value > element ? value : element);
          isLayTravellerHiveBoxHasData = true;
        }
      }
    } catch (ex) {
      print(ex.toString());
      log('Exception occurred in hive while [Fetching]:');
    }
    notifyListeners();
  }

  //delete data of hive
  void localUserDayHiveIndexDelete(
      BuildContext context, int index, String hiveBoxName) async {
    try {
      if (hiveBoxName == userDayHiveBoxName) {
        userDay = userDayHiveBox.values.toList();
        if (userDay.isNotEmpty) {
          userDayHiveBox.deleteAt(index);
          GISFlutterToast(context, 'Deletion successful');
          popScreen(context);
        } else {
          GISFlutterToast(context, 'Local user box is already empty');
        }
      } else {
        layTravellerData = layTravellerHiveBox.values.toList();
        if (layTravellerData.isNotEmpty) {
          layTravellerHiveBox.deleteAt(index);
          GISFlutterToast(context, 'Deletion successful');
          popScreen(context);
        } else {
          GISFlutterToast(context, 'Lay traveller box is already empty');
        }
      }
      notifyListeners();
    } catch (ex) {
      log('Exception occurred in hive while [Deleting]:');
    }
  }

  void userPostsPackageViewUserDay(int get_specific_day) async {
    try {
      var box_user_day = Hive.box<LocalStoreInformation>(userDayHiveBoxName);
      userDay = box_user_day.values.toList();
      if (userDay.isNotEmpty) {
        userDaySingeDayList =
            userDay.where((e) => e.day == get_specific_day).toList();
        isSingleDayPackageUserDayHasData = true;
        notifyListeners();
      }
    } catch (ex) {
      log('Exception occurred in hive while [Fetching for user package post]:');
    }
  }

  //delete hive Lay traveler package post
  void deleteLayTravelerPackageItem(BuildContext context, int index) {
    try {
      localStoreLayTravelerInfoList =
          layTravelerItineraryListHiveBox.values.toList();
      if (localStoreLayTravelerInfoList.isNotEmpty) {
        layTravelerItineraryListHiveBox.deleteAt(index);
        GISFlutterToast(context, 'Package Deletion successful!');
        popScreen(context);
      } else {
        popScreen(context);
        GISFlutterToast(context, 'Package is empty!');
      }
      notifyListeners();
    } catch (ex) {
      popScreen(context);
      GISFlutterToast(context, 'Unable to delete Package!');
    }
  }

  //update hive provider data
  void updateLayTravelerPackageItem(BuildContext context, int index,
      LocalStoreLayTravelerInformation localStoreLayTravelerInformation) {
    try {
      localStoreLayTravelerInfoList =
          layTravelerItineraryListHiveBox.values.toList();
      if (localStoreLayTravelerInfoList.isNotEmpty) {
        layTravelerItineraryListHiveBox.putAt(
            index, localStoreLayTravelerInformation);
        GISFlutterToast(context, 'Package Update successful!');
        popScreen(context);
      } else {
        popScreen(context);
        GISFlutterToast(context, 'Package is empty!');
      }
      notifyListeners();
    } catch (ex) {
      popScreen(context);
      GISFlutterToast(context, 'Unable to update Package!');
    }
  }

  Future<bool> checkPackageAlreadyExist(BuildContext context,
      LocalStoreLayTravelerInformation localStoreLayTravelerInformation) async {
    try {
      final localStoreLayTravelerInfoList =
      layTravelerItineraryListHiveBox.values.toList();
      return await localStoreLayTravelerInfoList.isNotEmpty &&
          localStoreLayTravelerInfoList.any(
                  (info) => info.localStoreInformationPackageList ==
                  localStoreLayTravelerInformation
                      .localStoreInformationPackageList);
    } catch (ex) {
      log('Package check error!');
      return false;
    }
  }

}
