import 'dart:developer' as Logger;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/utils/enums.dart';
import 'package:myapp/widgets/widget_gis_button.dart';

import '../../../application/connection/bloc/connection_bloc.dart';
import '../../../application/injectable/injection.dart';
import '../../../constant/app_const.dart';
import '../../../utils/services/local_storage/hive/hive_store_provider.dart';

class UserCategoryScreen extends StatefulWidget {
  const UserCategoryScreen({Key? key}) : super(key: key);

  @override
  State<UserCategoryScreen> createState() => _UserCategoryScreenState();
}

class _UserCategoryScreenState extends State<UserCategoryScreen> {
  final prefs = getIt<SharedPreferenceHelper>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Continue User ',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.5,
                      width: width * 0.3,
                      color: Colors.black26,
                    ),
                    Text(
                      ' As ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Container(
                      height: 1.5,
                      width: width * 0.3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                InkWell(
                  onTap: () {
                    jumpToItineraryTraveller(context);
                    try {
                      UserRecentActivity userRecentActivity =
                          UserRecentActivity.ITINERARY_VIEWING;
                      prefs.setUserRecentExitStatus(
                          userRecentActivity.toString());
                    } on Exception catch (e) {
                      Logger.log(e.toString());
                    }
                  },
                  child: GISButtonSaveOrUpload(
                      context: context, btn_text: 'Itinerary Traveller'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    try {
                      bool? ifLayTravellerExists = prefs.getUserSession();
                      if (ifLayTravellerExists!) {
                        final networkConnectionBloc = getIt<NetworkConnectionBloc>();
                        final hiveOperationInstance =
                            context.read<HiveOperationsProvider>();
                        hiveOperationInstance
                            .localUserDayHiveCall(userDayHiveBoxName);
                        hiveOperationInstance
                            .localUserDayHiveCall(layTravellerHiveBoxName);
                        hiveOperationInstance.localUserDayHiveCall(
                            layTravelerItineraryListHiveBoxName);
                        hiveOperationInstance.isLayTravellerHiveBoxHasData
                            ? jumpToNextMapTravellingScreen(context)
                            : jumpToLayTravellerMapStarter(context,networkConnectionBloc);
                      } else {
                        jumpToHomeScreen(context);
                      }
                      UserRecentActivity userRecentActivity =
                          UserRecentActivity.ITINERARY_CREATION;
                      prefs.setUserRecentExitStatus(
                          userRecentActivity.toString());
                    } on Exception catch (e) {
                      Logger.log(e.toString());
                    }
                  },
                  child: GISButtonSaveOrUpload(
                      context: context, btn_text: 'A Lay Traveller'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
