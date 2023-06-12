// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) {
  return _PlacesResponse.fromJson(json);
}

/// @nodoc
mixin _$PlacesResponse {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "geo_location")
  GetPlaceGeoLocations? get getPlaceGeoLocations =>
      throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesResponseCopyWith<PlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesResponseCopyWith<$Res> {
  factory $PlacesResponseCopyWith(
          PlacesResponse value, $Res Function(PlacesResponse) then) =
      _$PlacesResponseCopyWithImpl<$Res, PlacesResponse>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: "geo_location") GetPlaceGeoLocations? getPlaceGeoLocations,
      String? image});

  $GetPlaceGeoLocationsCopyWith<$Res>? get getPlaceGeoLocations;
}

/// @nodoc
class _$PlacesResponseCopyWithImpl<$Res, $Val extends PlacesResponse>
    implements $PlacesResponseCopyWith<$Res> {
  _$PlacesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? getPlaceGeoLocations = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      getPlaceGeoLocations: freezed == getPlaceGeoLocations
          ? _value.getPlaceGeoLocations
          : getPlaceGeoLocations // ignore: cast_nullable_to_non_nullable
              as GetPlaceGeoLocations?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetPlaceGeoLocationsCopyWith<$Res>? get getPlaceGeoLocations {
    if (_value.getPlaceGeoLocations == null) {
      return null;
    }

    return $GetPlaceGeoLocationsCopyWith<$Res>(_value.getPlaceGeoLocations!,
        (value) {
      return _then(_value.copyWith(getPlaceGeoLocations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlacesResponseCopyWith<$Res>
    implements $PlacesResponseCopyWith<$Res> {
  factory _$$_PlacesResponseCopyWith(
          _$_PlacesResponse value, $Res Function(_$_PlacesResponse) then) =
      __$$_PlacesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: "geo_location") GetPlaceGeoLocations? getPlaceGeoLocations,
      String? image});

  @override
  $GetPlaceGeoLocationsCopyWith<$Res>? get getPlaceGeoLocations;
}

/// @nodoc
class __$$_PlacesResponseCopyWithImpl<$Res>
    extends _$PlacesResponseCopyWithImpl<$Res, _$_PlacesResponse>
    implements _$$_PlacesResponseCopyWith<$Res> {
  __$$_PlacesResponseCopyWithImpl(
      _$_PlacesResponse _value, $Res Function(_$_PlacesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? getPlaceGeoLocations = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_PlacesResponse(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      getPlaceGeoLocations: freezed == getPlaceGeoLocations
          ? _value.getPlaceGeoLocations
          : getPlaceGeoLocations // ignore: cast_nullable_to_non_nullable
              as GetPlaceGeoLocations?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PlacesResponse implements _PlacesResponse {
  const _$_PlacesResponse(
      {required this.name,
      @JsonKey(name: "geo_location") this.getPlaceGeoLocations,
      required this.image});

  factory _$_PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesResponseFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: "geo_location")
  final GetPlaceGeoLocations? getPlaceGeoLocations;
  @override
  final String? image;

  @override
  String toString() {
    return 'PlacesResponse(name: $name, getPlaceGeoLocations: $getPlaceGeoLocations, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.getPlaceGeoLocations, getPlaceGeoLocations) ||
                other.getPlaceGeoLocations == getPlaceGeoLocations) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, getPlaceGeoLocations, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacesResponseCopyWith<_$_PlacesResponse> get copyWith =>
      __$$_PlacesResponseCopyWithImpl<_$_PlacesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesResponseToJson(
      this,
    );
  }
}

abstract class _PlacesResponse implements PlacesResponse {
  const factory _PlacesResponse(
      {required final String? name,
      @JsonKey(name: "geo_location")
          final GetPlaceGeoLocations? getPlaceGeoLocations,
      required final String? image}) = _$_PlacesResponse;

  factory _PlacesResponse.fromJson(Map<String, dynamic> json) =
      _$_PlacesResponse.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: "geo_location")
  GetPlaceGeoLocations? get getPlaceGeoLocations;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesResponseCopyWith<_$_PlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
