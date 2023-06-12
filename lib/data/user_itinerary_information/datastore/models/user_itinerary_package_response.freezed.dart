// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_itinerary_package_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserItineraryPackageInformationResponse
    _$UserItineraryPackageInformationResponseFromJson(
        Map<String, dynamic> json) {
  return _UserItineraryPackageInformationResponse.fromJson(json);
}

/// @nodoc
mixin _$UserItineraryPackageInformationResponse {
  @JsonKey(name: 'data')
  List<UserItineraryPackageItemsResponse>
      get userItineraryPackageItemResponse =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserItineraryPackageInformationResponseCopyWith<
          UserItineraryPackageInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserItineraryPackageInformationResponseCopyWith<$Res> {
  factory $UserItineraryPackageInformationResponseCopyWith(
          UserItineraryPackageInformationResponse value,
          $Res Function(UserItineraryPackageInformationResponse) then) =
      _$UserItineraryPackageInformationResponseCopyWithImpl<$Res,
          UserItineraryPackageInformationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data')
          List<UserItineraryPackageItemsResponse>
              userItineraryPackageItemResponse});
}

/// @nodoc
class _$UserItineraryPackageInformationResponseCopyWithImpl<$Res,
        $Val extends UserItineraryPackageInformationResponse>
    implements $UserItineraryPackageInformationResponseCopyWith<$Res> {
  _$UserItineraryPackageInformationResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userItineraryPackageItemResponse = null,
  }) {
    return _then(_value.copyWith(
      userItineraryPackageItemResponse: null == userItineraryPackageItemResponse
          ? _value.userItineraryPackageItemResponse
          : userItineraryPackageItemResponse // ignore: cast_nullable_to_non_nullable
              as List<UserItineraryPackageItemsResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserItineraryPackageInformationResponseCopyWith<$Res>
    implements $UserItineraryPackageInformationResponseCopyWith<$Res> {
  factory _$$_UserItineraryPackageInformationResponseCopyWith(
          _$_UserItineraryPackageInformationResponse value,
          $Res Function(_$_UserItineraryPackageInformationResponse) then) =
      __$$_UserItineraryPackageInformationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data')
          List<UserItineraryPackageItemsResponse>
              userItineraryPackageItemResponse});
}

/// @nodoc
class __$$_UserItineraryPackageInformationResponseCopyWithImpl<$Res>
    extends _$UserItineraryPackageInformationResponseCopyWithImpl<$Res,
        _$_UserItineraryPackageInformationResponse>
    implements _$$_UserItineraryPackageInformationResponseCopyWith<$Res> {
  __$$_UserItineraryPackageInformationResponseCopyWithImpl(
      _$_UserItineraryPackageInformationResponse _value,
      $Res Function(_$_UserItineraryPackageInformationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userItineraryPackageItemResponse = null,
  }) {
    return _then(_$_UserItineraryPackageInformationResponse(
      userItineraryPackageItemResponse: null == userItineraryPackageItemResponse
          ? _value._userItineraryPackageItemResponse
          : userItineraryPackageItemResponse // ignore: cast_nullable_to_non_nullable
              as List<UserItineraryPackageItemsResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserItineraryPackageInformationResponse
    implements _UserItineraryPackageInformationResponse {
  const _$_UserItineraryPackageInformationResponse(
      {@JsonKey(name: 'data')
          required final List<UserItineraryPackageItemsResponse>
              userItineraryPackageItemResponse})
      : _userItineraryPackageItemResponse = userItineraryPackageItemResponse;

  factory _$_UserItineraryPackageInformationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_UserItineraryPackageInformationResponseFromJson(json);

  final List<UserItineraryPackageItemsResponse>
      _userItineraryPackageItemResponse;
  @override
  @JsonKey(name: 'data')
  List<UserItineraryPackageItemsResponse> get userItineraryPackageItemResponse {
    if (_userItineraryPackageItemResponse is EqualUnmodifiableListView)
      return _userItineraryPackageItemResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userItineraryPackageItemResponse);
  }

  @override
  String toString() {
    return 'UserItineraryPackageInformationResponse(userItineraryPackageItemResponse: $userItineraryPackageItemResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserItineraryPackageInformationResponse &&
            const DeepCollectionEquality().equals(
                other._userItineraryPackageItemResponse,
                _userItineraryPackageItemResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_userItineraryPackageItemResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserItineraryPackageInformationResponseCopyWith<
          _$_UserItineraryPackageInformationResponse>
      get copyWith => __$$_UserItineraryPackageInformationResponseCopyWithImpl<
          _$_UserItineraryPackageInformationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserItineraryPackageInformationResponseToJson(
      this,
    );
  }
}

abstract class _UserItineraryPackageInformationResponse
    implements UserItineraryPackageInformationResponse {
  const factory _UserItineraryPackageInformationResponse(
          {@JsonKey(name: 'data')
              required final List<UserItineraryPackageItemsResponse>
                  userItineraryPackageItemResponse}) =
      _$_UserItineraryPackageInformationResponse;

  factory _UserItineraryPackageInformationResponse.fromJson(
          Map<String, dynamic> json) =
      _$_UserItineraryPackageInformationResponse.fromJson;

  @override
  @JsonKey(name: 'data')
  List<UserItineraryPackageItemsResponse> get userItineraryPackageItemResponse;
  @override
  @JsonKey(ignore: true)
  _$$_UserItineraryPackageInformationResponseCopyWith<
          _$_UserItineraryPackageInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
