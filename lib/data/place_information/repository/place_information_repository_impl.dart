import 'package:injectable/injectable.dart';

import '../../../domain/place_information/datastore/place_information_datastore.dart';
import '../../../domain/place_information/repository/place_information_repository.dart';
import '../datastore/models/place_information_response_items.dart';


@LazySingleton(as: GetPlaceInformationRepository)
class GetUploadPackageRepositoryImpl extends GetPlaceInformationRepository {
  final GetPlaceInformationDataStore getPlaceInformationDataStore;
  GetUploadPackageRepositoryImpl(this.getPlaceInformationDataStore);

  @override
  Future<List<PlaceInformationItemsResponse>> getPlaceInformation(String place_name) async {
    try {
      final result = await getPlaceInformationDataStore.getPlaceInformation(place_name);
      return result;
    } catch (ex) {
      print("Error place information data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
