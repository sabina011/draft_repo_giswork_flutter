import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myapp/utils/services/local_storage/hive/hive_store_provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../constant/app_const.dart';
import '../model/hive_model/local_store_lay_traveler.dart';
import '../model/hive_model/local_store_model.dart';

class ConfigureDependencies {
  static void configureAppDependencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    HttpOverrides.global = new MyHttpOverrides();

    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDirectory.path);
    Hive.registerAdapter(LocalStoreInformationAdapter());
    Hive.registerAdapter(GeoLocationAdapter());
    Hive.registerAdapter(PointsAdapter());
    Hive.registerAdapter(LocalStoreLayTravelerInformationAdapter());
    await Hive.openBox<LocalStoreInformation>(userDayHiveBoxName);
    await Hive.openBox<LocalStoreInformation>(layTravellerHiveBoxName);
    await Hive.openBox<LocalStoreLayTravelerInformation>(layTravelerItineraryListHiveBoxName);
  }

  static void configureAppLoaders(BuildContext context) {
    Provider.of<HiveOperationsProvider>(context, listen: false)
        .localUserDayHiveCall(layTravellerHiveBoxName);
    Provider.of<HiveOperationsProvider>(context, listen: false)
        .localUserDayHiveCall(userDayHiveBoxName);
    Provider.of<HiveOperationsProvider>(context, listen: false)
        .localUserDayHiveCall(layTravelerItineraryListHiveBoxName);
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
