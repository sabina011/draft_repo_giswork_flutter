import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_information_images_response.freezed.dart';
part 'place_information_images_response.g.dart';

@freezed
abstract class GeoImagesResponse with _$GeoImagesResponse{
  @JsonSerializable(explicitToJson: true)
  const factory GeoImagesResponse({
    @JsonKey(name: "image_post") required String image_post
  }) = _GeoImagesResponse;

  factory GeoImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoImagesResponseFromJson(json);
}