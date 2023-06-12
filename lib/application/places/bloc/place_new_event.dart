part of 'place_new_bloc.dart';

@freezed
class GetPlacesEvent with _$GetPlacesEvent{
  const factory GetPlacesEvent.getPlaces({required String place}) = _$GetPlace;
}