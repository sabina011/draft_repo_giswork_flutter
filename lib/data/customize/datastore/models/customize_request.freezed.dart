// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customize_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomizeRequest _$CustomizeRequestFromJson(Map<String, dynamic> json) {
  return _CustomizeRequest.fromJson(json);
}

/// @nodoc
mixin _$CustomizeRequest {
  Map<String, dynamic> get customUserInputs =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomizeRequestCopyWith<CustomizeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomizeRequestCopyWith<$Res> {
  factory $CustomizeRequestCopyWith(
          CustomizeRequest value, $Res Function(CustomizeRequest) then) =
      _$CustomizeRequestCopyWithImpl<$Res, CustomizeRequest>;
  @useResult
  $Res call({Map<String, dynamic> customUserInputs});
}

/// @nodoc
class _$CustomizeRequestCopyWithImpl<$Res, $Val extends CustomizeRequest>
    implements $CustomizeRequestCopyWith<$Res> {
  _$CustomizeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customUserInputs = null,
  }) {
    return _then(_value.copyWith(
      customUserInputs: null == customUserInputs
          ? _value.customUserInputs
          : customUserInputs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomizeRequestCopyWith<$Res>
    implements $CustomizeRequestCopyWith<$Res> {
  factory _$$_CustomizeRequestCopyWith(
          _$_CustomizeRequest value, $Res Function(_$_CustomizeRequest) then) =
      __$$_CustomizeRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> customUserInputs});
}

/// @nodoc
class __$$_CustomizeRequestCopyWithImpl<$Res>
    extends _$CustomizeRequestCopyWithImpl<$Res, _$_CustomizeRequest>
    implements _$$_CustomizeRequestCopyWith<$Res> {
  __$$_CustomizeRequestCopyWithImpl(
      _$_CustomizeRequest _value, $Res Function(_$_CustomizeRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customUserInputs = null,
  }) {
    return _then(_$_CustomizeRequest(
      customUserInputs: null == customUserInputs
          ? _value._customUserInputs
          : customUserInputs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomizeRequest implements _CustomizeRequest {
  const _$_CustomizeRequest(
      {required final Map<String, dynamic> customUserInputs})
      : _customUserInputs = customUserInputs;

  factory _$_CustomizeRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CustomizeRequestFromJson(json);

  final Map<String, dynamic> _customUserInputs;
  @override
  Map<String, dynamic> get customUserInputs {
    if (_customUserInputs is EqualUnmodifiableMapView) return _customUserInputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_customUserInputs);
  }

  @override
  String toString() {
    return 'CustomizeRequest(customUserInputs: $customUserInputs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomizeRequest &&
            const DeepCollectionEquality()
                .equals(other._customUserInputs, _customUserInputs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customUserInputs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomizeRequestCopyWith<_$_CustomizeRequest> get copyWith =>
      __$$_CustomizeRequestCopyWithImpl<_$_CustomizeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomizeRequestToJson(
      this,
    );
  }
}

abstract class _CustomizeRequest implements CustomizeRequest {
  const factory _CustomizeRequest(
          {required final Map<String, dynamic> customUserInputs}) =
      _$_CustomizeRequest;

  factory _CustomizeRequest.fromJson(Map<String, dynamic> json) =
      _$_CustomizeRequest.fromJson;

  @override
  Map<String, dynamic> get customUserInputs;
  @override
  @JsonKey(ignore: true)
  _$$_CustomizeRequestCopyWith<_$_CustomizeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
