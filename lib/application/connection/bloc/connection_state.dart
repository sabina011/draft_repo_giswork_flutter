part of 'connection_bloc.dart';
@freezed
class  NetworkConnectionState with _$NetworkConnectionState{
  const factory NetworkConnectionState.initial() = _Initial;
  const factory NetworkConnectionState.success() = _Success;
  const factory NetworkConnectionState.failure () =_Failure;
}