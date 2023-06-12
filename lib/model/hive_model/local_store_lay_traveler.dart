import 'package:hive/hive.dart';

import 'local_store_model.dart';

part 'local_store_lay_traveler.g.dart';

@HiveType(typeId: 4)
class LocalStoreLayTravelerInformation extends HiveObject {
  @HiveField(0)
  late String packageName;

  @HiveField(1)
  late int packageUniqueId;

  @HiveField(2)
  late List<LocalStoreInformation> localStoreInformationPackageList;
}
