// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_itinerary_package_items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserItineraryPackageItemsResponse
    _$$_UserItineraryPackageItemsResponseFromJson(Map<String, dynamic> json) =>
        _$_UserItineraryPackageItemsResponse(
          mainPlaceId: json['main_place_id'] as int,
          mainPlaceName: json['main_place_name'] as String,
          mainPlaceLocalPlacesCount: json['places_count'] as int,
          itineraryPlaceInformationResponse: (json['places'] as List<dynamic>)
              .map((e) => ItineraryPlaceInformationResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_UserItineraryPackageItemsResponseToJson(
        _$_UserItineraryPackageItemsResponse instance) =>
    <String, dynamic>{
      'main_place_id': instance.mainPlaceId,
      'main_place_name': instance.mainPlaceName,
      'places_count': instance.mainPlaceLocalPlacesCount,
      'places': instance.itineraryPlaceInformationResponse
          .map((e) => e.toJson())
          .toList(),
    };
