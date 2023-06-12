import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_package_response.freezed.dart';
part 'upload_package_response.g.dart';

@freezed
abstract class UploadPackageResponse with _$UploadPackageResponse {
  @JsonSerializable(explicitToJson: true)
  const factory UploadPackageResponse({
    @JsonKey(name: "message") required String message,
  }) = _UploadPackageResponse;

  factory UploadPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadPackageResponseFromJson(json);
}
