import 'package:freezed_annotation/freezed_annotation.dart';

import 'place_information_geo_points_response.dart';

part 'place_information_geo_location_response.freezed.dart';
part 'place_information_geo_location_response.g.dart';

@freezed
abstract class GeoLocationResponse with _$GeoLocationResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GeoLocationResponse({
    @JsonKey(name:"srid") required double geoPointSrid,
    @JsonKey(name: "points") required GeoPointsResponse geoPointsResponse,
  }) = _GeoLocationResponse;

  factory GeoLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationResponseFromJson(json);
}