import 'package:injectable/injectable.dart';
import 'package:myapp/data/user_itinerary_information/datastore/models/user_itinerary_package_response.dart';

import '../../constant/app_const.dart';
import '../network/dio_client.dart';
import '../sharedPreference/sharedpreference_helper.dart';


@injectable
class GetUserItineraryPackageInformationApiService {
  final DioClient dioClient;
  final SharedPreferenceHelper prefs;

  GetUserItineraryPackageInformationApiService(this.prefs, this.dioClient);

  Future<UserItineraryPackageInformationResponse> getUserItineraryPackageInformation(
      int userID, int packageID) async {
    final response =
    await dioClient.dio.get('${base_url}user-itinerary?user_id=$userID&package_id=$packageID');

    if (response.statusCode == 200) {
      return UserItineraryPackageInformationResponse.fromJson(response.data);
    }
    return throw new UnimplementedError();
  }
}