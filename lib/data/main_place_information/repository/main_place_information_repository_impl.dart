import 'package:injectable/injectable.dart';
import 'package:myapp/domain/main_place_information/datastore/main_place_information_datastore.dart';

import '../../../domain/main_place_information/repository/main_place_information_repository.dart';
import '../datastore/models/main_place_information_response_items.dart';


@LazySingleton(as: GetMainPlaceInformationRepository)
class GetMainPlaceInformationRepositoryImpl extends GetMainPlaceInformationRepository {
  final GetMainPlaceInformationDataStore getMainPlaceInformationDataStore;
  GetMainPlaceInformationRepositoryImpl(this.getMainPlaceInformationDataStore);

  @override
  Future<List<MainPlaceInformationItemsResponse>> getMainPlaceInformation() async {
    try {
      final result = await getMainPlaceInformationDataStore.getMainPlaceInformation();
      return result;
    } catch (ex) {
      print("Error place information data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
