part of 'itinerary_show_bloc.dart';

@freezed
abstract class GetItineraryShowState with _$GetItineraryShowState {
  const factory GetItineraryShowState.initial() = _Initial;

  const factory GetItineraryShowState.loading() = _Loading;

  const factory GetItineraryShowState.success(
          {required List<ItineraryShowItemsResponse> itineraryShowItems}) =
      _Success;

  const factory GetItineraryShowState.error({
    required String errMsg,
  }) = _Error;
}
