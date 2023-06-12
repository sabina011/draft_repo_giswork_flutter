import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_geo_points.freezed.dart';
part 'places_geo_points.g.dart';

@freezed
abstract class GeoPlacesPoints with _$GeoPlacesPoints {
  @JsonSerializable(explicitToJson: true)
  const factory GeoPlacesPoints(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude}) = _GeoPlacesPoints;

  factory GeoPlacesPoints.fromJson(Map<String, dynamic> json) =>
      _$GeoPlacesPointsFromJson(json);
}
