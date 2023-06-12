import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_geo_points.dart';

part 'places_geolocations.freezed.dart';
part 'places_geolocations.g.dart';

@freezed
abstract class GetPlaceGeoLocations with _$GetPlaceGeoLocations {
  @JsonSerializable(explicitToJson: true)
  const factory GetPlaceGeoLocations({
    @JsonKey(name: "srid") int? srid,
    @JsonKey(name: "points") GeoPointsUserPost? geoPointsUserPost,
  }) = _GetPlaceGeoLocations;

  factory GetPlaceGeoLocations.fromJson(Map<String, dynamic> json) =>
      _$GetPlaceGeoLocationsFromJson(json);
}
