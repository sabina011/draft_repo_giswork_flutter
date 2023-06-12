// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_information_geo_points_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoPointsResponse _$GeoPointsResponseFromJson(Map<String, dynamic> json) {
  return _GeoPointsResponse.fromJson(json);
}

/// @nodoc
mixin _$GeoPointsResponse {
  @JsonKey(name: "latitude")
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoPointsResponseCopyWith<GeoPointsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPointsResponseCopyWith<$Res> {
  factory $GeoPointsResponseCopyWith(
          GeoPointsResponse value, $Res Function(GeoPointsResponse) then) =
      _$GeoPointsResponseCopyWithImpl<$Res, GeoPointsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") double latitude,
      @JsonKey(name: "longitude") double longitude});
}

/// @nodoc
class _$GeoPointsResponseCopyWithImpl<$Res, $Val extends GeoPointsResponse>
    implements $GeoPointsResponseCopyWith<$Res> {
  _$GeoPointsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoPointsResponseCopyWith<$Res>
    implements $GeoPointsResponseCopyWith<$Res> {
  factory _$$_GeoPointsResponseCopyWith(_$_GeoPointsResponse value,
          $Res Function(_$_GeoPointsResponse) then) =
      __$$_GeoPointsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "latitude") double latitude,
      @JsonKey(name: "longitude") double longitude});
}

/// @nodoc
class __$$_GeoPointsResponseCopyWithImpl<$Res>
    extends _$GeoPointsResponseCopyWithImpl<$Res, _$_GeoPointsResponse>
    implements _$$_GeoPointsResponseCopyWith<$Res> {
  __$$_GeoPointsResponseCopyWithImpl(
      _$_GeoPointsResponse _value, $Res Function(_$_GeoPointsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_GeoPointsResponse(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GeoPointsResponse implements _GeoPointsResponse {
  const _$_GeoPointsResponse(
      {@JsonKey(name: "latitude") required this.latitude,
      @JsonKey(name: "longitude") required this.longitude});

  factory _$_GeoPointsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeoPointsResponseFromJson(json);

  @override
  @JsonKey(name: "latitude")
  final double latitude;
  @override
  @JsonKey(name: "longitude")
  final double longitude;

  @override
  String toString() {
    return 'GeoPointsResponse(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoPointsResponse &&
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
  _$$_GeoPointsResponseCopyWith<_$_GeoPointsResponse> get copyWith =>
      __$$_GeoPointsResponseCopyWithImpl<_$_GeoPointsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoPointsResponseToJson(
      this,
    );
  }
}

abstract class _GeoPointsResponse implements GeoPointsResponse {
  const factory _GeoPointsResponse(
          {@JsonKey(name: "latitude") required final double latitude,
          @JsonKey(name: "longitude") required final double longitude}) =
      _$_GeoPointsResponse;

  factory _GeoPointsResponse.fromJson(Map<String, dynamic> json) =
      _$_GeoPointsResponse.fromJson;

  @override
  @JsonKey(name: "latitude")
  double get latitude;
  @override
  @JsonKey(name: "longitude")
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_GeoPointsResponseCopyWith<_$_GeoPointsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
