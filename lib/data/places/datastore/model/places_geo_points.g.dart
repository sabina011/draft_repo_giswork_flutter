// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_geo_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoPlacesPoints _$$_GeoPlacesPointsFromJson(Map<String, dynamic> json) =>
    _$_GeoPlacesPoints(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_GeoPlacesPointsToJson(_$_GeoPlacesPoints instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
