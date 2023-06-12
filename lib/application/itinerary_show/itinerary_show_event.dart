part of 'itinerary_show_bloc.dart';


@freezed
abstract class GetItineraryShowEvent with _$GetItineraryShowEvent{
  const factory GetItineraryShowEvent.getItinerary({required String packageName }) = _GetItineraryShowEvent;
}
