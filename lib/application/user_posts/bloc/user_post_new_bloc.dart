import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/domain/user_post/repository/user_post_repository.dart';

import '../../../data/user_post/datastore/model/user_post_item.dart';

part 'user_post_new_bloc.freezed.dart';
part 'user_post_new_event.dart';
part 'user_post_new_state.dart';

@injectable
class UserPostBloc extends Bloc<UserPostGetEvent, UserPostState> {
  final GetUserPostRepository getUserPostRepository;

  UserPostBloc(this.getUserPostRepository) : super(const _Initial()) {
    on<UserPostGetEvent>((event, emit) async {
      emit(const UserPostState.loading());
      try {
        final result = await getUserPostRepository.getUserPost(event.day);
        emit(UserPostState.success(userPostItem: result));
      } on DioError catch (err) {
        emit(UserPostState.error(
          errMsg: err.message,
        ));
      }
      catch(ex){
        emit(UserPostState.error(errMsg: ex.toString()));
      }
    });
  }
}
