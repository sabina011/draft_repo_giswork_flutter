import 'package:freezed_annotation/freezed_annotation.dart';

part 'customize_request.freezed.dart';
part 'customize_request.g.dart';

@freezed
abstract class CustomizeRequest with _$CustomizeRequest {
  const factory CustomizeRequest({
    required Map<String, dynamic> customUserInputs,
  }) = _CustomizeRequest;

  factory CustomizeRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomizeRequestFromJson(json);
}
