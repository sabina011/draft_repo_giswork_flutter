import 'dart:developer' as Developer;

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/screens/lay_traveller/screen_start_next_map_travel.dart';
import 'package:myapp/screens/local_store/screen_local_post_days.dart';
import 'package:myapp/utils/functions/function_current_date.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';
import 'package:myapp/utils/services/local_storage/hive/hive_store_provider.dart';
import 'package:myapp/utils/services/native/media/media_file_selector.dart';
import 'package:provider/provider.dart';

import '../../../../application/injectable/injection.dart';
import '../../../../model/hive_model/local_store_lay_traveler.dart';
import 'hive_constants.dart';

void storeLocalDataToHiveDB(
  BuildContext context,
  LocalStoreInformation userDay,
  String hiveBoxName,
) async {



  List<LocalStoreInformation>? checkUserDay = [];
  List<LocalStoreInformation>? checkLayTravellerDay = [];

  var box_user_day = Hive.box<LocalStoreInformation>(userDayHiveBoxName);
  var box_lay_traveller =
      Hive.box<LocalStoreInformation>(layTravellerHiveBoxName);

  try {
    if (hiveBoxName == userDayHiveBoxName) {
      if (box_user_day.values.toList().length >= 1) {
        checkUserDay =
            (await box_user_day.values.toList()).cast<LocalStoreInformation>();

        var result = checkUserDay.where((element) {
          return element.createdAt == currentDate();
        });

        //check for today date
        if (result.isNotEmpty) {
          var get_first_day = checkUserDay.firstWhere(
            (element) => element.createdAt == currentDate(),
          );
          userDay.day = get_first_day.day;
          Developer.log("User day:" + userDay.day.toString());
        } else {
          var oldestUser = checkUserDay.reduce((currentUser, nextUser) {
            return currentUser.day > currentUser.day ? currentUser : nextUser;
          });
          userDay.day = oldestUser.day + 1;
          Developer.log("User day: " + userDay.day.toString());
        }
        await box_user_day.add(userDay);
        insertSuccess(context, userDayHiveBoxName);
      } else {
        userDay.day = 1;
        box_user_day.add(userDay);
        insertSuccess(context, userDayHiveBoxName);
      }
    } else {
      if (box_lay_traveller.values.toList().length >= 1) {
        checkLayTravellerDay = (await box_lay_traveller.values.toList())
            .cast<LocalStoreInformation>();

        var result = checkLayTravellerDay.where((element) {
          return element.createdAt == currentDate();
        });

        //check for today date
        if (result.isNotEmpty) {
          var get_first_day = checkLayTravellerDay.firstWhere(
            (element) => element.createdAt == currentDate(),
          );
          userDay.day = get_first_day.day;
          Developer.log("User day:" + userDay.day.toString());
        } else {
          var oldestUser = checkLayTravellerDay.reduce((currentUser, nextUser) {
            return currentUser.day > currentUser.day ? currentUser : nextUser;
          });
          userDay.day = oldestUser.day + 1;
          Developer.log("User day: " + userDay.day.toString());
        }
        await box_lay_traveller.add(userDay);
        insertSuccess(context, layTravellerHiveBoxName);
      } else {
        userDay.day = 1;
        box_lay_traveller.add(userDay);
        insertSuccess(context, layTravellerHiveBoxName);
      }
    }
  } catch (ex) {
    GISFlutterToast(context, HiveGisActions.HiveSaveFailure);
    Developer.log(HiveGisActions.HiveSaveFailure + ex.toString());
  }
}

void insertSuccess(BuildContext context, String hiveBoxName) {
  GISFlutterToast(context, HiveGisActions.HiveSaveSuccess);
  popScreen(context);
  if (hiveBoxName == userDayHiveBoxName) {
    Provider.of<HiveOperationsProvider>(context, listen: false)
        .localUserDayHiveCall(userDayHiveBoxName);
    Provider.of<FileDataProvider>(context, listen: false).imageList!.clear();
    jumpToNextScreen(context, LocalStoreDayViewHolder());
  } else {
    Provider.of<HiveOperationsProvider>(context, listen: false)
        .localUserDayHiveCall(layTravellerHiveBoxName);
    Provider.of<FileDataProvider>(context, listen: false).imageList!.clear();
    jumpToNextScreen(context, NextMapTravellingScreen());
  }
  Developer.log(HiveGisActions.HiveSaveSuccess);
}

///func to save/store lay traveler package list
void storeLayTravelerPackageListToHiveDB(BuildContext context,
    LocalStoreLayTravelerInformation localStoreLayTravelerInformation) async {
  final prefs  = getIt<SharedPreferenceHelper>();

  try {
    var boxLayTravelerItineraryList =
        Hive.box<LocalStoreLayTravelerInformation>(
            layTravelerItineraryListHiveBoxName);
    await boxLayTravelerItineraryList.add(localStoreLayTravelerInformation);
    popScreen(context);
    GISFlutterToast(context, "Data stored Successful!");
    ///save the status that the data is saved:
    prefs.setRecentPackageSaveStatus(isRecentPackage: true);
  } catch (ex) {
    popScreen(context);
    GISFlutterToast(context, HiveGisActions.HiveSaveFailure);
    Developer.log(HiveGisActions.HiveSaveFailure + ex.toString());
  }
}
