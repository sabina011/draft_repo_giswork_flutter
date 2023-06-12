import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/application/upload_package/bloc/upload_package_bloc.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';
import 'package:myapp/utils/services/local_storage/hive/hive_store_provider.dart';
import 'package:provider/provider.dart';

import '../../../../application/connection/bloc/connection_bloc.dart';
import '../../../../application/injectable/injection.dart';
import '../../../../application/upload_package/upload_package_data_conversion.dart';
import '../../../../config/routes/routes_handler.dart';
import '../../../../model/hive_model/local_store_lay_traveler.dart';
import '../../../../model/hive_model/local_store_model.dart';
import '../../../../utils/functions/check_for_distance_units.dart';
import '../../../../utils/functions/itinerary_dialog_option.dart';
import '../../wigets/text_styles.dart';
import '../lay_traveler_profile_screen.dart';
import 'item_information_scroll.dart';
import 'item_row_widget.dart';

class SharedItineraryItemBuilder extends StatefulWidget {
  final bool isCurrentPackage;
  final int maxNumberOfDays;
  final Random? random;
  final int? index;
  final TextEditingController? packageNameController;
  final String calculatedDistanceAsFixedString;
  final String? localStoredItemPackageName;
  final VoidCallback? onEditPackageCallBack;
  final int? packageUniqueId;
  final List<LocalStoreInformation> localStoredItemInformation;
  final StreamController<List<LocalStoreLayTravelerInformation>>?
      streamController;

  const SharedItineraryItemBuilder({
    Key? key,
    this.random,
    this.index,
    this.packageNameController,
    required this.isCurrentPackage,
    required this.maxNumberOfDays,
    this.localStoredItemPackageName,
    required this.calculatedDistanceAsFixedString,
    required this.localStoredItemInformation,
    this.packageUniqueId,
    this.streamController,
    this.onEditPackageCallBack,
  }) : super(key: key);

  @override
  State<SharedItineraryItemBuilder> createState() =>
      _SharedItineraryItemBuilderState();
}

class _SharedItineraryItemBuilderState
    extends State<SharedItineraryItemBuilder> {
  final uploadPackageBloc = getIt<UploadPackageBloc>();
  final prefs = getIt<SharedPreferenceHelper>();
  final networkConnectionBloc = getIt<NetworkConnectionBloc>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final hiveOperationInstance = context.read<HiveOperationsProvider>();
    final bool isPackageUploaded =
        checkIfAlreadyUploadedPackage(prefs, widget.packageUniqueId.toString());

    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      height: size.height * 0.31,
      width: size.width,
      child: Stack(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(
                16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemRowWidget(
                    isCurrentPackage: widget.isCurrentPackage,
                    maxNumberOfDays: widget.maxNumberOfDays,
                    packageNameController: widget.packageNameController,
                    onEditPackageCallBack: widget.onEditPackageCallBack,
                    localStoredItemPackageName:
                        widget.localStoredItemPackageName,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Distance Completed',
                        style: markerPlaceTextStyle(),
                      ),
                      Text(
                        getCalculatedDistanceUnits(
                          double.parse(
                            widget.calculatedDistanceAsFixedString,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Places',
                    style: markerPlaceTextStyle(),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ItemInformationScrollable(
                    localStoredItemInformation:
                        widget.localStoredItemInformation,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      widget.isCurrentPackage
                          ? SizedBox.shrink()
                          : isPackageUploaded
                              ? SizedBox(
                                  width: size.width * 0.25,
                                  child: ElevatedButton(
                                    onPressed: () => {},
                                    child: Text('Uploaded'),
                                  ),
                                )
                              : SizedBox(
                                  width: size.width * 0.25,
                                  child: ElevatedButton(
                                    onPressed: () =>
                                        onUploadOperationBtnPressed(
                                            context,
                                            widget.packageUniqueId!,
                                            widget.localStoredItemPackageName!,
                                            widget.localStoredItemInformation,
                                            prefs,
                                            uploadPackageBloc,
                                            networkConnectionBloc),
                                    child: Text('Upload'),
                                  ),
                                ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      widget.isCurrentPackage
                          ? SizedBox(
                              width: size.width * 0.25,
                              child: ElevatedButton(
                                onPressed: () => onSaveOperationBtnPressed(
                                    context,
                                    widget.packageNameController!,
                                    widget.random!,
                                    widget.localStoredItemInformation),
                                child: Text('Save'),
                              ),
                            )
                          : SizedBox(
                              width: size.width * 0.25,
                              child: ElevatedButton(
                                onPressed: () => onDeleteOperationBtnPressed(
                                  context,
                                  widget.index!,
                                  hiveOperationInstance,
                                ),
                                child: Text('Delete'),
                              ),
                            ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      SizedBox(
                        width: size.width * 0.25,
                        child: ElevatedButton(
                          onPressed: () => jumpToLayTravelerViewPackageScreen(
                              context, widget.localStoredItemInformation),
                          child: Text('View'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}

bool checkIfAlreadyUploadedPackage(
    SharedPreferenceHelper prefs, String packageId) {
  List<String>? storedPackageId = prefs.getUploadedPackageIds();
  if (storedPackageId == null) {
    return false;
  }
  if (storedPackageId.contains(packageId)) {
    return true;
  }
  return false;
}

void onUploadOperationBtnPressed(
    BuildContext context,
    int packageUniqueId,
    String localStoredItemPackageName,
    List<LocalStoreInformation> localStoredItemInformation,
    SharedPreferenceHelper prefs,
    UploadPackageBloc uploadPackageBloc,
    NetworkConnectionBloc networkConnectionBloc) {
  ///prefs to set the current packageName to upload
  prefs.setItineraryPackageName(packageName: localStoredItemPackageName);

  ///save the current package package Id
  prefs.tempSetItineraryPackageId(tempPackageId: packageUniqueId.toString());

  ///function to upload the package.
  popUpItineraryBlocUploadOperationDialogOption(context, "upload", () {
    popScreen(context);
    convertUserDayValueAndUpload(
        context, true, localStoredItemInformation, uploadPackageBloc);
  });
}

void onDeleteOperationBtnPressed(BuildContext context, int itemIndex,
    HiveOperationsProvider hiveOperationInstance) {
  ///function to delete the package.
  popUpItineraryActionOrOperationDialogOption(context, "delete", () {
    hiveOperationInstance.deleteLayTravelerPackageItem(
      context,
      itemIndex,
    );
  });
}

void onSaveOperationBtnPressed(
  BuildContext context,
  TextEditingController packageNameController,
  Random random,
  List<LocalStoreInformation> localStoredItemInformation,
) {
  ///function to save the package.
  popUpItineraryActionOrOperationDialogOption(context, "save", () {
    insertPackageToStorage(
      context,
      packageNameController.text,
      random,
      localStoredItemInformation,
    );
  });
}
