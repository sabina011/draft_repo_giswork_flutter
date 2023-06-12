// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_geolocations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPlaceGeoLocations _$$_GetPlaceGeoLocationsFromJson(
        Map<String, dynamic> json) =>
    _$_GetPlaceGeoLocations(
      srid: json['srid'] as int?,
      geoPointsUserPost: json['points'] == null
          ? null
          : GeoPointsUserPost.fromJson(json['points'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetPlaceGeoLocationsToJson(
        _$_GetPlaceGeoLocations instance) =>
    <String, dynamic>{
      'srid': instance.srid,
      'points': instance.geoPointsUserPost?.toJson(),
    };
