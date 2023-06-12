import 'package:injectable/injectable.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_response.dart';

import '../../../domain/package_information/datastore/package_information_datastore.dart';
import '../../../domain/package_information/repository/package_information_repository.dart';


@LazySingleton(as: GetPackageInformationRepository)
class GetPackageInformationRepositoryImpl extends GetPackageInformationRepository {
  final GetPackageInformationDataStore getPackageInformationDataStore;
  GetPackageInformationRepositoryImpl(this.getPackageInformationDataStore);

  @override
  Future<PackageInformationResponse> getPackageInformation(String query) async {
    try {
      final result = await getPackageInformationDataStore.getPackageInformation(query);
      return result;
    } catch (ex) {
      print("Error place information data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
