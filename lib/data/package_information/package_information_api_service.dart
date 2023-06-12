import 'package:injectable/injectable.dart';
import 'package:myapp/constant/app_const.dart';
import 'package:myapp/data/network/dio_client.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_response.dart';

import '../sharedPreference/sharedpreference_helper.dart';

@injectable
class GetPackageInformationApiService {
  final DioClient dioClient;
  final SharedPreferenceHelper prefs;

  GetPackageInformationApiService(this.prefs, this.dioClient);

  Future<PackageInformationResponse> getPackageInformation(String query) async {
    final response =
        await dioClient.dio.get('${base_url}packages?package_name=$query');

    if (response.statusCode == 200) {
      var result = PackageInformationResponse.fromJson(response.data);
      return result;
    }
    return throw new UnimplementedError();
  }
}
