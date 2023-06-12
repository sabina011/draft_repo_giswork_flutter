import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_post_geolocations.dart';
import 'user_post_image.dart';
import 'user_post_video.dart';

part 'user_post_item.freezed.dart';
part 'user_post_item.g.dart';

@freezed
abstract class UserPostItem with _$UserPostItem {
  @JsonSerializable(explicitToJson: true)
  const factory UserPostItem({
    required int? id,
    required int? day,
    required String? hotels_and_resturants,
    required String? geographical_info,
    required String? transportation_medium,
    required String? route_information,
    required String? seasonal_information,
    required String? created_at,
    required int? user,
    required int? max_day,
    required String? location_name,
    @JsonKey(name: "geo_location") GeoLocationsUserPost? geoLocationsUserPost,
    @JsonKey(name: "images") List<ImagesUserPost>? images,
    @JsonKey(name: "videos") List<VideosUserPost>? videos,
  }) = _UserPostItem;

  factory UserPostItem.fromJson(Map<String, dynamic> json) =>
      _$UserPostItemFromJson(json);
}
