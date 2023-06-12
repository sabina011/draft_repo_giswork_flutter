// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_geo_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoPointsUserPost _$$_GeoPointsUserPostFromJson(Map<String, dynamic> json) =>
    _$_GeoPointsUserPost(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_GeoPointsUserPostToJson(
        _$_GeoPointsUserPost instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
