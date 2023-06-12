// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_information_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageInformationResponse _$$_PackageInformationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PackageInformationResponse(
      dataSize: json['data_size'] as int,
      packageInfoResponse: (json['data'] as List<dynamic>)
          .map((e) => PackageInformationItemsResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PackageInformationResponseToJson(
        _$_PackageInformationResponse instance) =>
    <String, dynamic>{
      'data_size': instance.dataSize,
      'data': instance.packageInfoResponse.map((e) => e.toJson()).toList(),
    };
