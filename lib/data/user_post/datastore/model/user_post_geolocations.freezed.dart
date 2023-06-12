// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_post_geolocations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoLocationsUserPost _$GeoLocationsUserPostFromJson(Map<String, dynamic> json) {
  return _GeoLocationsUserPost.fromJson(json);
}

/// @nodoc
mixin _$GeoLocationsUserPost {
  @JsonKey(name: "srid")
  int? get srid => throw _privateConstructorUsedError;
  @JsonKey(name: "points")
  GeoPointsUserPost? get geoPointsUserPost =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoLocationsUserPostCopyWith<GeoLocationsUserPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationsUserPostCopyWith<$Res> {
  factory $GeoLocationsUserPostCopyWith(GeoLocationsUserPost value,
          $Res Function(GeoLocationsUserPost) then) =
      _$GeoLocationsUserPostCopyWithImpl<$Res, GeoLocationsUserPost>;
  @useResult
  $Res call(
      {@JsonKey(name: "srid") int? srid,
      @JsonKey(name: "points") GeoPointsUserPost? geoPointsUserPost});

  $GeoPointsUserPostCopyWith<$Res>? get geoPointsUserPost;
}

/// @nodoc
class _$GeoLocationsUserPostCopyWithImpl<$Res,
        $Val extends GeoLocationsUserPost>
    implements $GeoLocationsUserPostCopyWith<$Res> {
  _$GeoLocationsUserPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srid = freezed,
    Object? geoPointsUserPost = freezed,
  }) {
    return _then(_value.copyWith(
      srid: freezed == srid
          ? _value.srid
          : srid // ignore: cast_nullable_to_non_nullable
              as int?,
      geoPointsUserPost: freezed == geoPointsUserPost
          ? _value.geoPointsUserPost
          : geoPointsUserPost // ignore: cast_nullable_to_non_nullable
              as GeoPointsUserPost?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoPointsUserPostCopyWith<$Res>? get geoPointsUserPost {
    if (_value.geoPointsUserPost == null) {
      return null;
    }

    return $GeoPointsUserPostCopyWith<$Res>(_value.geoPointsUserPost!, (value) {
      return _then(_value.copyWith(geoPointsUserPost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeoLocationsUserPostCopyWith<$Res>
    implements $GeoLocationsUserPostCopyWith<$Res> {
  factory _$$_GeoLocationsUserPostCopyWith(_$_GeoLocationsUserPost value,
          $Res Function(_$_GeoLocationsUserPost) then) =
      __$$_GeoLocationsUserPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "srid") int? srid,
      @JsonKey(name: "points") GeoPointsUserPost? geoPointsUserPost});

  @override
  $GeoPointsUserPostCopyWith<$Res>? get geoPointsUserPost;
}

/// @nodoc
class __$$_GeoLocationsUserPostCopyWithImpl<$Res>
    extends _$GeoLocationsUserPostCopyWithImpl<$Res, _$_GeoLocationsUserPost>
    implements _$$_GeoLocationsUserPostCopyWith<$Res> {
  __$$_GeoLocationsUserPostCopyWithImpl(_$_GeoLocationsUserPost _value,
      $Res Function(_$_GeoLocationsUserPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? srid = freezed,
    Object? geoPointsUserPost = freezed,
  }) {
    return _then(_$_GeoLocationsUserPost(
      srid: freezed == srid
          ? _value.srid
          : srid // ignore: cast_nullable_to_non_nullable
              as int?,
      geoPointsUserPost: freezed == geoPointsUserPost
          ? _value.geoPointsUserPost
          : geoPointsUserPost // ignore: cast_nullable_to_non_nullable
              as GeoPointsUserPost?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GeoLocationsUserPost implements _GeoLocationsUserPost {
  const _$_GeoLocationsUserPost(
      {@JsonKey(name: "srid") this.srid,
      @JsonKey(name: "points") this.geoPointsUserPost});

  factory _$_GeoLocationsUserPost.fromJson(Map<String, dynamic> json) =>
      _$$_GeoLocationsUserPostFromJson(json);

  @override
  @JsonKey(name: "srid")
  final int? srid;
  @override
  @JsonKey(name: "points")
  final GeoPointsUserPost? geoPointsUserPost;

  @override
  String toString() {
    return 'GeoLocationsUserPost(srid: $srid, geoPointsUserPost: $geoPointsUserPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoLocationsUserPost &&
            (identical(other.srid, srid) || other.srid == srid) &&
            (identical(other.geoPointsUserPost, geoPointsUserPost) ||
                other.geoPointsUserPost == geoPointsUserPost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, srid, geoPointsUserPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoLocationsUserPostCopyWith<_$_GeoLocationsUserPost> get copyWith =>
      __$$_GeoLocationsUserPostCopyWithImpl<_$_GeoLocationsUserPost>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoLocationsUserPostToJson(
      this,
    );
  }
}

abstract class _GeoLocationsUserPost implements GeoLocationsUserPost {
  const factory _GeoLocationsUserPost(
          {@JsonKey(name: "srid")
              final int? srid,
          @JsonKey(name: "points")
              final GeoPointsUserPost? geoPointsUserPost}) =
      _$_GeoLocationsUserPost;

  factory _GeoLocationsUserPost.fromJson(Map<String, dynamic> json) =
      _$_GeoLocationsUserPost.fromJson;

  @override
  @JsonKey(name: "srid")
  int? get srid;
  @override
  @JsonKey(name: "points")
  GeoPointsUserPost? get geoPointsUserPost;
  @override
  @JsonKey(ignore: true)
  _$$_GeoLocationsUserPostCopyWith<_$_GeoLocationsUserPost> get copyWith =>
      throw _privateConstructorUsedError;
}
