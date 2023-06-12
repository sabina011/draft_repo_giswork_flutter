import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post_video.freezed.dart';
part 'user_post_video.g.dart';

@freezed
abstract class VideosUserPost with _$VideosUserPost {
  const factory VideosUserPost(
      {@JsonKey(name: "video_post") String? imagePost}) = _VideosUserPost;

  factory VideosUserPost.fromJson(Map<String, dynamic> json) =>
      _$VideosUserPostFromJson(json);
}
