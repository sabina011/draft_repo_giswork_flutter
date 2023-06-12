import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/helpers/network_connection_helper.dart';

part 'connection_bloc.freezed.dart';
part 'connection_event.dart';
part 'connection_state.dart';

@Injectable()
class NetworkConnectionBloc
    extends Bloc<NetworkConnectionEvent, NetworkConnectionState> {
  NetworkConnectionBloc._() : super(const _Initial()) {
    on<_NetworkConnectionObserve>(_observe);
    on<_NetworkConnectionNotify>(_notifyStatus);
  }

  static final NetworkConnectionBloc _instance = NetworkConnectionBloc._();

  factory NetworkConnectionBloc() => _instance;

  void _observe(event, emit) {
    NetworkConnectionHelper.observeNetworkConnection();
  }

  void _notifyStatus(_NetworkConnectionNotify event, emit) {
    event.isConnected! ? emit(_Success()) : emit(_Failure());
  }
}
