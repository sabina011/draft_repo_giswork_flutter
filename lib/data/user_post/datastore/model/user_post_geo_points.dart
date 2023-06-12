import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post_geo_points.freezed.dart';
part 'user_post_geo_points.g.dart';

@freezed
abstract class GeoPointsUserPost with _$GeoPointsUserPost {
  @JsonSerializable(explicitToJson: true)
  const factory GeoPointsUserPost(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude}) = _GeoPointsUserPost;

  factory GeoPointsUserPost.fromJson(Map<String, dynamic> json) =>
      _$GeoPointsUserPostFromJson(json);
}
