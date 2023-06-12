// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_information_response_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceInformationItemsResponse _$$_PlaceInformationItemsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceInformationItemsResponse(
      id: json['id'] as int,
      day: json['day'] as int,
      userId: json['user'] as int,
      mainPlaceId: json['main_place_id'] as int,
      location_name: json['location_name'] as String,
      geoLocationResponse: GeoLocationResponse.fromJson(
          json['geo_location'] as Map<String, dynamic>),
      geoImagesResponse: (json['images'] as List<dynamic>)
          .map((e) => GeoImagesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlaceInformationItemsResponseToJson(
        _$_PlaceInformationItemsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'user': instance.userId,
      'main_place_id': instance.mainPlaceId,
      'location_name': instance.location_name,
      'geo_location': instance.geoLocationResponse.toJson(),
      'images': instance.geoImagesResponse.map((e) => e.toJson()).toList(),
    };
