part of 'main_place_information_bloc.dart';

@freezed
abstract class GetMainPlaceInformationState with _$GetMainPlaceInformationState {
  const factory GetMainPlaceInformationState.initial() = _Initial;

  const factory GetMainPlaceInformationState.loading() = _Loading;

  const factory GetMainPlaceInformationState.success({
    required List<MainPlaceInformationItemsResponse> getPlaceInformationResponse,
  }) = _Success;

  const factory GetMainPlaceInformationState.error({
    required String errMsg,
  }) = _Error;
}
