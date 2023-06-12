import 'package:myapp/data/package_information/datastore/models/package_information_response.dart';


abstract class GetPackageInformationDataStore{
  Future<PackageInformationResponse> getPackageInformation(String query);
}