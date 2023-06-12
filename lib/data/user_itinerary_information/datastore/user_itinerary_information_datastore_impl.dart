import 'package:injectable/injectable.dart';
import 'package:myapp/data/user_itinerary_information/datastore/models/user_itinerary_package_response.dart';
import 'package:myapp/data/user_itinerary_information/user_itinerary_information_api_service.dart';
import 'package:myapp/domain/user_itinerary_information/datastore/user_itinerary_package_information_datastore.dart';

@LazySingleton(as: GetUserItineraryPackageInformationDataStore)
class GetUserItineraryPackageInformationDataStoreImpl
    extends GetUserItineraryPackageInformationDataStore {
  final GetUserItineraryPackageInformationApiService
      getUserItineraryPackageInformationApiService;

  GetUserItineraryPackageInformationDataStoreImpl(
    this.getUserItineraryPackageInformationApiService,
  );

  @override
  Future<UserItineraryPackageInformationResponse>
      getUserItineraryPackageInformation(int userID, int packageID) {
    return getUserItineraryPackageInformationApiService
        .getUserItineraryPackageInformation(userID, packageID);
  }
}
