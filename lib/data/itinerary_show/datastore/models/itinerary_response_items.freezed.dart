// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itinerary_response_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItineraryShowItemsResponse _$ItineraryShowItemsResponseFromJson(
    Map<String, dynamic> json) {
  return _ItineraryShowItemsResponse.fromJson(json);
}

/// @nodoc
mixin _$ItineraryShowItemsResponse {
  @JsonKey(name: "main_place")
  String get mainPlaceName => throw _privateConstructorUsedError;
  @JsonKey(name: "main_place_id")
  int get mainPlaceId => throw _privateConstructorUsedError;
  @JsonKey(name: "travelled_place")
  int get placeCount => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ItineraryPlaceInformationResponse>
      get itineraryPlaceInformationResponse =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItineraryShowItemsResponseCopyWith<ItineraryShowItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryShowItemsResponseCopyWith<$Res> {
  factory $ItineraryShowItemsResponseCopyWith(ItineraryShowItemsResponse value,
          $Res Function(ItineraryShowItemsResponse) then) =
      _$ItineraryShowItemsResponseCopyWithImpl<$Res,
          ItineraryShowItemsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "main_place")
          String mainPlaceName,
      @JsonKey(name: "main_place_id")
          int mainPlaceId,
      @JsonKey(name: "travelled_place")
          int placeCount,
      @JsonKey(name: "data")
          List<ItineraryPlaceInformationResponse>
              itineraryPlaceInformationResponse});
}

/// @nodoc
class _$ItineraryShowItemsResponseCopyWithImpl<$Res,
        $Val extends ItineraryShowItemsResponse>
    implements $ItineraryShowItemsResponseCopyWith<$Res> {
  _$ItineraryShowItemsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPlaceName = null,
    Object? mainPlaceId = null,
    Object? placeCount = null,
    Object? itineraryPlaceInformationResponse = null,
  }) {
    return _then(_value.copyWith(
      mainPlaceName: null == mainPlaceName
          ? _value.mainPlaceName
          : mainPlaceName // ignore: cast_nullable_to_non_nullable
              as String,
      mainPlaceId: null == mainPlaceId
          ? _value.mainPlaceId
          : mainPlaceId // ignore: cast_nullable_to_non_nullable
              as int,
      placeCount: null == placeCount
          ? _value.placeCount
          : placeCount // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ItineraryShowItemsResponseCopyWith<$Res>
    implements $ItineraryShowItemsResponseCopyWith<$Res> {
  factory _$$_ItineraryShowItemsResponseCopyWith(
          _$_ItineraryShowItemsResponse value,
          $Res Function(_$_ItineraryShowItemsResponse) then) =
      __$$_ItineraryShowItemsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "main_place")
          String mainPlaceName,
      @JsonKey(name: "main_place_id")
          int mainPlaceId,
      @JsonKey(name: "travelled_place")
          int placeCount,
      @JsonKey(name: "data")
          List<ItineraryPlaceInformationResponse>
              itineraryPlaceInformationResponse});
}

/// @nodoc
class __$$_ItineraryShowItemsResponseCopyWithImpl<$Res>
    extends _$ItineraryShowItemsResponseCopyWithImpl<$Res,
        _$_ItineraryShowItemsResponse>
    implements _$$_ItineraryShowItemsResponseCopyWith<$Res> {
  __$$_ItineraryShowItemsResponseCopyWithImpl(
      _$_ItineraryShowItemsResponse _value,
      $Res Function(_$_ItineraryShowItemsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainPlaceName = null,
    Object? mainPlaceId = null,
    Object? placeCount = null,
    Object? itineraryPlaceInformationResponse = null,
  }) {
    return _then(_$_ItineraryShowItemsResponse(
      mainPlaceName: null == mainPlaceName
          ? _value.mainPlaceName
          : mainPlaceName // ignore: cast_nullable_to_non_nullable
              as String,
      mainPlaceId: null == mainPlaceId
          ? _value.mainPlaceId
          : mainPlaceId // ignore: cast_nullable_to_non_nullable
              as int,
      placeCount: null == placeCount
          ? _value.placeCount
          : placeCount // ignore: cast_nullable_to_non_nullable
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
class _$_ItineraryShowItemsResponse implements _ItineraryShowItemsResponse {
  const _$_ItineraryShowItemsResponse(
      {@JsonKey(name: "main_place")
          required this.mainPlaceName,
      @JsonKey(name: "main_place_id")
          required this.mainPlaceId,
      @JsonKey(name: "travelled_place")
          required this.placeCount,
      @JsonKey(name: "data")
          required final List<ItineraryPlaceInformationResponse>
              itineraryPlaceInformationResponse})
      : _itineraryPlaceInformationResponse = itineraryPlaceInformationResponse;

  factory _$_ItineraryShowItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ItineraryShowItemsResponseFromJson(json);

  @override
  @JsonKey(name: "main_place")
  final String mainPlaceName;
  @override
  @JsonKey(name: "main_place_id")
  final int mainPlaceId;
  @override
  @JsonKey(name: "travelled_place")
  final int placeCount;
  final List<ItineraryPlaceInformationResponse>
      _itineraryPlaceInformationResponse;
  @override
  @JsonKey(name: "data")
  List<ItineraryPlaceInformationResponse>
      get itineraryPlaceInformationResponse {
    if (_itineraryPlaceInformationResponse is EqualUnmodifiableListView)
      return _itineraryPlaceInformationResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itineraryPlaceInformationResponse);
  }

  @override
  String toString() {
    return 'ItineraryShowItemsResponse(mainPlaceName: $mainPlaceName, mainPlaceId: $mainPlaceId, placeCount: $placeCount, itineraryPlaceInformationResponse: $itineraryPlaceInformationResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItineraryShowItemsResponse &&
            (identical(other.mainPlaceName, mainPlaceName) ||
                other.mainPlaceName == mainPlaceName) &&
            (identical(other.mainPlaceId, mainPlaceId) ||
                other.mainPlaceId == mainPlaceId) &&
            (identical(other.placeCount, placeCount) ||
                other.placeCount == placeCount) &&
            const DeepCollectionEquality().equals(
                other._itineraryPlaceInformationResponse,
                _itineraryPlaceInformationResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainPlaceName,
      mainPlaceId,
      placeCount,
      const DeepCollectionEquality().hash(_itineraryPlaceInformationResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItineraryShowItemsResponseCopyWith<_$_ItineraryShowItemsResponse>
      get copyWith => __$$_ItineraryShowItemsResponseCopyWithImpl<
          _$_ItineraryShowItemsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItineraryShowItemsResponseToJson(
      this,
    );
  }
}

abstract class _ItineraryShowItemsResponse
    implements ItineraryShowItemsResponse {
  const factory _ItineraryShowItemsResponse(
          {@JsonKey(name: "main_place")
              required final String mainPlaceName,
          @JsonKey(name: "main_place_id")
              required final int mainPlaceId,
          @JsonKey(name: "travelled_place")
              required final int placeCount,
          @JsonKey(name: "data")
              required final List<ItineraryPlaceInformationResponse>
                  itineraryPlaceInformationResponse}) =
      _$_ItineraryShowItemsResponse;

  factory _ItineraryShowItemsResponse.fromJson(Map<String, dynamic> json) =
      _$_ItineraryShowItemsResponse.fromJson;

  @override
  @JsonKey(name: "main_place")
  String get mainPlaceName;
  @override
  @JsonKey(name: "main_place_id")
  int get mainPlaceId;
  @override
  @JsonKey(name: "travelled_place")
  int get placeCount;
  @override
  @JsonKey(name: "data")
  List<ItineraryPlaceInformationResponse> get itineraryPlaceInformationResponse;
  @override
  @JsonKey(ignore: true)
  _$$_ItineraryShowItemsResponseCopyWith<_$_ItineraryShowItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
