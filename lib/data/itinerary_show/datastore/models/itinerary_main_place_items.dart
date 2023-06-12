import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../place_information/datastore/models/place_information_geo_location_response.dart';
import '../../../place_information/datastore/models/place_information_images_response.dart';

part 'itinerary_main_place_items.freezed.dart';
part 'itinerary_main_place_items.g.dart';


@freezed
abstract class ItineraryPlaceInformationResponse with _$ItineraryPlaceInformationResponse {
  @JsonSerializable(explicitToJson: true)
  const factory ItineraryPlaceInformationResponse({
    @JsonKey(name:"id") required int id,
    @JsonKey(name:"day") required int day,
    @JsonKey(name:"location_name") required String locationName,
    @JsonKey(name:"geo_location") required GeoLocationResponse geoLocationResponse,
    @JsonKey(name:"images") required List<GeoImagesResponse> geoImagesResponse,
  }) = _ItineraryPlaceInformationResponse;

  factory ItineraryPlaceInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$ItineraryPlaceInformationResponseFromJson(json);
}
