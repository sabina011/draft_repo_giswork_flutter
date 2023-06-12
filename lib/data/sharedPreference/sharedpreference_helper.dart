import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:myapp/data/sharedPreference/sharedPreferences_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPreferenceHelper {
  final SharedPreferences prefs;

  SharedPreferenceHelper({required this.prefs});

  /// access token setter and getter
  Future<void> setUserAccessToken({required String userAccessToken}) async {
    await prefs.setString(
        SharedPreferencesConstant.USER_ACCESS_TOKEN_KEY, userAccessToken);
  }

  String? getUserAccessToken() {
    final userAccessToken =
        prefs.getString(SharedPreferencesConstant.USER_ACCESS_TOKEN_KEY);
    return userAccessToken;
  }

  /// refresh token setter and getter
  Future<void> setUserRefreshToken({required String userRefreshToken}) async {
    await prefs.setString(
        SharedPreferencesConstant.USER_REFRESH_TOKEN_KEY, userRefreshToken);
  }

  String? getUserRefreshToken() {
    final userRefreshToken =
        prefs.getString(SharedPreferencesConstant.USER_REFRESH_TOKEN_KEY);
    return userRefreshToken;
  }

  /// user session setter and getter
  void saveUserSession(bool isSessionSaved) async {
    var isSaved = await prefs.setBool(
        SharedPreferencesConstant.USER_LOGIN_SESSION_KEY, isSessionSaved);
    if (isSaved)
      log('Session value saved success!');
    else
      log('Session value saved failure!');
  }

  bool? getUserSession() {
    bool? result =
        prefs.getBool(SharedPreferencesConstant.USER_LOGIN_SESSION_KEY);
    if (result == null) return false;
    return result;
  }

  ///save user last activity-[Itinerary viewing or Itinerary Creation]
  Future<void> setUserRecentExitStatus(String activityStrValue) async {
    await prefs.setString(SharedPreferencesConstant.USER_RECENT_ACTIVITY_STATUS,
        activityStrValue);
  }

  ///get user last activity-[Itinerary viewing or Itinerary Creation]
  String? getUserRecentExitStatus() {
    return prefs
            .getString(SharedPreferencesConstant.USER_RECENT_ACTIVITY_STATUS) ??
        'null';
  }

  ///save for package upload success
  Future<void> setItineraryUploadSuccess() async {
    await prefs.setBool(
        SharedPreferencesConstant.ITINERARY_UPLOAD_STATE_KEY, true);
  }

  ///save for package upload success
  bool? getItineraryUploadState() {
    bool? result =
        prefs.getBool(SharedPreferencesConstant.ITINERARY_UPLOAD_STATE_KEY);
    if (result == null) return false;
    return result;
  }

  /// max day upload package setter and getter
  Future<void> setMaxDayUploadValue({required int maxDay}) async {
    await prefs.setInt(SharedPreferencesConstant.SELECTED_MAX_DAY_KEY, maxDay);
  }

  int? getMaxDayUploadValue() {
    final getMaxDay =
        prefs.getInt(SharedPreferencesConstant.SELECTED_MAX_DAY_KEY);
    return getMaxDay;
  }

  /// max day upload  data length package setter and getter
  Future<void> setMaxDayUploadValueDataLength(
      {required int maxDayDataLength}) async {
    await prefs.setInt(
        SharedPreferencesConstant.SELECTED_MAX_DAY_DATA_LENGTH_KEY,
        maxDayDataLength);
  }

  int? getMaxDayUploadValueDataLength() {
    final getMaxDayDataLength = prefs
        .getInt(SharedPreferencesConstant.SELECTED_MAX_DAY_DATA_LENGTH_KEY);
    return getMaxDayDataLength;
  }

  ///map data for max uploaded day and  max day length
  Future<void> setMaxDayUploadedInstanceTemporary(
      {required String maxDayDataLengthTemporary}) async {
    await prefs.setString(
        SharedPreferencesConstant.SELECTED_MAX_DAY_DATA_LENGTH_TEMP0RORY_KEY,
        maxDayDataLengthTemporary);
  }

  String? getMaxDayUploadedInstanceTemporary() {
    final getMaxDayDataLengthTemporary = prefs.getString(
        SharedPreferencesConstant.SELECTED_MAX_DAY_DATA_LENGTH_TEMP0RORY_KEY);
    return getMaxDayDataLengthTemporary;
  }

  ///set the unique package name for the package to upload to the database.
  Future<void> setItineraryPackageName({required String packageName}) async {
    await prefs.setString(
        SharedPreferencesConstant.ITINERARY_PACKAGE_NAME_KEY, packageName);
  }

  String? getItineraryPackageName() {
    final packageName =
        prefs.getString(SharedPreferencesConstant.ITINERARY_PACKAGE_NAME_KEY);
    return packageName ?? "";
  }

  ///set the unique package status for the package to upload to the database.
  Future<void> setRecentPackageSaveStatus(
      {required bool isRecentPackage}) async {
    await prefs.setBool(
        SharedPreferencesConstant.ITINERARY_RECENT_PACKAGE_STATUS_KEY,
        isRecentPackage);
  }

  bool? getRecentPackageSaveStatus() {
    bool? recentPackageSaveStatus = prefs
        .getBool(SharedPreferencesConstant.ITINERARY_RECENT_PACKAGE_STATUS_KEY);
    return recentPackageSaveStatus ?? false;
  }

  ///temp save and get the package id:
  Future<void> tempSetItineraryPackageId(
      {required String tempPackageId}) async {
    await prefs.setString(
        SharedPreferencesConstant.ITINERARY_UPLOADED_TEMP_PACKAGE_ID_KEY,
        tempPackageId);
  }

  String? tempGetItineraryPackageId() {
    final tempPackageId = prefs.getString(
        SharedPreferencesConstant.ITINERARY_UPLOADED_TEMP_PACKAGE_ID_KEY);
    return tempPackageId ?? " ";
  }

  ///set the list of packages id that are already uploaded to the server.
  Future<void> setUploadedPackagesIds({required String packageId}) async {
    List<String> existingData = prefs.getStringList(
            SharedPreferencesConstant.ITINERARY_UPLOADED_PACKAGE_IDS_KEY) ??
        [];
    if (existingData.contains(packageId)) {
      print("Data already exist");
    } else {
      existingData.add(packageId);
      await prefs.setStringList(
          SharedPreferencesConstant.ITINERARY_UPLOADED_PACKAGE_IDS_KEY,
          existingData);
    }
  }

  ///get the list of package ids that are stored in the server.
  List<String>? getUploadedPackageIds() {
    return prefs.getStringList(
            SharedPreferencesConstant.ITINERARY_UPLOADED_PACKAGE_IDS_KEY) ??
        [];
  }

  ///set the unique package name for upload in lay traveler screen.
  Future<void> setItineraryPackageForItineraryUpload(
      {required String packageName}) async {
    await prefs.setString(
        SharedPreferencesConstant
            .ITINERARY_PACKAGE_FOR_ITINERARY_UPLOAD_NAME_KEY,
        packageName);
  }

  String? getItineraryPackageForItineraryUpload() {
    final packageName = prefs.getString(SharedPreferencesConstant
        .ITINERARY_PACKAGE_FOR_ITINERARY_UPLOAD_NAME_KEY);
    return packageName ?? "";
  }

  ///check the itinerary package status.
  Future<void> setCurrentPackageCompletionStatus(
      {required bool packageCompletedStatus}) async {
    await prefs.setBool(
        SharedPreferencesConstant
            .ITINERARY_PACKAGE_CURRENT_PACKAGE_COMPLETION_STATUS_KEY,
        packageCompletedStatus);
  }

  bool? getCurrentPackageCompletionStatus() {
    final packageCompletionStatus = prefs.getBool(SharedPreferencesConstant
        .ITINERARY_PACKAGE_CURRENT_PACKAGE_COMPLETION_STATUS_KEY);
    return packageCompletionStatus ?? false;
  }
}
