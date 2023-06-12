// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_information_contributors_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContributorsItemsResponse _$ContributorsItemsResponseFromJson(
    Map<String, dynamic> json) {
  return _ContributorsItemsResponse.fromJson(json);
}

/// @nodoc
mixin _$ContributorsItemsResponse {
  @JsonKey(name: "id")
  int get userID => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContributorsItemsResponseCopyWith<ContributorsItemsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContributorsItemsResponseCopyWith<$Res> {
  factory $ContributorsItemsResponseCopyWith(ContributorsItemsResponse value,
          $Res Function(ContributorsItemsResponse) then) =
      _$ContributorsItemsResponseCopyWithImpl<$Res, ContributorsItemsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int userID,
      @JsonKey(name: "name") String userName});
}

/// @nodoc
class _$ContributorsItemsResponseCopyWithImpl<$Res,
        $Val extends ContributorsItemsResponse>
    implements $ContributorsItemsResponseCopyWith<$Res> {
  _$ContributorsItemsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContributorsItemsResponseCopyWith<$Res>
    implements $ContributorsItemsResponseCopyWith<$Res> {
  factory _$$_ContributorsItemsResponseCopyWith(
          _$_ContributorsItemsResponse value,
          $Res Function(_$_ContributorsItemsResponse) then) =
      __$$_ContributorsItemsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int userID,
      @JsonKey(name: "name") String userName});
}

/// @nodoc
class __$$_ContributorsItemsResponseCopyWithImpl<$Res>
    extends _$ContributorsItemsResponseCopyWithImpl<$Res,
        _$_ContributorsItemsResponse>
    implements _$$_ContributorsItemsResponseCopyWith<$Res> {
  __$$_ContributorsItemsResponseCopyWithImpl(
      _$_ContributorsItemsResponse _value,
      $Res Function(_$_ContributorsItemsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? userName = null,
  }) {
    return _then(_$_ContributorsItemsResponse(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ContributorsItemsResponse implements _ContributorsItemsResponse {
  const _$_ContributorsItemsResponse(
      {@JsonKey(name: "id") required this.userID,
      @JsonKey(name: "name") required this.userName});

  factory _$_ContributorsItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContributorsItemsResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final int userID;
  @override
  @JsonKey(name: "name")
  final String userName;

  @override
  String toString() {
    return 'ContributorsItemsResponse(userID: $userID, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContributorsItemsResponse &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContributorsItemsResponseCopyWith<_$_ContributorsItemsResponse>
      get copyWith => __$$_ContributorsItemsResponseCopyWithImpl<
          _$_ContributorsItemsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContributorsItemsResponseToJson(
      this,
    );
  }
}

abstract class _ContributorsItemsResponse implements ContributorsItemsResponse {
  const factory _ContributorsItemsResponse(
          {@JsonKey(name: "id") required final int userID,
          @JsonKey(name: "name") required final String userName}) =
      _$_ContributorsItemsResponse;

  factory _ContributorsItemsResponse.fromJson(Map<String, dynamic> json) =
      _$_ContributorsItemsResponse.fromJson;

  @override
  @JsonKey(name: "id")
  int get userID;
  @override
  @JsonKey(name: "name")
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_ContributorsItemsResponseCopyWith<_$_ContributorsItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
