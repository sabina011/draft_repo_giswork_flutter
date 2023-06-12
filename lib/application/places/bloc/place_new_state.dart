part of 'place_new_bloc.dart';

@freezed
class GetPlaceState with _$GetPlaceState{

  const factory GetPlaceState.initial() = _Initial;
  const factory GetPlaceState.loading() = _Loading;
  const factory GetPlaceState.success({required List<PlacesResponse> places }) = _Success;
  const factory GetPlaceState.error({required String errMsg }) = _Error;

}