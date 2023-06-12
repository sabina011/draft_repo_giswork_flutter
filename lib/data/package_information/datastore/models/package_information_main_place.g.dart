// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_information_main_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageInfoMainPlaceItemsResponse
    _$$_PackageInfoMainPlaceItemsResponseFromJson(Map<String, dynamic> json) =>
        _$_PackageInfoMainPlaceItemsResponse(
          id: json['id'] as int,
          name: json['name'] as String,
          places: (json['places'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$_PackageInfoMainPlaceItemsResponseToJson(
        _$_PackageInfoMainPlaceItemsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'places': instance.places,
    };
