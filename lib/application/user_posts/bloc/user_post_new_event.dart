part of 'user_post_new_bloc.dart';


@freezed
class UserPostGetEvent with _$UserPostGetEvent{
  const factory UserPostGetEvent.getUserPost({required int day}) = _GetUserPost;
}