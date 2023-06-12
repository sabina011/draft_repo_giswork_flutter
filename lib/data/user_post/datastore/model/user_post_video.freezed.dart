// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_post_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideosUserPost _$VideosUserPostFromJson(Map<String, dynamic> json) {
  return _VideosUserPost.fromJson(json);
}

/// @nodoc
mixin _$VideosUserPost {
  @JsonKey(name: "video_post")
  String? get imagePost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosUserPostCopyWith<VideosUserPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosUserPostCopyWith<$Res> {
  factory $VideosUserPostCopyWith(
          VideosUserPost value, $Res Function(VideosUserPost) then) =
      _$VideosUserPostCopyWithImpl<$Res, VideosUserPost>;
  @useResult
  $Res call({@JsonKey(name: "video_post") String? imagePost});
}

/// @nodoc
class _$VideosUserPostCopyWithImpl<$Res, $Val extends VideosUserPost>
    implements $VideosUserPostCopyWith<$Res> {
  _$VideosUserPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePost = freezed,
  }) {
    return _then(_value.copyWith(
      imagePost: freezed == imagePost
          ? _value.imagePost
          : imagePost // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideosUserPostCopyWith<$Res>
    implements $VideosUserPostCopyWith<$Res> {
  factory _$$_VideosUserPostCopyWith(
          _$_VideosUserPost value, $Res Function(_$_VideosUserPost) then) =
      __$$_VideosUserPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "video_post") String? imagePost});
}

/// @nodoc
class __$$_VideosUserPostCopyWithImpl<$Res>
    extends _$VideosUserPostCopyWithImpl<$Res, _$_VideosUserPost>
    implements _$$_VideosUserPostCopyWith<$Res> {
  __$$_VideosUserPostCopyWithImpl(
      _$_VideosUserPost _value, $Res Function(_$_VideosUserPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePost = freezed,
  }) {
    return _then(_$_VideosUserPost(
      imagePost: freezed == imagePost
          ? _value.imagePost
          : imagePost // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideosUserPost implements _VideosUserPost {
  const _$_VideosUserPost({@JsonKey(name: "video_post") this.imagePost});

  factory _$_VideosUserPost.fromJson(Map<String, dynamic> json) =>
      _$$_VideosUserPostFromJson(json);

  @override
  @JsonKey(name: "video_post")
  final String? imagePost;

  @override
  String toString() {
    return 'VideosUserPost(imagePost: $imagePost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideosUserPost &&
            (identical(other.imagePost, imagePost) ||
                other.imagePost == imagePost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideosUserPostCopyWith<_$_VideosUserPost> get copyWith =>
      __$$_VideosUserPostCopyWithImpl<_$_VideosUserPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosUserPostToJson(
      this,
    );
  }
}

abstract class _VideosUserPost implements VideosUserPost {
  const factory _VideosUserPost(
          {@JsonKey(name: "video_post") final String? imagePost}) =
      _$_VideosUserPost;

  factory _VideosUserPost.fromJson(Map<String, dynamic> json) =
      _$_VideosUserPost.fromJson;

  @override
  @JsonKey(name: "video_post")
  String? get imagePost;
  @override
  @JsonKey(ignore: true)
  _$$_VideosUserPostCopyWith<_$_VideosUserPost> get copyWith =>
      throw _privateConstructorUsedError;
}
