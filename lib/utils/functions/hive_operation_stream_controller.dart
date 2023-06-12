import '../../constant/app_const.dart';
import '../../model/hive_model/local_store_lay_traveler.dart';
import '../services/local_storage/hive/hive_store_provider.dart';

List<LocalStoreLayTravelerInformation>? getLocalStoreLayTravelerInformation(
    HiveOperationsProvider operationProviderHive) {
  operationProviderHive
      .localUserDayHiveCall(layTravelerItineraryListHiveBoxName);
  return operationProviderHive.isLayTravelerItineraryListHiveBoxHasData
      ? operationProviderHive.localStoreLayTravelerInfoList
      : [];
}
