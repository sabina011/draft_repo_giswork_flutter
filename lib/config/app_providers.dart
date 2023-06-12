import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../application/authentication/authentication_state.dart';
import '../application/provider/check_drop_down_value.dart';
import '../application/provider/location_service_provider.dart';
import '../utils/services/local_storage/hive/hive_store_provider.dart';
import '../utils/services/native/media/media_file_selector.dart';

class EmbeddedGISProviders {
  List<SingleChildWidget> get ConfigureAppProviders => _configGisProviders();

  List<SingleChildWidget> _configGisProviders() {
    ///list of providers
    var singleChildWidgetList = [
      ChangeNotifierProvider(create: (_) => FileDataProvider()),
      ChangeNotifierProvider(create: (_) => LocationServiceProvider()),
      ChangeNotifierProvider(create: (_) => AuthenticationUserState()),
      ChangeNotifierProvider(create: (_) => HiveOperationsProvider()),
      ChangeNotifierProvider(create: (_) => CheckDropDownValue()),
    ];
    return singleChildWidgetList;
  }
}
