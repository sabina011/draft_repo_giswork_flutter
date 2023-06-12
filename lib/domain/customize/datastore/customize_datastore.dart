import 'package:myapp/data/customize/datastore/models/customize_response.dart';


abstract class GetCustomizeDataStore {
  Future<CustomizeResponse> customizeToServer(Map<String,dynamic> customizerUserInput);
}
