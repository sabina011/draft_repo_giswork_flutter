import 'package:myapp/data/customize/datastore/models/customize_response.dart';

abstract class GetCustomizeRepository {
  Future<CustomizeResponse> customizeToServer(Map<String,dynamic> customizerUserInput);
}