import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post_image.freezed.dart';
part 'user_post_image.g.dart';

@freezed
abstract class ImagesUserPost with _$ImagesUserPost {
  @JsonSerializable(explicitToJson: true)
  const factory ImagesUserPost(
      {@JsonKey(name: "image_post") String? imagePost}) = _ImagesUserPost;

  factory ImagesUserPost.fromJson(Map<String, dynamic> json) =>
      _$ImagesUserPostFromJson(json);
}
