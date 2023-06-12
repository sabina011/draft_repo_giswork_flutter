import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_package_request.freezed.dart';
part 'upload_package_request.g.dart';

@freezed
abstract class UploadPackageRequest with _$UploadPackageRequest {
  const factory UploadPackageRequest({
    required bool isCompletePackage,
    required List<Map<String, dynamic>> userSingleDayList,
  }) = _UploadPackageRequest;

  factory UploadPackageRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadPackageRequestFromJson(json);
}
