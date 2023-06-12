// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_geolocations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoLocationsUserPost _$$_GeoLocationsUserPostFromJson(
        Map<String, dynamic> json) =>
    _$_GeoLocationsUserPost(
      srid: json['srid'] as int?,
      geoPointsUserPost: json['points'] == null
          ? null
          : GeoPointsUserPost.fromJson(json['points'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeoLocationsUserPostToJson(
        _$_GeoLocationsUserPost instance) =>
    <String, dynamic>{
      'srid': instance.srid,
      'points': instance.geoPointsUserPost?.toJson(),
    };
