part of 'user_itinerary_package_information_bloc.dart';


@freezed
abstract class GetUserItineraryPackageInformationEvent
    with _$GetUserItineraryPackageInformationEvent {
  const factory GetUserItineraryPackageInformationEvent.getUserItineraryPackageInformationResponse({
    required int userId,
    required int packageID,
  }) = _GetUserItineraryPackageInformationEvent;
}
