// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_package_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadPackageResponse _$UploadPackageResponseFromJson(
    Map<String, dynamic> json) {
  return _UploadPackageResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadPackageResponse {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadPackageResponseCopyWith<UploadPackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPackageResponseCopyWith<$Res> {
  factory $UploadPackageResponseCopyWith(UploadPackageResponse value,
          $Res Function(UploadPackageResponse) then) =
      _$UploadPackageResponseCopyWithImpl<$Res, UploadPackageResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class _$UploadPackageResponseCopyWithImpl<$Res,
        $Val extends UploadPackageResponse>
    implements $UploadPackageResponseCopyWith<$Res> {
  _$UploadPackageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadPackageResponseCopyWith<$Res>
    implements $UploadPackageResponseCopyWith<$Res> {
  factory _$$_UploadPackageResponseCopyWith(_$_UploadPackageResponse value,
          $Res Function(_$_UploadPackageResponse) then) =
      __$$_UploadPackageResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class __$$_UploadPackageResponseCopyWithImpl<$Res>
    extends _$UploadPackageResponseCopyWithImpl<$Res, _$_UploadPackageResponse>
    implements _$$_UploadPackageResponseCopyWith<$Res> {
  __$$_UploadPackageResponseCopyWithImpl(_$_UploadPackageResponse _value,
      $Res Function(_$_UploadPackageResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UploadPackageResponse(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UploadPackageResponse implements _UploadPackageResponse {
  const _$_UploadPackageResponse(
      {@JsonKey(name: "message") required this.message});

  factory _$_UploadPackageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UploadPackageResponseFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'UploadPackageResponse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadPackageResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadPackageResponseCopyWith<_$_UploadPackageResponse> get copyWith =>
      __$$_UploadPackageResponseCopyWithImpl<_$_UploadPackageResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadPackageResponseToJson(
      this,
    );
  }
}

abstract class _UploadPackageResponse implements UploadPackageResponse {
  const factory _UploadPackageResponse(
          {@JsonKey(name: "message") required final String message}) =
      _$_UploadPackageResponse;

  factory _UploadPackageResponse.fromJson(Map<String, dynamic> json) =
      _$_UploadPackageResponse.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UploadPackageResponseCopyWith<_$_UploadPackageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
