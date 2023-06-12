part of 'package_information_bloc.dart';

@freezed
abstract class GetPackageInformationState with _$GetPackageInformationState {
  const factory GetPackageInformationState.initial() = _Initial;

  const factory GetPackageInformationState.loading() = _Loading;

  const factory GetPackageInformationState.success({
    required PackageInformationResponse getPlaceInformationResponse,
  }) = _Success;

  const factory GetPackageInformationState.error({
    required String errMsg,
  }) = _Error;
}
