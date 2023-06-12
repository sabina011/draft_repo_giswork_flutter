// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_information_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPlaceInformationResponse _$$_GetPlaceInformationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPlaceInformationResponse(
      placeInformationResponse: (json['placeInformationResponse']
              as List<dynamic>)
          .map((e) =>
              PlaceInformationItemsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetPlaceInformationResponseToJson(
        _$_GetPlaceInformationResponse instance) =>
    <String, dynamic>{
      'placeInformationResponse': instance.placeInformationResponse,
    };
