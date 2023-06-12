part of 'user_itinerary_package_information_bloc.dart';

@freezed
abstract class GetUserItineraryPackageInformationState
    with _$GetUserItineraryPackageInformationState {
  const factory GetUserItineraryPackageInformationState.initial() = _Initial;

  const factory GetUserItineraryPackageInformationState.loading() = _Loading;

  const factory GetUserItineraryPackageInformationState.success({
    required UserItineraryPackageInformationResponse userItineraryPackageResponse
  }) =_Success;

  const factory GetUserItineraryPackageInformationState.error({
    required String errMsg})=_Error;


}