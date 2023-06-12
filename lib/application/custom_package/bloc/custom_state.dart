
part of 'custom_bloc.dart';

@freezed
class CustomPostState with _$CustomPostState{
  const factory CustomPostState.initial() =_Initial;
  const factory CustomPostState.loading() =_Loading;
  const factory CustomPostState.error({required String errorMsg}) = _Error;
  const factory CustomPostState.success({required String successMsg}) = _Success;
}