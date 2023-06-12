import 'package:freezed_annotation/freezed_annotation.dart';

part 'customize_response.freezed.dart';
part 'customize_response.g.dart';

@freezed
abstract class CustomizeResponse with _$CustomizeResponse {
  @JsonSerializable(explicitToJson: true)
  const factory CustomizeResponse({
    @JsonKey(name: "message") required String successMsg,
  }) = _CustomizeResponse;

  factory CustomizeResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomizeResponseFromJson(json);
}
