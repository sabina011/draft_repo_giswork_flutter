// abstract class NetworkConnectionEvent {}
//
// class NetworkConnectionObserve extends NetworkConnectionEvent {}
//
// class NetworkConnectionNotify extends NetworkConnectionEvent {
//   final bool isConnected;
//
//   NetworkConnectionNotify({this.isConnected = false});
// }

part of 'connection_bloc.dart';

@freezed
abstract class NetworkConnectionEvent with _$NetworkConnectionEvent {
  const factory NetworkConnectionEvent.networkObserve() =
      _NetworkConnectionObserve;
  const factory NetworkConnectionEvent.networkNotify({bool? isConnected}) = _NetworkConnectionNotify;

}
