import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../itinerary_show/datastore/models/itinerary_main_place_items.dart';

part 'user_itinerary_package_items_response.freezed.dart';
part 'user_itinerary_package_items_response.g.dart';

@freezed
abstract class UserItineraryPackageItemsResponse
    with _$UserItineraryPackageItemsResponse {
  @JsonSerializable(explicitToJson: true)

  const factory UserItineraryPackageItemsResponse({
    @JsonKey(name: "main_place_id") required int mainPlaceId,
    @JsonKey(name: "main_place_name") required String mainPlaceName,
    @JsonKey(name: "places_count") required int mainPlaceLocalPlacesCount,
    @JsonKey(name: "places") required List<ItineraryPlaceInformationResponse>
            itineraryPlaceInformationResponse,
  }) = _UserItineraryPackageItemsResponse;

  factory UserItineraryPackageItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UserItineraryPackageItemsResponseFromJson(json);
}
