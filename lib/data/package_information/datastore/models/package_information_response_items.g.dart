// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_information_response_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageInformationItemsResponse _$$_PackageInformationItemsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PackageInformationItemsResponse(
      id: json['package_id'] as int,
      packageName: json['package_name'] as String,
      packagesInfoMainPlaceItemResponse: (json['main_places'] as List<dynamic>)
          .map((e) => PackageInfoMainPlaceItemsResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      contributors: (json['contributors'] as List<dynamic>)
          .map((e) =>
              ContributorsItemsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PackageInformationItemsResponseToJson(
        _$_PackageInformationItemsResponse instance) =>
    <String, dynamic>{
      'package_id': instance.id,
      'package_name': instance.packageName,
      'main_places': instance.packagesInfoMainPlaceItemResponse
          .map((e) => e.toJson())
          .toList(),
      'contributors': instance.contributors.map((e) => e.toJson()).toList(),
    };
