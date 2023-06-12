class SharedPreferencesConstant {
  static const bool IS_LOGGED_IN_BOOL_VALUE = true;
  static const String USER_ACCESS_TOKEN_KEY = "ACCESS_TOKEN";
  static const String USER_REFRESH_TOKEN_KEY = "REFRESH_TOKEN";
  static const String USER_LOGIN_SESSION_KEY = 'IS_USER_LOGGED';
  static const String Itinerary_LOGIN_SESSION_KEY = 'IS_USER_LOGGED';
  static const String ITINERARY_UPLOAD_STATE_KEY = 'IS_ITINERARY_UPLOADED';

  ///user recent activity exist status
  static const String USER_RECENT_ACTIVITY_STATUS = 'USER_RECENT_ACTIVITY';

  ///for package upload max day
  static const String SELECTED_MAX_DAY_KEY = "MAX_DAY_UPLOAD_KEY";
  static const String SELECTED_MAX_DAY_DATA_LENGTH_KEY =
      "MAX_DAY_UPLOAD_DATA_LENGTH_KEY";
  static const String SELECTED_MAX_DAY_DATA_LENGTH_TEMP0RORY_KEY =
      "MAX_DAY_UPLOAD_DATA_LENGTH_TEMPORARY_KEY";

  ///package name store key
  static const String ITINERARY_PACKAGE_NAME_KEY =
      "ITINERARY_PACKAGE_IDENTITY_NAME";

  ///pakage name store key
  static const String ITINERARY_PACKAGE_FOR_ITINERARY_UPLOAD_NAME_KEY =
      "ITINERARY_PACKAGE_IDENTITY_UPLOAD_NAME_KEY";


  /// current package completion status key
  static const String ITINERARY_PACKAGE_CURRENT_PACKAGE_COMPLETION_STATUS_KEY =
      "ITINERARY_PACKAGE_CURRENT_PACKAGE_COMPLETION_STATUS_KEY";

  ///package to store the current package status:
  static const String ITINERARY_RECENT_PACKAGE_STATUS_KEY =
      "ITINERARY_RECENT_PACKAGE_SAVED_OR_NOT";

  ///temp uploaded package id key
  static const String ITINERARY_UPLOADED_TEMP_PACKAGE_ID_KEY =
      "ITINERARY_UPLOADED_TEMP_PACKAGE_ID";

  ///uploaded packages id's list
  static const String ITINERARY_UPLOADED_PACKAGE_IDS_KEY =
      "ITINERARY_UPLOADED_PACKAGE_IDS";
}
