import 'package:injectable/injectable.dart';
import 'package:myapp/data/user_itinerary_information/datastore/models/user_itinerary_package_response.dart';
import 'package:myapp/domain/user_itinerary_information/datastore/user_itinerary_package_information_datastore.dart';
import 'package:myapp/domain/user_itinerary_information/repository/user_itinerary_package_information_repository.dart';


@LazySingleton(as: GetUserItineraryPackageInformationRepository)
class GetUserItineraryPackageInformationRepositoryImpl
    extends GetUserItineraryPackageInformationRepository {
  final GetUserItineraryPackageInformationDataStore
  getUserItineraryPackageInformationDataStore;

  GetUserItineraryPackageInformationRepositoryImpl(
      this.getUserItineraryPackageInformationDataStore);

  @override
  Future<
      UserItineraryPackageInformationResponse> getUserItineraryPackageInformation(
      int userID, int packageID) async {
    try {
      final result =
      await getUserItineraryPackageInformationDataStore
          .getUserItineraryPackageInformation(userID, packageID);
      return result;
    } catch (ex) {
      print("Error place information data  ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}

