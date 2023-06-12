import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/hive_model/local_store_lay_traveler.dart';
import '../../../model/hive_model/local_store_model.dart';
import '../../services/local_storage/hive/hive_store_provider.dart';


///check if the similar package package exists to the system.
Future<bool> checkIfPackageAlreadyExists(BuildContext context, String packageName,
    List<LocalStoreInformation> localStoreInformation) async {
  LocalStoreLayTravelerInformation localStoreLayTravelerInfo =
  new LocalStoreLayTravelerInformation()
    ..localStoreInformationPackageList = localStoreInformation
    ..packageName = packageName;
  final hiveOperationProvider = context.read<HiveOperationsProvider>();
  bool isAlreadyExisted = await hiveOperationProvider.checkPackageAlreadyExist(
      context, localStoreLayTravelerInfo);
  return isAlreadyExisted;
}