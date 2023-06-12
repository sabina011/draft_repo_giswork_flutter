// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacesResponse _$$_PlacesResponseFromJson(Map<String, dynamic> json) =>
    _$_PlacesResponse(
      name: json['name'] as String?,
      getPlaceGeoLocations: json['geo_location'] == null
          ? null
          : GetPlaceGeoLocations.fromJson(
              json['geo_location'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_PlacesResponseToJson(_$_PlacesResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'geo_location': instance.getPlaceGeoLocations?.toJson(),
      'image': instance.image,
    };
