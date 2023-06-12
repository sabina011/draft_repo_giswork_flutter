import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_information_geo_points_response.freezed.dart';
part 'place_information_geo_points_response.g.dart';

@freezed
abstract class GeoPointsResponse with _$GeoPointsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GeoPointsResponse({
    @JsonKey(name:"latitude") required double latitude,
    @JsonKey(name: "longitude") required double longitude,
  }) = _GeoPointsResponse;

  factory GeoPointsResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoPointsResponseFromJson(json);
}