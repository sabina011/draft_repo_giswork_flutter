// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_post_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagesUserPost _$ImagesUserPostFromJson(Map<String, dynamic> json) {
  return _ImagesUserPost.fromJson(json);
}

/// @nodoc
mixin _$ImagesUserPost {
  @JsonKey(name: "image_post")
  String? get imagePost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesUserPostCopyWith<ImagesUserPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesUserPostCopyWith<$Res> {
  factory $ImagesUserPostCopyWith(
          ImagesUserPost value, $Res Function(ImagesUserPost) then) =
      _$ImagesUserPostCopyWithImpl<$Res, ImagesUserPost>;
  @useResult
  $Res call({@JsonKey(name: "image_post") String? imagePost});
}

/// @nodoc
class _$ImagesUserPostCopyWithImpl<$Res, $Val extends ImagesUserPost>
    implements $ImagesUserPostCopyWith<$Res> {
  _$ImagesUserPostCopyWithImpl(this._value, this._then);

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
abstract class _$$_ImagesUserPostCopyWith<$Res>
    implements $ImagesUserPostCopyWith<$Res> {
  factory _$$_ImagesUserPostCopyWith(
          _$_ImagesUserPost value, $Res Function(_$_ImagesUserPost) then) =
      __$$_ImagesUserPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "image_post") String? imagePost});
}

/// @nodoc
class __$$_ImagesUserPostCopyWithImpl<$Res>
    extends _$ImagesUserPostCopyWithImpl<$Res, _$_ImagesUserPost>
    implements _$$_ImagesUserPostCopyWith<$Res> {
  __$$_ImagesUserPostCopyWithImpl(
      _$_ImagesUserPost _value, $Res Function(_$_ImagesUserPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePost = freezed,
  }) {
    return _then(_$_ImagesUserPost(
      imagePost: freezed == imagePost
          ? _value.imagePost
          : imagePost // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ImagesUserPost implements _ImagesUserPost {
  const _$_ImagesUserPost({@JsonKey(name: "image_post") this.imagePost});

  factory _$_ImagesUserPost.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesUserPostFromJson(json);

  @override
  @JsonKey(name: "image_post")
  final String? imagePost;

  @override
  String toString() {
    return 'ImagesUserPost(imagePost: $imagePost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesUserPost &&
            (identical(other.imagePost, imagePost) ||
                other.imagePost == imagePost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesUserPostCopyWith<_$_ImagesUserPost> get copyWith =>
      __$$_ImagesUserPostCopyWithImpl<_$_ImagesUserPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesUserPostToJson(
      this,
    );
  }
}

abstract class _ImagesUserPost implements ImagesUserPost {
  const factory _ImagesUserPost(
          {@JsonKey(name: "image_post") final String? imagePost}) =
      _$_ImagesUserPost;

  factory _ImagesUserPost.fromJson(Map<String, dynamic> json) =
      _$_ImagesUserPost.fromJson;

  @override
  @JsonKey(name: "image_post")
  String? get imagePost;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesUserPostCopyWith<_$_ImagesUserPost> get copyWith =>
      throw _privateConstructorUsedError;
}
