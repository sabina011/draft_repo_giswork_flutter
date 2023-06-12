part  of 'upload_package_bloc.dart';

@freezed
abstract class UploadPackageState with _$UploadPackageState{

  const factory  UploadPackageState.initial() = _Initial;
  const factory  UploadPackageState.loading() = _Loading;
  const factory  UploadPackageState.success({required UploadPackageResponse uploadPackageResponse}) = _Success;
  const factory  UploadPackageState.error({required String errMsg}) = _Error;

}