// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_information_geo_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoLocationResponse _$GeoLocationResponseFromJson(Map<String, dynamic> json) {
  return _GeoLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$GeoLocationResponse {
  @JsonKey(name: "srid")
  double get geoPointSrid => throw _privateConstructorUsedError;
  @JsonKey(name: "points")
  GeoPointsResponse get geoPointsResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoLocationResponseCopyWith<GeoLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationResponseCopyWith<$Res> {
  factory $GeoLocationResponseCopyWith(
          GeoLocationResponse value, $Res Function(GeoLocationResponse) then) =
      _$GeoLocationResponseCopyWithImpl<$Res, GeoLocationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "srid") double geoPointSrid,
      @JsonKey(name: "points") GeoPointsResponse geoPointsResponse});

  $GeoPointsResponseCopyWith<$Res> get geoPointsResponse;
}

/// @nodoc
class _$GeoLocationResponseCopyWithImpl<$Res, $Val extends GeoLocationResponse>
    implements $GeoLocationResponseCopyWith<$Res> {
  _$GeoLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoPointSrid = null,
    Object? geoPointsResponse = null,
  }) {
    return _then(_value.copyWith(
      geoPointSrid: null == geoPointSrid
          ? _value.geoPointSrid
          : geoPointSrid // ignore: cast_nullable_to_non_nullable
              as double,
      geoPointsResponse: null == geoPointsResponse
          ? _value.geoPointsResponse
          : geoPointsResponse // ignore: cast_nullable_to_non_nullable
              as GeoPointsResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoPointsResponseCopyWith<$Res> get geoPointsResponse {
    return $GeoPointsResponseCopyWith<$Res>(_value.geoPointsResponse, (value) {
      return _then(_value.copyWith(geoPointsResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeoLocationResponseCopyWith<$Res>
    implements $GeoLocationResponseCopyWith<$Res> {
  factory _$$_GeoLocationResponseCopyWith(_$_GeoLocationResponse value,
          $Res Function(_$_GeoLocationResponse) then) =
      __$$_GeoLocationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "srid") double geoPointSrid,
      @JsonKey(name: "points") GeoPointsResponse geoPointsResponse});

  @override
  $GeoPointsResponseCopyWith<$Res> get geoPointsResponse;
}

/// @nodoc
class __$$_GeoLocationResponseCopyWithImpl<$Res>
    extends _$GeoLocationResponseCopyWithImpl<$Res, _$_GeoLocationResponse>
    implements _$$_GeoLocationResponseCopyWith<$Res> {
  __$$_GeoLocationResponseCopyWithImpl(_$_GeoLocationResponse _value,
      $Res Function(_$_GeoLocationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoPointSrid = null,
    Object? geoPointsResponse = null,
  }) {
    return _then(_$_GeoLocationResponse(
      geoPointSrid: null == geoPointSrid
          ? _value.geoPointSrid
          : geoPointSrid // ignore: cast_nullable_to_non_nullable
              as double,
      geoPointsResponse: null == geoPointsResponse
          ? _value.geoPointsResponse
          : geoPointsResponse // ignore: cast_nullable_to_non_nullable
              as GeoPointsResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GeoLocationResponse implements _GeoLocationResponse {
  const _$_GeoLocationResponse(
      {@JsonKey(name: "srid") required this.geoPointSrid,
      @JsonKey(name: "points") required this.geoPointsResponse});

  factory _$_GeoLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeoLocationResponseFromJson(json);

  @override
  @JsonKey(name: "srid")
  final double geoPointSrid;
  @override
  @JsonKey(name: "points")
  final GeoPointsResponse geoPointsResponse;

  @override
  String toString() {
    return 'GeoLocationResponse(geoPointSrid: $geoPointSrid, geoPointsResponse: $geoPointsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoLocationResponse &&
            (identical(other.geoPointSrid, geoPointSrid) ||
                other.geoPointSrid == geoPointSrid) &&
            (identical(other.geoPointsResponse, geoPointsResponse) ||
                other.geoPointsResponse == geoPointsResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, geoPointSrid, geoPointsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoLocationResponseCopyWith<_$_GeoLocationResponse> get copyWith =>
      __$$_GeoLocationResponseCopyWithImpl<_$_GeoLocationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoLocationResponseToJson(
      this,
    );
  }
}

abstract class _GeoLocationResponse implements GeoLocationResponse {
  const factory _GeoLocationResponse(
          {@JsonKey(name: "srid")
              required final double geoPointSrid,
          @JsonKey(name: "points")
              required final GeoPointsResponse geoPointsResponse}) =
      _$_GeoLocationResponse;

  factory _GeoLocationResponse.fromJson(Map<String, dynamic> json) =
      _$_GeoLocationResponse.fromJson;

  @override
  @JsonKey(name: "srid")
  double get geoPointSrid;
  @override
  @JsonKey(name: "points")
  GeoPointsResponse get geoPointsResponse;
  @override
  @JsonKey(ignore: true)
  _$$_GeoLocationResponseCopyWith<_$_GeoLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
