// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_information_images_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoImagesResponse _$GeoImagesResponseFromJson(Map<String, dynamic> json) {
  return _GeoImagesResponse.fromJson(json);
}

/// @nodoc
mixin _$GeoImagesResponse {
  @JsonKey(name: "image_post")
  String get image_post => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoImagesResponseCopyWith<GeoImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoImagesResponseCopyWith<$Res> {
  factory $GeoImagesResponseCopyWith(
          GeoImagesResponse value, $Res Function(GeoImagesResponse) then) =
      _$GeoImagesResponseCopyWithImpl<$Res, GeoImagesResponse>;
  @useResult
  $Res call({@JsonKey(name: "image_post") String image_post});
}

/// @nodoc
class _$GeoImagesResponseCopyWithImpl<$Res, $Val extends GeoImagesResponse>
    implements $GeoImagesResponseCopyWith<$Res> {
  _$GeoImagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image_post = null,
  }) {
    return _then(_value.copyWith(
      image_post: null == image_post
          ? _value.image_post
          : image_post // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoImagesResponseCopyWith<$Res>
    implements $GeoImagesResponseCopyWith<$Res> {
  factory _$$_GeoImagesResponseCopyWith(_$_GeoImagesResponse value,
          $Res Function(_$_GeoImagesResponse) then) =
      __$$_GeoImagesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "image_post") String image_post});
}

/// @nodoc
class __$$_GeoImagesResponseCopyWithImpl<$Res>
    extends _$GeoImagesResponseCopyWithImpl<$Res, _$_GeoImagesResponse>
    implements _$$_GeoImagesResponseCopyWith<$Res> {
  __$$_GeoImagesResponseCopyWithImpl(
      _$_GeoImagesResponse _value, $Res Function(_$_GeoImagesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image_post = null,
  }) {
    return _then(_$_GeoImagesResponse(
      image_post: null == image_post
          ? _value.image_post
          : image_post // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GeoImagesResponse implements _GeoImagesResponse {
  const _$_GeoImagesResponse(
      {@JsonKey(name: "image_post") required this.image_post});

  factory _$_GeoImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeoImagesResponseFromJson(json);

  @override
  @JsonKey(name: "image_post")
  final String image_post;

  @override
  String toString() {
    return 'GeoImagesResponse(image_post: $image_post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoImagesResponse &&
            (identical(other.image_post, image_post) ||
                other.image_post == image_post));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image_post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoImagesResponseCopyWith<_$_GeoImagesResponse> get copyWith =>
      __$$_GeoImagesResponseCopyWithImpl<_$_GeoImagesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoImagesResponseToJson(
      this,
    );
  }
}

abstract class _GeoImagesResponse implements GeoImagesResponse {
  const factory _GeoImagesResponse(
          {@JsonKey(name: "image_post") required final String image_post}) =
      _$_GeoImagesResponse;

  factory _GeoImagesResponse.fromJson(Map<String, dynamic> json) =
      _$_GeoImagesResponse.fromJson;

  @override
  @JsonKey(name: "image_post")
  String get image_post;
  @override
  @JsonKey(ignore: true)
  _$$_GeoImagesResponseCopyWith<_$_GeoImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
