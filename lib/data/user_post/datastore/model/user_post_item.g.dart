// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPostItem _$$_UserPostItemFromJson(Map<String, dynamic> json) =>
    _$_UserPostItem(
      id: json['id'] as int?,
      day: json['day'] as int?,
      hotels_and_resturants: json['hotels_and_resturants'] as String?,
      geographical_info: json['geographical_info'] as String?,
      transportation_medium: json['transportation_medium'] as String?,
      route_information: json['route_information'] as String?,
      seasonal_information: json['seasonal_information'] as String?,
      created_at: json['created_at'] as String?,
      user: json['user'] as int?,
      max_day: json['max_day'] as int?,
      location_name: json['location_name'] as String?,
      geoLocationsUserPost: json['geo_location'] == null
          ? null
          : GeoLocationsUserPost.fromJson(
              json['geo_location'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesUserPost.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => VideosUserPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserPostItemToJson(_$_UserPostItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'hotels_and_resturants': instance.hotels_and_resturants,
      'geographical_info': instance.geographical_info,
      'transportation_medium': instance.transportation_medium,
      'route_information': instance.route_information,
      'seasonal_information': instance.seasonal_information,
      'created_at': instance.created_at,
      'user': instance.user,
      'max_day': instance.max_day,
      'location_name': instance.location_name,
      'geo_location': instance.geoLocationsUserPost?.toJson(),
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'videos': instance.videos?.map((e) => e.toJson()).toList(),
    };
