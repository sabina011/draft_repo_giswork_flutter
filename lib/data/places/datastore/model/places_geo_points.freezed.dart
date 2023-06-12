// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_geo_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoPlacesPoints _$GeoPlacesPointsFromJson(Map<String, dynamic> json) {
  return _GeoPlacesPoints.fromJson(json);
}

/// @nodoc
mixin _$GeoPlacesPoints {
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoPlacesPointsCopyWith<GeoPlacesPoints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPlacesPointsCopyWith<$Res> {
  factory $GeoPlacesPointsCopyWith(
          GeoPlacesPoints value, $Res Function(GeoPlacesPoints) then) =
      _$GeoPlacesPointsCopyWithImpl<$Res, GeoPlacesPoints>;
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class _$GeoPlacesPointsCopyWithImpl<$Res, $Val extends GeoPlacesPoints>
    implements $GeoPlacesPointsCopyWith<$Res> {
  _$GeoPlacesPointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoPlacesPointsCopyWith<$Res>
    implements $GeoPlacesPointsCopyWith<$Res> {
  factory _$$_GeoPlacesPointsCopyWith(
          _$_GeoPlacesPoints value, $Res Function(_$_GeoPlacesPoints) then) =
      __$$_GeoPlacesPointsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude});
}

/// @nodoc
class __$$_GeoPlacesPointsCopyWithImpl<$Res>
    extends _$GeoPlacesPointsCopyWithImpl<$Res, _$_GeoPlacesPoints>
    implements _$$_GeoPlacesPointsCopyWith<$Res> {
  __$$_GeoPlacesPointsCopyWithImpl(
      _$_GeoPlacesPoints _value, $Res Function(_$_GeoPlacesPoints) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_GeoPlacesPoints(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GeoPlacesPoints implements _GeoPlacesPoints {
  const _$_GeoPlacesPoints(
      {@JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude});

  factory _$_GeoPlacesPoints.fromJson(Map<String, dynamic> json) =>
      _$$_GeoPlacesPointsFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;

  @override
  String toString() {
    return 'GeoPlacesPoints(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoPlacesPoints &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoPlacesPointsCopyWith<_$_GeoPlacesPoints> get copyWith =>
      __$$_GeoPlacesPointsCopyWithImpl<_$_GeoPlacesPoints>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoPlacesPointsToJson(
      this,
    );
  }
}

abstract class _GeoPlacesPoints implements GeoPlacesPoints {
  const factory _GeoPlacesPoints(
          {@JsonKey(name: "latitude") final double? latitude,
          @JsonKey(name: "longitude") final double? longitude}) =
      _$_GeoPlacesPoints;

  factory _GeoPlacesPoints.fromJson(Map<String, dynamic> json) =
      _$_GeoPlacesPoints.fromJson;

  @override
  @JsonKey(name: "latitude")
  double? get latitude;
  @override
  @JsonKey(name: "longitude")
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_GeoPlacesPointsCopyWith<_$_GeoPlacesPoints> get copyWith =>
      throw _privateConstructorUsedError;
}
