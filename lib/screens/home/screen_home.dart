import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/sharedPreference/sharedPreferences_constants.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/screens/home/widgets/appbar_dart.dart';
import 'package:myapp/screens/home/widgets/drawer.dart';
import 'package:myapp/utils/services/local_storage/hive/hive_store_provider.dart';
import 'package:provider/provider.dart';

import '../../application/connection/bloc/connection_bloc.dart';
import '../../application/injectable/injection.dart';
import '../../application/places/bloc/place_new_bloc.dart';
import '../../application/user_posts/bloc/user_post_new_bloc.dart';
import '../../config/app_dependencies.dart';
import '../../config/routes/routes_handler.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final prefs = getIt<SharedPreferenceHelper>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    Future.delayed(Duration(seconds: 2),(){
      ConfigureDependencies.configureAppLoaders(context);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      drawer: DrawerWidget(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Text(
            'Tilicho Lake',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            child: Container(
              //width: double.maxFinite,
              width: 1200,
              height: 600.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/tilicho_lake.jpg'),
                  fit: BoxFit.contain,
                ),
                //shape: BoxShape.rectangle.,
              ),
            ),
            onTap: () => navigateToScreenPlaceView(context),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onFloatingBtnTapped(context, prefs),
        child: Icon(Icons.add),
      ),
    ); //ListView
  }
}

void onFloatingBtnTapped(BuildContext context, SharedPreferenceHelper prefs) {
  ///save user session login
  prefs.saveUserSession(SharedPreferencesConstant.IS_LOGGED_IN_BOOL_VALUE);
  final hiveOperationInstance = context.read<HiveOperationsProvider>();
  final networkConnectionBloc  = getIt<NetworkConnectionBloc>();
  hiveOperationInstance.localUserDayHiveCall(layTravellerHiveBoxName);
  hiveOperationInstance.isLayTravellerHiveBoxHasData
      ? jumpToNextMapTravellingScreen(context)
      : jumpToLayTravellerMapStarter(context,networkConnectionBloc);
}

void navigateToScreenPlaceView(BuildContext context) {
  final getPlacesBloc = getIt<GetPlacesBloc>();
  final getPostsBloc = getIt<UserPostBloc>();
  jumpToPlaceViewHolder(context, getPlacesBloc, getPostsBloc);
}
