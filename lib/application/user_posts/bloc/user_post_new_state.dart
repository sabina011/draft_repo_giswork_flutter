
part of  'user_post_new_bloc.dart';

@freezed
class UserPostState with _$UserPostState{

  const factory UserPostState.initial() = _Initial;
  const factory UserPostState.loading() = _Loading;
  const factory UserPostState.success({
    required List<UserPostItem> userPostItem
  }) = _Success;
  const factory UserPostState.error({required String errMsg}) =_Error;
}