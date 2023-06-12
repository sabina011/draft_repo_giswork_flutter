import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/screens/lay_traveller/profile/widgets/recent_package_view.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';
import 'package:myapp/utils/functions/function_circular_progress_show.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';

import '../../../application/injectable/injection.dart';
import '../../../application/lay_traveller/insert_data.dart';
import '../../../model/hive_model/local_store_lay_traveler.dart';
import '../../../model/hive_model/local_store_model.dart';
import 'widgets/creator_profile_itinerary_builder.dart';

class LayTravelerProfile extends StatefulWidget {
  bool? isPackageCompleted;
  final List<LocalStoreInformation> userDayItemResponse;

  LayTravelerProfile({
    Key? key,
    this.isPackageCompleted,
    required this.userDayItemResponse,
  }) : super(key: key);

  @override
  State<LayTravelerProfile> createState() => _LayTravelerProfileState();
}

class _LayTravelerProfileState extends State<LayTravelerProfile> {
  final prefs = getIt<SharedPreferenceHelper>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreatorProfileTopWidgetContainer(),
                SizedBox(height: 16.0),
                Text('Recent Package', style: itineraryTextStyle()),
                SizedBox(height: 8.0),
                widget.userDayItemResponse.isNotEmpty
                    ? SingleItemShowItineraryInformationToStore(
                        userDayItemResponse: widget.userDayItemResponse,
                      )
                    : Container(
                        height: size.height * 0.1,
                        width: size.width,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Center(child: Text('Package Already Saved!')),
                          ),
                        ),
                      ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Travel Packages', style: itineraryTextStyle()),
                    IconButton(
                      onPressed: () => setState(() {}),
                      icon: Icon(
                        Icons.refresh,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                CreatorProfileItineraryPackageListBuilder(
                  isTraveledPackageListView: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CreatorProfileTopWidgetContainer extends StatelessWidget {
  const CreatorProfileTopWidgetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            child: Text('id'),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User id'),
              Text(
                'Creator Name',
                style: mainPlaceTextStyle(),
              ),
            ],
          ),
          Spacer(),
          Spacer(),
          SizedBox(
            width: 8,
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => popScreen(context),
          ),
        ],
      ),
    );
  }
}

Future<void> insertPackageToStorage(
  BuildContext context,
  String? packageName,
  Random random,
  List<LocalStoreInformation>? localStoreInformation,
) async {
  popScreen(context);
  final date = DateTime.now();
  final randSeed = random.nextInt(200);
  final uniqueId = '$randSeed${date.toLocal().microsecond}$randSeed';

  ///checks for empty data
  if (packageName!.isEmpty) {
    return GISFlutterToast(context, 'Oops! package name is empty.');
  }

  if (localStoreInformation!.isEmpty) {
    return GISFlutterToast(context, 'Oops! lay traveler data is empty.');
  }

  LocalStoreLayTravelerInformation localStoreLayTravelerInfo =
      new LocalStoreLayTravelerInformation();
  localStoreLayTravelerInfo.packageName = packageName;
  localStoreLayTravelerInfo.packageUniqueId = int.parse(uniqueId);
  localStoreLayTravelerInfo.localStoreInformationPackageList =
      localStoreInformation!;

  GISCircularProgressDialog(context, 'Storing data!');

  ///save the localStoreLayTravelerInfo data to local storage.
  insertLayTravelerPackageList(context, localStoreLayTravelerInfo);
}
