// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customize_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomizeResponse _$CustomizeResponseFromJson(Map<String, dynamic> json) {
  return _CustomizeResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomizeResponse {
  @JsonKey(name: "message")
  String get successMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomizeResponseCopyWith<CustomizeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomizeResponseCopyWith<$Res> {
  factory $CustomizeResponseCopyWith(
          CustomizeResponse value, $Res Function(CustomizeResponse) then) =
      _$CustomizeResponseCopyWithImpl<$Res, CustomizeResponse>;
  @useResult
  $Res call({@JsonKey(name: "message") String successMsg});
}

/// @nodoc
class _$CustomizeResponseCopyWithImpl<$Res, $Val extends CustomizeResponse>
    implements $CustomizeResponseCopyWith<$Res> {
  _$CustomizeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMsg = null,
  }) {
    return _then(_value.copyWith(
      successMsg: null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomizeResponseCopyWith<$Res>
    implements $CustomizeResponseCopyWith<$Res> {
  factory _$$_CustomizeResponseCopyWith(_$_CustomizeResponse value,
          $Res Function(_$_CustomizeResponse) then) =
      __$$_CustomizeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String successMsg});
}

/// @nodoc
class __$$_CustomizeResponseCopyWithImpl<$Res>
    extends _$CustomizeResponseCopyWithImpl<$Res, _$_CustomizeResponse>
    implements _$$_CustomizeResponseCopyWith<$Res> {
  __$$_CustomizeResponseCopyWithImpl(
      _$_CustomizeResponse _value, $Res Function(_$_CustomizeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMsg = null,
  }) {
    return _then(_$_CustomizeResponse(
      successMsg: null == successMsg
          ? _value.successMsg
          : successMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CustomizeResponse implements _CustomizeResponse {
  const _$_CustomizeResponse(
      {@JsonKey(name: "message") required this.successMsg});

  factory _$_CustomizeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomizeResponseFromJson(json);

  @override
  @JsonKey(name: "message")
  final String successMsg;

  @override
  String toString() {
    return 'CustomizeResponse(successMsg: $successMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomizeResponse &&
            (identical(other.successMsg, successMsg) ||
                other.successMsg == successMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, successMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomizeResponseCopyWith<_$_CustomizeResponse> get copyWith =>
      __$$_CustomizeResponseCopyWithImpl<_$_CustomizeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomizeResponseToJson(
      this,
    );
  }
}

abstract class _CustomizeResponse implements CustomizeResponse {
  const factory _CustomizeResponse(
          {@JsonKey(name: "message") required final String successMsg}) =
      _$_CustomizeResponse;

  factory _CustomizeResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomizeResponse.fromJson;

  @override
  @JsonKey(name: "message")
  String get successMsg;
  @override
  @JsonKey(ignore: true)
  _$$_CustomizeResponseCopyWith<_$_CustomizeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
