// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itinerary_main_place_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItineraryPlaceInformationResponse _$ItineraryPlaceInformationResponseFromJson(
    Map<String, dynamic> json) {
  return _ItineraryPlaceInformationResponse.fromJson(json);
}

/// @nodoc
mixin _$ItineraryPlaceInformationResponse {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "day")
  int get day => throw _privateConstructorUsedError;
  @JsonKey(name: "location_name")
  String get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: "geo_location")
  GeoLocationResponse get geoLocationResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<GeoImagesResponse> get geoImagesResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItineraryPlaceInformationResponseCopyWith<ItineraryPlaceInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryPlaceInformationResponseCopyWith<$Res> {
  factory $ItineraryPlaceInformationResponseCopyWith(
          ItineraryPlaceInformationResponse value,
          $Res Function(ItineraryPlaceInformationResponse) then) =
      _$ItineraryPlaceInformationResponseCopyWithImpl<$Res,
          ItineraryPlaceInformationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "day") int day,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "geo_location") GeoLocationResponse geoLocationResponse,
      @JsonKey(name: "images") List<GeoImagesResponse> geoImagesResponse});

  $GeoLocationResponseCopyWith<$Res> get geoLocationResponse;
}

/// @nodoc
class _$ItineraryPlaceInformationResponseCopyWithImpl<$Res,
        $Val extends ItineraryPlaceInformationResponse>
    implements $ItineraryPlaceInformationResponseCopyWith<$Res> {
  _$ItineraryPlaceInformationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? locationName = null,
    Object? geoLocationResponse = null,
    Object? geoImagesResponse = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      geoLocationResponse: null == geoLocationResponse
          ? _value.geoLocationResponse
          : geoLocationResponse // ignore: cast_nullable_to_non_nullable
              as GeoLocationResponse,
      geoImagesResponse: null == geoImagesResponse
          ? _value.geoImagesResponse
          : geoImagesResponse // ignore: cast_nullable_to_non_nullable
              as List<GeoImagesResponse>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationResponseCopyWith<$Res> get geoLocationResponse {
    return $GeoLocationResponseCopyWith<$Res>(_value.geoLocationResponse,
        (value) {
      return _then(_value.copyWith(geoLocationResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItineraryPlaceInformationResponseCopyWith<$Res>
    implements $ItineraryPlaceInformationResponseCopyWith<$Res> {
  factory _$$_ItineraryPlaceInformationResponseCopyWith(
          _$_ItineraryPlaceInformationResponse value,
          $Res Function(_$_ItineraryPlaceInformationResponse) then) =
      __$$_ItineraryPlaceInformationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "day") int day,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "geo_location") GeoLocationResponse geoLocationResponse,
      @JsonKey(name: "images") List<GeoImagesResponse> geoImagesResponse});

  @override
  $GeoLocationResponseCopyWith<$Res> get geoLocationResponse;
}

/// @nodoc
class __$$_ItineraryPlaceInformationResponseCopyWithImpl<$Res>
    extends _$ItineraryPlaceInformationResponseCopyWithImpl<$Res,
        _$_ItineraryPlaceInformationResponse>
    implements _$$_ItineraryPlaceInformationResponseCopyWith<$Res> {
  __$$_ItineraryPlaceInformationResponseCopyWithImpl(
      _$_ItineraryPlaceInformationResponse _value,
      $Res Function(_$_ItineraryPlaceInformationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? locationName = null,
    Object? geoLocationResponse = null,
    Object? geoImagesResponse = null,
  }) {
    return _then(_$_ItineraryPlaceInformationResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      geoLocationResponse: null == geoLocationResponse
          ? _value.geoLocationResponse
          : geoLocationResponse // ignore: cast_nullable_to_non_nullable
              as GeoLocationResponse,
      geoImagesResponse: null == geoImagesResponse
          ? _value._geoImagesResponse
          : geoImagesResponse // ignore: cast_nullable_to_non_nullable
              as List<GeoImagesResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ItineraryPlaceInformationResponse
    implements _ItineraryPlaceInformationResponse {
  const _$_ItineraryPlaceInformationResponse(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "day")
          required this.day,
      @JsonKey(name: "location_name")
          required this.locationName,
      @JsonKey(name: "geo_location")
          required this.geoLocationResponse,
      @JsonKey(name: "images")
          required final List<GeoImagesResponse> geoImagesResponse})
      : _geoImagesResponse = geoImagesResponse;

  factory _$_ItineraryPlaceInformationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_ItineraryPlaceInformationResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "day")
  final int day;
  @override
  @JsonKey(name: "location_name")
  final String locationName;
  @override
  @JsonKey(name: "geo_location")
  final GeoLocationResponse geoLocationResponse;
  final List<GeoImagesResponse> _geoImagesResponse;
  @override
  @JsonKey(name: "images")
  List<GeoImagesResponse> get geoImagesResponse {
    if (_geoImagesResponse is EqualUnmodifiableListView)
      return _geoImagesResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_geoImagesResponse);
  }

  @override
  String toString() {
    return 'ItineraryPlaceInformationResponse(id: $id, day: $day, locationName: $locationName, geoLocationResponse: $geoLocationResponse, geoImagesResponse: $geoImagesResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItineraryPlaceInformationResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.geoLocationResponse, geoLocationResponse) ||
                other.geoLocationResponse == geoLocationResponse) &&
            const DeepCollectionEquality()
                .equals(other._geoImagesResponse, _geoImagesResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      day,
      locationName,
      geoLocationResponse,
      const DeepCollectionEquality().hash(_geoImagesResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItineraryPlaceInformationResponseCopyWith<
          _$_ItineraryPlaceInformationResponse>
      get copyWith => __$$_ItineraryPlaceInformationResponseCopyWithImpl<
          _$_ItineraryPlaceInformationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItineraryPlaceInformationResponseToJson(
      this,
    );
  }
}

abstract class _ItineraryPlaceInformationResponse
    implements ItineraryPlaceInformationResponse {
  const factory _ItineraryPlaceInformationResponse(
          {@JsonKey(name: "id")
              required final int id,
          @JsonKey(name: "day")
              required final int day,
          @JsonKey(name: "location_name")
              required final String locationName,
          @JsonKey(name: "geo_location")
              required final GeoLocationResponse geoLocationResponse,
          @JsonKey(name: "images")
              required final List<GeoImagesResponse> geoImagesResponse}) =
      _$_ItineraryPlaceInformationResponse;

  factory _ItineraryPlaceInformationResponse.fromJson(
          Map<String, dynamic> json) =
      _$_ItineraryPlaceInformationResponse.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "day")
  int get day;
  @override
  @JsonKey(name: "location_name")
  String get locationName;
  @override
  @JsonKey(name: "geo_location")
  GeoLocationResponse get geoLocationResponse;
  @override
  @JsonKey(name: "images")
  List<GeoImagesResponse> get geoImagesResponse;
  @override
  @JsonKey(ignore: true)
  _$$_ItineraryPlaceInformationResponseCopyWith<
          _$_ItineraryPlaceInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
