// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary_response_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItineraryShowItemsResponse _$$_ItineraryShowItemsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ItineraryShowItemsResponse(
      mainPlaceName: json['main_place'] as String,
      mainPlaceId: json['main_place_id'] as int,
      placeCount: json['travelled_place'] as int,
      itineraryPlaceInformationResponse: (json['data'] as List<dynamic>)
          .map((e) => ItineraryPlaceInformationResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItineraryShowItemsResponseToJson(
        _$_ItineraryShowItemsResponse instance) =>
    <String, dynamic>{
      'main_place': instance.mainPlaceName,
      'main_place_id': instance.mainPlaceId,
      'travelled_place': instance.placeCount,
      'data': instance.itineraryPlaceInformationResponse
          .map((e) => e.toJson())
          .toList(),
    };
