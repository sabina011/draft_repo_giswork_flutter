import 'package:flutter/material.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/utils/functions/function_circular_progress_show.dart';
import 'package:myapp/utils/functions/functions_alert_dialog.dart';
import 'package:myapp/widgets/widget_gis_button.dart';
import 'package:provider/provider.dart';

import '../../application/custom_package/custom_package_local_post.dart';
import '../../application/injectable/injection.dart';
import '../../application/upload_package/bloc/upload_package_bloc.dart';
import '../../config/routes/routes_handler.dart';
import '../../model/hive_model/local_store_model.dart';
import '../../utils/services/local_storage/hive/hive_store_provider.dart';

class LocalPostPackageViewHolder extends StatefulWidget {
  final int selected_day;

  const LocalPostPackageViewHolder({
    Key? key,
    required this.selected_day,
  }) : super(key: key);

  @override
  State<LocalPostPackageViewHolder> createState() =>
      _LocalPostPackageViewHolderState();
}

class _LocalPostPackageViewHolderState
    extends State<LocalPostPackageViewHolder> {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<UploadPackageBloc>();

    return SafeArea(
      child: Scaffold(
        body: Consumer<HiveOperationsProvider>(
          builder: (context, data, child) {
            Future.delayed(Duration.zero, () {
              data.userPostsPackageViewUserDay(widget.selected_day);
            });
            return data.isSingleDayPackageUserDayHasData
                ? Column(children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          'Day ${widget.selected_day}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.userDaySingeDayList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () =>
                                deleteLocalPostAlertBox(context, data, index),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                              padding: EdgeInsets.only(right: 12.0),
                              decoration: new BoxDecoration(
                                border: new Border(
                                  right: new BorderSide(
                                      width: 1.0, color: Colors.white24),
                                ),
                              ),
                              child: CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  child: Text(
                                    data.userDaySingeDayList[index].day
                                        .toString(),
                                    style: TextStyle(color: Colors.white),
                                  )),
                              // Icon(Icons.place_outlined, color: Colors.black),
                            ),
                            title: Text(
                              data.userDaySingeDayList[index].locationName,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
                            subtitle: Row(
                              children: <Widget>[
                                Icon(Icons.linear_scale,
                                    color: Theme.of(context).errorColor),
                                Expanded(
                                    child: Text(data
                                        .userDaySingeDayList[index].createdAt))
                              ],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_right,
                                size: 30.0,
                              ),
                              color: Colors.black,
                              onPressed: () =>
                                  jumpToLocalStoreSinglePostViewHolder(
                                context,
                                data.userDaySingeDayList[index],
                              ),
                            ),
                          );
                        }),
                    SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          // convertUserDayToMapList(
                          //   context,
                          //   data.userDaySingeDayList,
                          //   bloc,
                          // );
                          GISCircularProgressDialog(
                              context, 'Package uploading.');
                          uploadPackageToServer(
                            context,
                            data.userDaySingeDayList,
                          );
                        },
                        child: GISButtonSaveOrUpload(
                            context: context, btn_text: 'Upload Package'),
                      ),
                    ),
                  ])
                : Container(
                    child: Center(
                      child: Text('No package for day ${widget.selected_day}'),
                    ),
                  );
          },
        ),
      ),
    );
  }

  void deleteLocalPostAlertBox(
      BuildContext context, HiveOperationsProvider data, int index) {
    GISAlertDeleteConfirmDialog(
      context,
      'Delete Information',
      'Are you sure want to delete the  current information ? ',
      'Confirm',
      () {
        data.localUserDayHiveIndexDelete(
          context,
          index,
          userDayHiveBoxName,
        );
      },
    );
  }

  void convertUserDayToMapList(
      context,
      List<LocalStoreInformation> userSingleDayList,
      UploadPackageBloc uploadPackageBloc) {
    List<Map<String, dynamic>> userSingleDayListToMap = [];
    Map<String, dynamic> userDayMap;

    print("Length of the  single day list : ${userSingleDayList.length}");

    if (userSingleDayList.length != 0 || userSingleDayList.isNotEmpty) {
      for (int i = 0; i < userSingleDayList.length; i++) {
        GeoLocation geoLocation = GeoLocation(
          srid: GEO_SRID,
          points: Points(
            latitude: userSingleDayList[i].geoLocation.points.latitude,
            longitude: userSingleDayList[i].geoLocation.points.longitude,
          ),
        );

        userDayMap = {
          'hotels_and_resturants': userSingleDayList[i].hotelsAndRestaurants,
          'geographical_info': userSingleDayList[i].geographicalInfo,
          'transportation_medium': userSingleDayList[i].transportationMedium,
          'route_information': userSingleDayList[i].routeInformation,
          'seasonal_information': userSingleDayList[i].seasonalInformation,
          'location_name': userSingleDayList[i].locationName,
          'geo_location': geoLocation,
          'images': userSingleDayList[i].unitImagesFileList,
          'videos': userSingleDayList[i].unitImagesFileList
        };
        userSingleDayListToMap.add(userDayMap);
      }
    }

    ///bloc code to upload data
    uploadPackageBloc.add(
      UploadPackageEvent.upload(
        isCompletePackage: false,
        userSingleDayList: userSingleDayListToMap,
      ),
    );
  }
}
