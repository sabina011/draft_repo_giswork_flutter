import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/data/user_post/datastore/model/user_post_geo_points.dart';

part 'user_post_geolocations.freezed.dart';
part 'user_post_geolocations.g.dart';

@freezed
abstract class GeoLocationsUserPost with _$GeoLocationsUserPost {
  @JsonSerializable(explicitToJson: true)
  const factory GeoLocationsUserPost({
    @JsonKey(name: "srid") int? srid,
    @JsonKey(name: "points") GeoPointsUserPost? geoPointsUserPost,
  }) = _GeoLocationsUserPost;

  factory GeoLocationsUserPost.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationsUserPostFromJson(json);
}
