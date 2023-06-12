// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_information_geo_points_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoPointsResponse _$$_GeoPointsResponseFromJson(Map<String, dynamic> json) =>
    _$_GeoPointsResponse(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GeoPointsResponseToJson(
        _$_GeoPointsResponse instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
