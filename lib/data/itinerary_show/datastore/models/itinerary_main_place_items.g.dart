// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary_main_place_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItineraryPlaceInformationResponse
    _$$_ItineraryPlaceInformationResponseFromJson(Map<String, dynamic> json) =>
        _$_ItineraryPlaceInformationResponse(
          id: json['id'] as int,
          day: json['day'] as int,
          locationName: json['location_name'] as String,
          geoLocationResponse: GeoLocationResponse.fromJson(
              json['geo_location'] as Map<String, dynamic>),
          geoImagesResponse: (json['images'] as List<dynamic>)
              .map((e) => GeoImagesResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ItineraryPlaceInformationResponseToJson(
        _$_ItineraryPlaceInformationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'location_name': instance.locationName,
      'geo_location': instance.geoLocationResponse.toJson(),
      'images': instance.geoImagesResponse.map((e) => e.toJson()).toList(),
    };
