import 'package:freezed_annotation/freezed_annotation.dart';

import 'places_geolocations.dart';

part 'place_response.freezed.dart';
part 'place_response.g.dart';

@freezed
abstract class PlacesResponse with _$PlacesResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PlacesResponse({
    required String? name,
    @JsonKey(name: "geo_location") GetPlaceGeoLocations? getPlaceGeoLocations,
    required String? image,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesResponseFromJson(json);
}
