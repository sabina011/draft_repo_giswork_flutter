import 'package:connectivity/connectivity.dart';

import '../../application/connection/bloc/connection_bloc.dart';

class NetworkConnectionHelper {
  static void observeNetworkConnection() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        NetworkConnectionBloc()
            .add(NetworkConnectionEvent.networkNotify());
      } else {
        NetworkConnectionBloc().add(
            NetworkConnectionEvent.networkNotify(isConnected: true));
      }
    });
  }
}
