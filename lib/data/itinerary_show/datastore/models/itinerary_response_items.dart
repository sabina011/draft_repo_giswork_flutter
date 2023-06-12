import 'package:freezed_annotation/freezed_annotation.dart';

import 'itinerary_main_place_items.dart';

part 'itinerary_response_items.freezed.dart';
part 'itinerary_response_items.g.dart';



@freezed
abstract class ItineraryShowItemsResponse with _$ItineraryShowItemsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory ItineraryShowItemsResponse({
    @JsonKey(name:"main_place") required String mainPlaceName,
    @JsonKey(name:"main_place_id")required int mainPlaceId,
    @JsonKey(name:"travelled_place") required int placeCount,
    @JsonKey(name:"data") required List<ItineraryPlaceInformationResponse> itineraryPlaceInformationResponse,
  }) = _ItineraryShowItemsResponse;

  factory ItineraryShowItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$ItineraryShowItemsResponseFromJson(json);
}
