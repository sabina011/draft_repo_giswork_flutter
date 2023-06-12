import 'package:myapp/data/user_itinerary_information/datastore/models/user_itinerary_package_response.dart';

abstract class GetUserItineraryPackageInformationRepository {
  Future<UserItineraryPackageInformationResponse>
      getUserItineraryPackageInformation(int UserID, int packageID);
}
