// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_package_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadPackageRequest _$$_UploadPackageRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UploadPackageRequest(
      isCompletePackage: json['isCompletePackage'] as bool,
      userSingleDayList: (json['userSingleDayList'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_UploadPackageRequestToJson(
        _$_UploadPackageRequest instance) =>
    <String, dynamic>{
      'isCompletePackage': instance.isCompletePackage,
      'userSingleDayList': instance.userSingleDayList,
    };
