import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/utils/enums.dart';
import 'package:provider/provider.dart';

import '../../application/connection/bloc/connection_bloc.dart';
import '../../application/injectable/injection.dart';
import '../../constant/app_const.dart';
import '../../utils/services/local_storage/hive/hive_store_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final prefs = getIt<SharedPreferenceHelper>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    runTimer(context);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Geo App',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void runTimer(BuildContext context) {
    new Timer(Duration(seconds: 5), () async {
      try {
        String? userLastActivity = prefs.getUserRecentExitStatus();
        if (userLastActivity ==
            UserRecentActivity.ITINERARY_CREATION.toString()) {
          final hiveOperationInstance = context.read<HiveOperationsProvider>();
          final networkConnectionBloc = getIt<NetworkConnectionBloc>();

          hiveOperationInstance.localUserDayHiveCall(userDayHiveBoxName);
          hiveOperationInstance.localUserDayHiveCall(layTravellerHiveBoxName);
          hiveOperationInstance
              .localUserDayHiveCall(layTravelerItineraryListHiveBoxName);

          hiveOperationInstance.isLayTravellerHiveBoxHasData
              ? jumpToNextMapTravellingScreen(context)
              : jumpToLayTravellerMapStarter(context, networkConnectionBloc);
        } else if (userLastActivity ==
            UserRecentActivity.ITINERARY_VIEWING.toString()) {
          jumpToItineraryTraveller(context);
        } else {
          jumpToUserCategoryScreen(context);
        }
      } on Exception catch (e) {
        print(e.toString());
      }
    });
  }
}
