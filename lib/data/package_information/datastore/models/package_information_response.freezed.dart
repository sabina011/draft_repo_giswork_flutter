// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_information_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageInformationResponse _$PackageInformationResponseFromJson(
    Map<String, dynamic> json) {
  return _PackageInformationResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageInformationResponse {
  @JsonKey(name: "data_size")
  int get dataSize => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<PackageInformationItemsResponse> get packageInfoResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageInformationResponseCopyWith<PackageInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageInformationResponseCopyWith<$Res> {
  factory $PackageInformationResponseCopyWith(PackageInformationResponse value,
          $Res Function(PackageInformationResponse) then) =
      _$PackageInformationResponseCopyWithImpl<$Res,
          PackageInformationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "data_size")
          int dataSize,
      @JsonKey(name: "data")
          List<PackageInformationItemsResponse> packageInfoResponse});
}

/// @nodoc
class _$PackageInformationResponseCopyWithImpl<$Res,
        $Val extends PackageInformationResponse>
    implements $PackageInformationResponseCopyWith<$Res> {
  _$PackageInformationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataSize = null,
    Object? packageInfoResponse = null,
  }) {
    return _then(_value.copyWith(
      dataSize: null == dataSize
          ? _value.dataSize
          : dataSize // ignore: cast_nullable_to_non_nullable
              as int,
      packageInfoResponse: null == packageInfoResponse
          ? _value.packageInfoResponse
          : packageInfoResponse // ignore: cast_nullable_to_non_nullable
              as List<PackageInformationItemsResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageInformationResponseCopyWith<$Res>
    implements $PackageInformationResponseCopyWith<$Res> {
  factory _$$_PackageInformationResponseCopyWith(
          _$_PackageInformationResponse value,
          $Res Function(_$_PackageInformationResponse) then) =
      __$$_PackageInformationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data_size")
          int dataSize,
      @JsonKey(name: "data")
          List<PackageInformationItemsResponse> packageInfoResponse});
}

/// @nodoc
class __$$_PackageInformationResponseCopyWithImpl<$Res>
    extends _$PackageInformationResponseCopyWithImpl<$Res,
        _$_PackageInformationResponse>
    implements _$$_PackageInformationResponseCopyWith<$Res> {
  __$$_PackageInformationResponseCopyWithImpl(
      _$_PackageInformationResponse _value,
      $Res Function(_$_PackageInformationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataSize = null,
    Object? packageInfoResponse = null,
  }) {
    return _then(_$_PackageInformationResponse(
      dataSize: null == dataSize
          ? _value.dataSize
          : dataSize // ignore: cast_nullable_to_non_nullable
              as int,
      packageInfoResponse: null == packageInfoResponse
          ? _value._packageInfoResponse
          : packageInfoResponse // ignore: cast_nullable_to_non_nullable
              as List<PackageInformationItemsResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PackageInformationResponse implements _PackageInformationResponse {
  const _$_PackageInformationResponse(
      {@JsonKey(name: "data_size")
          required this.dataSize,
      @JsonKey(name: "data")
          required final List<PackageInformationItemsResponse>
              packageInfoResponse})
      : _packageInfoResponse = packageInfoResponse;

  factory _$_PackageInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PackageInformationResponseFromJson(json);

  @override
  @JsonKey(name: "data_size")
  final int dataSize;
  final List<PackageInformationItemsResponse> _packageInfoResponse;
  @override
  @JsonKey(name: "data")
  List<PackageInformationItemsResponse> get packageInfoResponse {
    if (_packageInfoResponse is EqualUnmodifiableListView)
      return _packageInfoResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packageInfoResponse);
  }

  @override
  String toString() {
    return 'PackageInformationResponse(dataSize: $dataSize, packageInfoResponse: $packageInfoResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageInformationResponse &&
            (identical(other.dataSize, dataSize) ||
                other.dataSize == dataSize) &&
            const DeepCollectionEquality()
                .equals(other._packageInfoResponse, _packageInfoResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dataSize,
      const DeepCollectionEquality().hash(_packageInfoResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageInformationResponseCopyWith<_$_PackageInformationResponse>
      get copyWith => __$$_PackageInformationResponseCopyWithImpl<
          _$_PackageInformationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageInformationResponseToJson(
      this,
    );
  }
}

abstract class _PackageInformationResponse
    implements PackageInformationResponse {
  const factory _PackageInformationResponse(
      {@JsonKey(name: "data_size")
          required final int dataSize,
      @JsonKey(name: "data")
          required final List<PackageInformationItemsResponse>
              packageInfoResponse}) = _$_PackageInformationResponse;

  factory _PackageInformationResponse.fromJson(Map<String, dynamic> json) =
      _$_PackageInformationResponse.fromJson;

  @override
  @JsonKey(name: "data_size")
  int get dataSize;
  @override
  @JsonKey(name: "data")
  List<PackageInformationItemsResponse> get packageInfoResponse;
  @override
  @JsonKey(ignore: true)
  _$$_PackageInformationResponseCopyWith<_$_PackageInformationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
