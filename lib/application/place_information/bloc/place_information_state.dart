part of 'place_information_bloc.dart';

@freezed
abstract class GetPlaceInformationState with _$GetPlaceInformationState {
  const factory GetPlaceInformationState.initial() = _Initial;

  const factory GetPlaceInformationState.loading() = _Loading;

  const factory GetPlaceInformationState.success({
    required List<PlaceInformationItemsResponse> getPlaceInformationResponse,
  }) = _Success;

  const factory GetPlaceInformationState.error({
    required String errMsg,
  }) = _Error;
}
