// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_information_response_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceInformationItemsResponse _$PlaceInformationItemsResponseFromJson(
    Map<String, dynamic> json) {
  return _PlaceInformationItemsResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaceInformationItemsResponse {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "day")
  int get day => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "main_place_id")
  int get mainPlaceId => throw _privateConstructorUsedError;
  @JsonKey(name: "location_name")
  String get location_name => throw _privateConstructorUsedError;
  @JsonKey(name: "geo_location")
  GeoLocationResponse get geoLocationResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<GeoImagesResponse> get geoImagesResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceInformationItemsResponseCopyWith<PlaceInformationItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceInformationItemsResponseCopyWith<$Res> {
  factory $PlaceInformationItemsResponseCopyWith(
          PlaceInformationItemsResponse value,
          $Res Function(PlaceInformationItemsResponse) then) =
      _$PlaceInformationItemsResponseCopyWithImpl<$Res,
          PlaceInformationItemsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "day") int day,
      @JsonKey(name: "user") int userId,
      @JsonKey(name: "main_place_id") int mainPlaceId,
      @JsonKey(name: "location_name") String location_name,
      @JsonKey(name: "geo_location") GeoLocationResponse geoLocationResponse,
      @JsonKey(name: "images") List<GeoImagesResponse> geoImagesResponse});

  $GeoLocationResponseCopyWith<$Res> get geoLocationResponse;
}

/// @nodoc
class _$PlaceInformationItemsResponseCopyWithImpl<$Res,
        $Val extends PlaceInformationItemsResponse>
    implements $PlaceInformationItemsResponseCopyWith<$Res> {
  _$PlaceInformationItemsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? userId = null,
    Object? mainPlaceId = null,
    Object? location_name = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      mainPlaceId: null == mainPlaceId
          ? _value.mainPlaceId
          : mainPlaceId // ignore: cast_nullable_to_non_nullable
              as int,
      location_name: null == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_PlaceInformationItemsResponseCopyWith<$Res>
    implements $PlaceInformationItemsResponseCopyWith<$Res> {
  factory _$$_PlaceInformationItemsResponseCopyWith(
          _$_PlaceInformationItemsResponse value,
          $Res Function(_$_PlaceInformationItemsResponse) then) =
      __$$_PlaceInformationItemsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "day") int day,
      @JsonKey(name: "user") int userId,
      @JsonKey(name: "main_place_id") int mainPlaceId,
      @JsonKey(name: "location_name") String location_name,
      @JsonKey(name: "geo_location") GeoLocationResponse geoLocationResponse,
      @JsonKey(name: "images") List<GeoImagesResponse> geoImagesResponse});

  @override
  $GeoLocationResponseCopyWith<$Res> get geoLocationResponse;
}

/// @nodoc
class __$$_PlaceInformationItemsResponseCopyWithImpl<$Res>
    extends _$PlaceInformationItemsResponseCopyWithImpl<$Res,
        _$_PlaceInformationItemsResponse>
    implements _$$_PlaceInformationItemsResponseCopyWith<$Res> {
  __$$_PlaceInformationItemsResponseCopyWithImpl(
      _$_PlaceInformationItemsResponse _value,
      $Res Function(_$_PlaceInformationItemsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? userId = null,
    Object? mainPlaceId = null,
    Object? location_name = null,
    Object? geoLocationResponse = null,
    Object? geoImagesResponse = null,
  }) {
    return _then(_$_PlaceInformationItemsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      mainPlaceId: null == mainPlaceId
          ? _value.mainPlaceId
          : mainPlaceId // ignore: cast_nullable_to_non_nullable
              as int,
      location_name: null == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
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
class _$_PlaceInformationItemsResponse
    implements _PlaceInformationItemsResponse {
  const _$_PlaceInformationItemsResponse(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "day")
          required this.day,
      @JsonKey(name: "user")
          required this.userId,
      @JsonKey(name: "main_place_id")
          required this.mainPlaceId,
      @JsonKey(name: "location_name")
          required this.location_name,
      @JsonKey(name: "geo_location")
          required this.geoLocationResponse,
      @JsonKey(name: "images")
          required final List<GeoImagesResponse> geoImagesResponse})
      : _geoImagesResponse = geoImagesResponse;

  factory _$_PlaceInformationItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PlaceInformationItemsResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "day")
  final int day;
  @override
  @JsonKey(name: "user")
  final int userId;
  @override
  @JsonKey(name: "main_place_id")
  final int mainPlaceId;
  @override
  @JsonKey(name: "location_name")
  final String location_name;
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
    return 'PlaceInformationItemsResponse(id: $id, day: $day, userId: $userId, mainPlaceId: $mainPlaceId, location_name: $location_name, geoLocationResponse: $geoLocationResponse, geoImagesResponse: $geoImagesResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceInformationItemsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.mainPlaceId, mainPlaceId) ||
                other.mainPlaceId == mainPlaceId) &&
            (identical(other.location_name, location_name) ||
                other.location_name == location_name) &&
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
      userId,
      mainPlaceId,
      location_name,
      geoLocationResponse,
      const DeepCollectionEquality().hash(_geoImagesResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceInformationItemsResponseCopyWith<_$_PlaceInformationItemsResponse>
      get copyWith => __$$_PlaceInformationItemsResponseCopyWithImpl<
          _$_PlaceInformationItemsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceInformationItemsResponseToJson(
      this,
    );
  }
}

abstract class _PlaceInformationItemsResponse
    implements PlaceInformationItemsResponse {
  const factory _PlaceInformationItemsResponse(
          {@JsonKey(name: "id")
              required final int id,
          @JsonKey(name: "day")
              required final int day,
          @JsonKey(name: "user")
              required final int userId,
          @JsonKey(name: "main_place_id")
              required final int mainPlaceId,
          @JsonKey(name: "location_name")
              required final String location_name,
          @JsonKey(name: "geo_location")
              required final GeoLocationResponse geoLocationResponse,
          @JsonKey(name: "images")
              required final List<GeoImagesResponse> geoImagesResponse}) =
      _$_PlaceInformationItemsResponse;

  factory _PlaceInformationItemsResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceInformationItemsResponse.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "day")
  int get day;
  @override
  @JsonKey(name: "user")
  int get userId;
  @override
  @JsonKey(name: "main_place_id")
  int get mainPlaceId;
  @override
  @JsonKey(name: "location_name")
  String get location_name;
  @override
  @JsonKey(name: "geo_location")
  GeoLocationResponse get geoLocationResponse;
  @override
  @JsonKey(name: "images")
  List<GeoImagesResponse> get geoImagesResponse;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceInformationItemsResponseCopyWith<_$_PlaceInformationItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
