// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_package_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadPackageRequest _$UploadPackageRequestFromJson(Map<String, dynamic> json) {
  return _UploadPackageRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadPackageRequest {
  bool get isCompletePackage => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get userSingleDayList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadPackageRequestCopyWith<UploadPackageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPackageRequestCopyWith<$Res> {
  factory $UploadPackageRequestCopyWith(UploadPackageRequest value,
          $Res Function(UploadPackageRequest) then) =
      _$UploadPackageRequestCopyWithImpl<$Res, UploadPackageRequest>;
  @useResult
  $Res call(
      {bool isCompletePackage, List<Map<String, dynamic>> userSingleDayList});
}

/// @nodoc
class _$UploadPackageRequestCopyWithImpl<$Res,
        $Val extends UploadPackageRequest>
    implements $UploadPackageRequestCopyWith<$Res> {
  _$UploadPackageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompletePackage = null,
    Object? userSingleDayList = null,
  }) {
    return _then(_value.copyWith(
      isCompletePackage: null == isCompletePackage
          ? _value.isCompletePackage
          : isCompletePackage // ignore: cast_nullable_to_non_nullable
              as bool,
      userSingleDayList: null == userSingleDayList
          ? _value.userSingleDayList
          : userSingleDayList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadPackageRequestCopyWith<$Res>
    implements $UploadPackageRequestCopyWith<$Res> {
  factory _$$_UploadPackageRequestCopyWith(_$_UploadPackageRequest value,
          $Res Function(_$_UploadPackageRequest) then) =
      __$$_UploadPackageRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCompletePackage, List<Map<String, dynamic>> userSingleDayList});
}

/// @nodoc
class __$$_UploadPackageRequestCopyWithImpl<$Res>
    extends _$UploadPackageRequestCopyWithImpl<$Res, _$_UploadPackageRequest>
    implements _$$_UploadPackageRequestCopyWith<$Res> {
  __$$_UploadPackageRequestCopyWithImpl(_$_UploadPackageRequest _value,
      $Res Function(_$_UploadPackageRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompletePackage = null,
    Object? userSingleDayList = null,
  }) {
    return _then(_$_UploadPackageRequest(
      isCompletePackage: null == isCompletePackage
          ? _value.isCompletePackage
          : isCompletePackage // ignore: cast_nullable_to_non_nullable
              as bool,
      userSingleDayList: null == userSingleDayList
          ? _value._userSingleDayList
          : userSingleDayList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadPackageRequest implements _UploadPackageRequest {
  const _$_UploadPackageRequest(
      {required this.isCompletePackage,
      required final List<Map<String, dynamic>> userSingleDayList})
      : _userSingleDayList = userSingleDayList;

  factory _$_UploadPackageRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UploadPackageRequestFromJson(json);

  @override
  final bool isCompletePackage;
  final List<Map<String, dynamic>> _userSingleDayList;
  @override
  List<Map<String, dynamic>> get userSingleDayList {
    if (_userSingleDayList is EqualUnmodifiableListView)
      return _userSingleDayList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userSingleDayList);
  }

  @override
  String toString() {
    return 'UploadPackageRequest(isCompletePackage: $isCompletePackage, userSingleDayList: $userSingleDayList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadPackageRequest &&
            (identical(other.isCompletePackage, isCompletePackage) ||
                other.isCompletePackage == isCompletePackage) &&
            const DeepCollectionEquality()
                .equals(other._userSingleDayList, _userSingleDayList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCompletePackage,
      const DeepCollectionEquality().hash(_userSingleDayList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadPackageRequestCopyWith<_$_UploadPackageRequest> get copyWith =>
      __$$_UploadPackageRequestCopyWithImpl<_$_UploadPackageRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadPackageRequestToJson(
      this,
    );
  }
}

abstract class _UploadPackageRequest implements UploadPackageRequest {
  const factory _UploadPackageRequest(
          {required final bool isCompletePackage,
          required final List<Map<String, dynamic>> userSingleDayList}) =
      _$_UploadPackageRequest;

  factory _UploadPackageRequest.fromJson(Map<String, dynamic> json) =
      _$_UploadPackageRequest.fromJson;

  @override
  bool get isCompletePackage;
  @override
  List<Map<String, dynamic>> get userSingleDayList;
  @override
  @JsonKey(ignore: true)
  _$$_UploadPackageRequestCopyWith<_$_UploadPackageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
