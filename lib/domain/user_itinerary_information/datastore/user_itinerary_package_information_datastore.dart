import 'package:myapp/data/user_itinerary_information/datastore/models/user_itinerary_package_response.dart';

abstract class GetUserItineraryPackageInformationDataStore {
  Future<UserItineraryPackageInformationResponse> getUserItineraryPackageInformation(
      int UserID, int packageID);
}
