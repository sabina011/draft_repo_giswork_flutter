// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_information_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPlaceInformationResponse _$GetPlaceInformationResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPlaceInformationResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPlaceInformationResponse {
  List<PlaceInformationItemsResponse> get placeInformationResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPlaceInformationResponseCopyWith<GetPlaceInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlaceInformationResponseCopyWith<$Res> {
  factory $GetPlaceInformationResponseCopyWith(
          GetPlaceInformationResponse value,
          $Res Function(GetPlaceInformationResponse) then) =
      _$GetPlaceInformationResponseCopyWithImpl<$Res,
          GetPlaceInformationResponse>;
  @useResult
  $Res call({List<PlaceInformationItemsResponse> placeInformationResponse});
}

/// @nodoc
class _$GetPlaceInformationResponseCopyWithImpl<$Res,
        $Val extends GetPlaceInformationResponse>
    implements $GetPlaceInformationResponseCopyWith<$Res> {
  _$GetPlaceInformationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeInformationResponse = null,
  }) {
    return _then(_value.copyWith(
      placeInformationResponse: null == placeInformationResponse
          ? _value.placeInformationResponse
          : placeInformationResponse // ignore: cast_nullable_to_non_nullable
              as List<PlaceInformationItemsResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPlaceInformationResponseCopyWith<$Res>
    implements $GetPlaceInformationResponseCopyWith<$Res> {
  factory _$$_GetPlaceInformationResponseCopyWith(
          _$_GetPlaceInformationResponse value,
          $Res Function(_$_GetPlaceInformationResponse) then) =
      __$$_GetPlaceInformationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceInformationItemsResponse> placeInformationResponse});
}

/// @nodoc
class __$$_GetPlaceInformationResponseCopyWithImpl<$Res>
    extends _$GetPlaceInformationResponseCopyWithImpl<$Res,
        _$_GetPlaceInformationResponse>
    implements _$$_GetPlaceInformationResponseCopyWith<$Res> {
  __$$_GetPlaceInformationResponseCopyWithImpl(
      _$_GetPlaceInformationResponse _value,
      $Res Function(_$_GetPlaceInformationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeInformationResponse = null,
  }) {
    return _then(_$_GetPlaceInformationResponse(
      placeInformationResponse: null == placeInformationResponse
          ? _value._placeInformationResponse
          : placeInformationResponse // ignore: cast_nullable_to_non_nullable
              as List<PlaceInformationItemsResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPlaceInformationResponse implements _GetPlaceInformationResponse {
  const _$_GetPlaceInformationResponse(
      {required final List<PlaceInformationItemsResponse>
          placeInformationResponse})
      : _placeInformationResponse = placeInformationResponse;

  factory _$_GetPlaceInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetPlaceInformationResponseFromJson(json);

  final List<PlaceInformationItemsResponse> _placeInformationResponse;
  @override
  List<PlaceInformationItemsResponse> get placeInformationResponse {
    if (_placeInformationResponse is EqualUnmodifiableListView)
      return _placeInformationResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeInformationResponse);
  }

  @override
  String toString() {
    return 'GetPlaceInformationResponse(placeInformationResponse: $placeInformationResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPlaceInformationResponse &&
            const DeepCollectionEquality().equals(
                other._placeInformationResponse, _placeInformationResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_placeInformationResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPlaceInformationResponseCopyWith<_$_GetPlaceInformationResponse>
      get copyWith => __$$_GetPlaceInformationResponseCopyWithImpl<
          _$_GetPlaceInformationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPlaceInformationResponseToJson(
      this,
    );
  }
}

abstract class _GetPlaceInformationResponse
    implements GetPlaceInformationResponse {
  const factory _GetPlaceInformationResponse(
      {required final List<PlaceInformationItemsResponse>
          placeInformationResponse}) = _$_GetPlaceInformationResponse;

  factory _GetPlaceInformationResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPlaceInformationResponse.fromJson;

  @override
  List<PlaceInformationItemsResponse> get placeInformationResponse;
  @override
  @JsonKey(ignore: true)
  _$$_GetPlaceInformationResponseCopyWith<_$_GetPlaceInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
