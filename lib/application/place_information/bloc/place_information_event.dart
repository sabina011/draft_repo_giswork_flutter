part of 'place_information_bloc.dart';

@freezed
abstract class GetPlaceInformationEvent with _$GetPlaceInformationEvent {
  const factory GetPlaceInformationEvent.getPlaceInformation({
    required String place_name,
  }) = _GetPlaceInformationEvent;
}
