// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_itinerary_package_items_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserItineraryPackageItemsResponse _$UserItineraryPackageItemsResponseFromJson(
    Map<String, dynamic> json) {
  return _UserItineraryPackageItemsResponse.fromJson(json);
}

/// @nodoc
mixin _$UserItineraryPackageItemsResponse {
  @JsonKey(name: "main_place_id")
  int get mainPlaceId => throw _privateConstructorUsedError;
  @JsonKey(name: "main_place_name")
  String get mainPlaceName => throw _privateConstructorUsedError;
  @JsonKey(name: "places_count")
  int get mainPlaceLocalPlacesCount => throw _privateConstructorUsedError;
  @JsonKey(name: "places")
  List<ItineraryPlaceInformationResponse>
      get itineraryPlaceInformationResponse =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserItineraryPackageItemsResponseCopyWith<UserItineraryPackageItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserItineraryPackageItemsResponseCopyWith<$Res> {
  factory $UserItineraryPackageItemsResponseCopyWith(
          UserItineraryPackageItemsResponse value,
          $Res Function(UserItineraryPackageItemsResponse) then) =
      _$UserItineraryPackageItemsResponseCopyWithImpl<$Res,
          UserItineraryPackageItemsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "main_place_id")
          int mainPlaceId,
      @JsonKey(name: "main_place_name")
          String mainPlaceName,
      @JsonKey(name: "places_count")
          int mainPlaceLocalPlacesCount,
      @JsonKey(name: "places")
          List<ItineraryPlaceInformationResponse>
              itineraryPlaceInformationResponse});
}

/// @nodoc
class _$UserItineraryPackageItemsResponseCopyWithImpl<$Res,
        $Val extends UserItineraryPackageItemsResponse>
    implements $UserItineraryPackageItemsResponseCopyWith<$Res> {
  _$UserItineraryPackageItemsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPlaceId = null,
    Object? mainPlaceName = null,
    Object? mainPlaceLocalPlacesCount = null,
    Object? itineraryPlaceInformationResponse = null,
  }) {
    return _then(_value.copyWith(
      mainPlaceId: null == mainPlaceId
          ? _value.mainPlaceId
          : mainPlaceId // ignore: cast_nullable_to_non_nullable
              as int,
      mainPlaceName: null == mainPlaceName
          ? _value.mainPlaceName
          : mainPlaceName // ignore: cast_nullable_to_non_nullable
              as String,
      mainPlaceLocalPlacesCount: null == mainPlaceLocalPlacesCount
          ? _value.mainPlaceLocalPlacesCount
          : mainPlaceLocalPlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      itineraryPlaceInformationResponse: null ==
              itineraryPlaceInformationResponse
          ? _value.itineraryPlaceInformationResponse
          : itineraryPlaceInformationResponse // ignore: cast_nullable_to_non_nullable
              as List<ItineraryPlaceInformationResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserItineraryPackageItemsResponseCopyWith<$Res>
    implements $UserItineraryPackageItemsResponseCopyWith<$Res> {
  factory _$$_UserItineraryPackageItemsResponseCopyWith(
          _$_UserItineraryPackageItemsResponse value,
          $Res Function(_$_UserItineraryPackageItemsResponse) then) =
      __$$_UserItineraryPackageItemsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "main_place_id")
          int mainPlaceId,
      @JsonKey(name: "main_place_name")
          String mainPlaceName,
      @JsonKey(name: "places_count")
          int mainPlaceLocalPlacesCount,
      @JsonKey(name: "places")
          List<ItineraryPlaceInformationResponse>
              itineraryPlaceInformationResponse});
}

/// @nodoc
class __$$_UserItineraryPackageItemsResponseCopyWithImpl<$Res>
    extends _$UserItineraryPackageItemsResponseCopyWithImpl<$Res,
        _$_UserItineraryPackageItemsResponse>
    implements _$$_UserItineraryPackageItemsResponseCopyWith<$Res> {
  __$$_UserItineraryPackageItemsResponseCopyWithImpl(
      _$_UserItineraryPackageItemsResponse _value,
      $Res Function(_$_UserItineraryPackageItemsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPlaceId = null,
    Object? mainPlaceName = null,
    Object? mainPlaceLocalPlacesCount = null,
    Object? itineraryPlaceInformationResponse = null,
  }) {
    return _then(_$_UserItineraryPackageItemsResponse(
      mainPlaceId: null == mainPlaceId
          ? _value.mainPlaceId
          : mainPlaceId // ignore: cast_nullable_to_non_nullable
              as int,
      mainPlaceName: null == mainPlaceName
          ? _value.mainPlaceName
          : mainPlaceName // ignore: cast_nullable_to_non_nullable
              as String,
      mainPlaceLocalPlacesCount: null == mainPlaceLocalPlacesCount
          ? _value.mainPlaceLocalPlacesCount
          : mainPlaceLocalPlacesCount // ignore: cast_nullable_to_non_nullable
              as int,
      itineraryPlaceInformationResponse: null ==
              itineraryPlaceInformationResponse
          ? _value._itineraryPlaceInformationResponse
          : itineraryPlaceInformationResponse // ignore: cast_nullable_to_non_nullable
              as List<ItineraryPlaceInformationResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserItineraryPackageItemsResponse
    implements _UserItineraryPackageItemsResponse {
  const _$_UserItineraryPackageItemsResponse(
      {@JsonKey(name: "main_place_id")
          required this.mainPlaceId,
      @JsonKey(name: "main_place_name")
          required this.mainPlaceName,
      @JsonKey(name: "places_count")
          required this.mainPlaceLocalPlacesCount,
      @JsonKey(name: "places")
          required final List<ItineraryPlaceInformationResponse>
              itineraryPlaceInformationResponse})
      : _itineraryPlaceInformationResponse = itineraryPlaceInformationResponse;

  factory _$_UserItineraryPackageItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_UserItineraryPackageItemsResponseFromJson(json);

  @override
  @JsonKey(name: "main_place_id")
  final int mainPlaceId;
  @override
  @JsonKey(name: "main_place_name")
  final String mainPlaceName;
  @override
  @JsonKey(name: "places_count")
  final int mainPlaceLocalPlacesCount;
  final List<ItineraryPlaceInformationResponse>
      _itineraryPlaceInformationResponse;
  @override
  @JsonKey(name: "places")
  List<ItineraryPlaceInformationResponse>
      get itineraryPlaceInformationResponse {
    if (_itineraryPlaceInformationResponse is EqualUnmodifiableListView)
      return _itineraryPlaceInformationResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itineraryPlaceInformationResponse);
  }

  @override
  String toString() {
    return 'UserItineraryPackageItemsResponse(mainPlaceId: $mainPlaceId, mainPlaceName: $mainPlaceName, mainPlaceLocalPlacesCount: $mainPlaceLocalPlacesCount, itineraryPlaceInformationResponse: $itineraryPlaceInformationResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserItineraryPackageItemsResponse &&
            (identical(other.mainPlaceId, mainPlaceId) ||
                other.mainPlaceId == mainPlaceId) &&
            (identical(other.mainPlaceName, mainPlaceName) ||
                other.mainPlaceName == mainPlaceName) &&
            (identical(other.mainPlaceLocalPlacesCount,
                    mainPlaceLocalPlacesCount) ||
                other.mainPlaceLocalPlacesCount == mainPlaceLocalPlacesCount) &&
            const DeepCollectionEquality().equals(
                other._itineraryPlaceInformationResponse,
                _itineraryPlaceInformationResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainPlaceId,
      mainPlaceName,
      mainPlaceLocalPlacesCount,
      const DeepCollectionEquality().hash(_itineraryPlaceInformationResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserItineraryPackageItemsResponseCopyWith<
          _$_UserItineraryPackageItemsResponse>
      get copyWith => __$$_UserItineraryPackageItemsResponseCopyWithImpl<
          _$_UserItineraryPackageItemsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserItineraryPackageItemsResponseToJson(
      this,
    );
  }
}

abstract class _UserItineraryPackageItemsResponse
    implements UserItineraryPackageItemsResponse {
  const factory _UserItineraryPackageItemsResponse(
          {@JsonKey(name: "main_place_id")
              required final int mainPlaceId,
          @JsonKey(name: "main_place_name")
              required final String mainPlaceName,
          @JsonKey(name: "places_count")
              required final int mainPlaceLocalPlacesCount,
          @JsonKey(name: "places")
              required final List<ItineraryPlaceInformationResponse>
                  itineraryPlaceInformationResponse}) =
      _$_UserItineraryPackageItemsResponse;

  factory _UserItineraryPackageItemsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_UserItineraryPackageItemsResponse.fromJson;

  @override
  @JsonKey(name: "main_place_id")
  int get mainPlaceId;
  @override
  @JsonKey(name: "main_place_name")
  String get mainPlaceName;
  @override
  @JsonKey(name: "places_count")
  int get mainPlaceLocalPlacesCount;
  @override
  @JsonKey(name: "places")
  List<ItineraryPlaceInformationResponse> get itineraryPlaceInformationResponse;
  @override
  @JsonKey(ignore: true)
  _$$_UserItineraryPackageItemsResponseCopyWith<
          _$_UserItineraryPackageItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
