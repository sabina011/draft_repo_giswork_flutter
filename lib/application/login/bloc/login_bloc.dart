import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/domain/session/repository/session_repository.dart';

import '../../../data/session/datastore/models/login_response.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetSessionRepository sessionRepository;
  final SharedPreferenceHelper sharedPreferenceHelper;

  LoginBloc(this.sessionRepository, this.sharedPreferenceHelper)
      : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(login: (username, password) async {
        emit(LoginState.loading());
        try {
          final response = await sessionRepository.userLogin(
            username,
            password,
          );
          emit(
            LoginState.success(loginResponse: response),
          );
          ///set access token and refresh token
          sharedPreferenceHelper.setUserAccessToken(
              userAccessToken: response.accessToken);
          sharedPreferenceHelper.setUserRefreshToken(
              userRefreshToken: response.refreshToken);
        } on DioError catch (ex) {
          emit(
            LoginState.error(errMsg: ex.toString()),
          );
        } catch (ex) {
          emit(
            LoginState.error(
              errMsg: ex.toString(),
            ),
          );
        }
      });
    });
  }
}
