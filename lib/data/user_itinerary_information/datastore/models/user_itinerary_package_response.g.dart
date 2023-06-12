// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_itinerary_package_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserItineraryPackageInformationResponse
    _$$_UserItineraryPackageInformationResponseFromJson(
            Map<String, dynamic> json) =>
        _$_UserItineraryPackageInformationResponse(
          userItineraryPackageItemResponse: (json['data'] as List<dynamic>)
              .map((e) => UserItineraryPackageItemsResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_UserItineraryPackageInformationResponseToJson(
        _$_UserItineraryPackageInformationResponse instance) =>
    <String, dynamic>{
      'data': instance.userItineraryPackageItemResponse
          .map((e) => e.toJson())
          .toList(),
    };
