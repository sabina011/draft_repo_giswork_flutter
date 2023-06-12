import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../application/upload_package/upload_package_data_conversion.dart';
import '../../../../model/hive_model/local_store_lay_traveler.dart';
import '../../../../utils/functions/alert_input_dialog.dart';
import '../../../../utils/functions/hive_operation_stream_controller.dart';
import '../../../../utils/services/local_storage/hive/hive_store_provider.dart';
import 'lay_traveler_utils.dart';

class CreatorProfileItineraryPackageListBuilder extends StatefulWidget {
  final bool isTraveledPackageListView;

  const CreatorProfileItineraryPackageListBuilder(
      {Key? key, required this.isTraveledPackageListView})
      : super(key: key);

  @override
  State<CreatorProfileItineraryPackageListBuilder> createState() =>
      _CreatorProfileItineraryPackageListBuilderState();
}

class _CreatorProfileItineraryPackageListBuilderState
    extends State<CreatorProfileItineraryPackageListBuilder> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    List<LocalStoreLayTravelerInformation> localStoreListItem = [];
    StreamController<List<LocalStoreLayTravelerInformation>>
        localStoreLayTravelerStreamController =
        new StreamController<List<LocalStoreLayTravelerInformation>>();
    final data = context.read<HiveOperationsProvider>();

    Future.delayed(Duration(seconds: 1), () {
      localStoreLayTravelerStreamController.sink
          .add(getLocalStoreLayTravelerInformation(data)!);
    });

    return StreamBuilder<List<LocalStoreLayTravelerInformation>>(
      initialData: localStoreListItem,
      stream: localStoreLayTravelerStreamController.stream,
      builder: (BuildContext context,
          AsyncSnapshot<List<LocalStoreLayTravelerInformation>> snapshot) {

        if (snapshot.hasData) {
          List<LocalStoreLayTravelerInformation> layTravelerPackageList =
              snapshot.data!.map((data) {
            LocalStoreLayTravelerInformation localStoreLayTravelerInfo =
                new LocalStoreLayTravelerInformation();
            localStoreLayTravelerInfo.packageUniqueId = data.packageUniqueId;
            localStoreLayTravelerInfo.packageName = data.packageName;
            localStoreLayTravelerInfo.localStoreInformationPackageList =
                data.localStoreInformationPackageList;
            return localStoreLayTravelerInfo;
          }).toList();

          if (layTravelerPackageList.isNotEmpty) {
            return Container(
              height: widget.isTraveledPackageListView
                  ? size.height * 0.90
                  : size.height * 0.420,
              width: size.width,
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() {});
                },
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  itemCount: layTravelerPackageList.length,
                  itemBuilder: (context, index) {
                    List<int> getPackageDays = layTravelerPackageList[index]
                        .localStoreInformationPackageList
                        .map((e) => e.day)
                        .toList();
                    getPackageDays.sort();
                    int getMaximumDays = getPackageDays.last;

                    final calculatedDistance = calculatedTotalDistanceTravelled(
                            layTravelerPackageList[index]
                                .localStoreInformationPackageList)
                        .toStringAsFixed(2);

                    return SharedItineraryItemBuilder(
                      index: index,
                      isCurrentPackage: false,
                      maxNumberOfDays: getMaximumDays,
                      calculatedDistanceAsFixedString: calculatedDistance,
                      localStoredItemInformation: layTravelerPackageList[index]
                          .localStoreInformationPackageList,
                      localStoredItemPackageName:
                          layTravelerPackageList[index].packageName,
                      streamController: localStoreLayTravelerStreamController,
                      packageUniqueId: layTravelerPackageList[index].packageUniqueId,
                      onEditPackageCallBack: () {
                        String packageName =
                            layTravelerPackageList[index].packageName;
                        var inputPackageTextEditingController =
                            new TextEditingController(text: packageName);
                        GISTextEditingDialogBox(
                            context,
                            inputPackageTextEditingController,
                            "Update itinerary Package",
                            "Enter package name",
                            "Update",
                            size, () {
                          final data = context.read<HiveOperationsProvider>();
                          var layTravelerInformation =
                              new LocalStoreLayTravelerInformation()
                                ..packageName =
                                    inputPackageTextEditingController.text
                                ..packageUniqueId =
                                    layTravelerPackageList[index]
                                        .packageUniqueId
                                ..localStoreInformationPackageList =
                                    layTravelerPackageList[index]
                                        .localStoreInformationPackageList;

                          data.updateLayTravelerPackageItem(
                              context, index, layTravelerInformation);
                          Future.delayed(
                            Duration(seconds: 2),
                            () {
                              setState(() {});
                            },
                          );
                        });
                      },
                    );
                  },
                ),
              ),
            );
          } else {
            return Center(
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.2),
                child: Text('Empty Data!'),
              ),
            );
          }
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error item showing!',
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
