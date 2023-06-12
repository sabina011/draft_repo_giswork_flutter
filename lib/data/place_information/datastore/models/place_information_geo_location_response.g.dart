// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_information_geo_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoLocationResponse _$$_GeoLocationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GeoLocationResponse(
      geoPointSrid: (json['srid'] as num).toDouble(),
      geoPointsResponse:
          GeoPointsResponse.fromJson(json['points'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeoLocationResponseToJson(
        _$_GeoLocationResponse instance) =>
    <String, dynamic>{
      'srid': instance.geoPointSrid,
      'points': instance.geoPointsResponse.toJson(),
    };
