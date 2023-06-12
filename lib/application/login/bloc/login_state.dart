part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.error({required String errMsg}) = _Error;

  const factory LoginState.success({required LoginResponse loginResponse}) =
      _Success;
}
