// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_information_response_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageInformationItemsResponse _$PackageInformationItemsResponseFromJson(
    Map<String, dynamic> json) {
  return _PackageInformationItemsResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageInformationItemsResponse {
  @JsonKey(name: "package_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "package_name")
  String get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: "main_places")
  List<PackageInfoMainPlaceItemsResponse>
      get packagesInfoMainPlaceItemResponse =>
          throw _privateConstructorUsedError;
  @JsonKey(name: "contributors")
  List<ContributorsItemsResponse> get contributors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageInformationItemsResponseCopyWith<PackageInformationItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageInformationItemsResponseCopyWith<$Res> {
  factory $PackageInformationItemsResponseCopyWith(
          PackageInformationItemsResponse value,
          $Res Function(PackageInformationItemsResponse) then) =
      _$PackageInformationItemsResponseCopyWithImpl<$Res,
          PackageInformationItemsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "package_id")
          int id,
      @JsonKey(name: "package_name")
          String packageName,
      @JsonKey(name: "main_places")
          List<PackageInfoMainPlaceItemsResponse>
              packagesInfoMainPlaceItemResponse,
      @JsonKey(name: "contributors")
          List<ContributorsItemsResponse> contributors});
}

/// @nodoc
class _$PackageInformationItemsResponseCopyWithImpl<$Res,
        $Val extends PackageInformationItemsResponse>
    implements $PackageInformationItemsResponseCopyWith<$Res> {
  _$PackageInformationItemsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageName = null,
    Object? packagesInfoMainPlaceItemResponse = null,
    Object? contributors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packagesInfoMainPlaceItemResponse: null ==
              packagesInfoMainPlaceItemResponse
          ? _value.packagesInfoMainPlaceItemResponse
          : packagesInfoMainPlaceItemResponse // ignore: cast_nullable_to_non_nullable
              as List<PackageInfoMainPlaceItemsResponse>,
      contributors: null == contributors
          ? _value.contributors
          : contributors // ignore: cast_nullable_to_non_nullable
              as List<ContributorsItemsResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageInformationItemsResponseCopyWith<$Res>
    implements $PackageInformationItemsResponseCopyWith<$Res> {
  factory _$$_PackageInformationItemsResponseCopyWith(
          _$_PackageInformationItemsResponse value,
          $Res Function(_$_PackageInformationItemsResponse) then) =
      __$$_PackageInformationItemsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "package_id")
          int id,
      @JsonKey(name: "package_name")
          String packageName,
      @JsonKey(name: "main_places")
          List<PackageInfoMainPlaceItemsResponse>
              packagesInfoMainPlaceItemResponse,
      @JsonKey(name: "contributors")
          List<ContributorsItemsResponse> contributors});
}

/// @nodoc
class __$$_PackageInformationItemsResponseCopyWithImpl<$Res>
    extends _$PackageInformationItemsResponseCopyWithImpl<$Res,
        _$_PackageInformationItemsResponse>
    implements _$$_PackageInformationItemsResponseCopyWith<$Res> {
  __$$_PackageInformationItemsResponseCopyWithImpl(
      _$_PackageInformationItemsResponse _value,
      $Res Function(_$_PackageInformationItemsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageName = null,
    Object? packagesInfoMainPlaceItemResponse = null,
    Object? contributors = null,
  }) {
    return _then(_$_PackageInformationItemsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packagesInfoMainPlaceItemResponse: null ==
              packagesInfoMainPlaceItemResponse
          ? _value._packagesInfoMainPlaceItemResponse
          : packagesInfoMainPlaceItemResponse // ignore: cast_nullable_to_non_nullable
              as List<PackageInfoMainPlaceItemsResponse>,
      contributors: null == contributors
          ? _value._contributors
          : contributors // ignore: cast_nullable_to_non_nullable
              as List<ContributorsItemsResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PackageInformationItemsResponse
    implements _PackageInformationItemsResponse {
  const _$_PackageInformationItemsResponse(
      {@JsonKey(name: "package_id")
          required this.id,
      @JsonKey(name: "package_name")
          required this.packageName,
      @JsonKey(name: "main_places")
          required final List<PackageInfoMainPlaceItemsResponse>
              packagesInfoMainPlaceItemResponse,
      @JsonKey(name: "contributors")
          required final List<ContributorsItemsResponse> contributors})
      : _packagesInfoMainPlaceItemResponse = packagesInfoMainPlaceItemResponse,
        _contributors = contributors;

  factory _$_PackageInformationItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PackageInformationItemsResponseFromJson(json);

  @override
  @JsonKey(name: "package_id")
  final int id;
  @override
  @JsonKey(name: "package_name")
  final String packageName;
  final List<PackageInfoMainPlaceItemsResponse>
      _packagesInfoMainPlaceItemResponse;
  @override
  @JsonKey(name: "main_places")
  List<PackageInfoMainPlaceItemsResponse>
      get packagesInfoMainPlaceItemResponse {
    if (_packagesInfoMainPlaceItemResponse is EqualUnmodifiableListView)
      return _packagesInfoMainPlaceItemResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packagesInfoMainPlaceItemResponse);
  }

  final List<ContributorsItemsResponse> _contributors;
  @override
  @JsonKey(name: "contributors")
  List<ContributorsItemsResponse> get contributors {
    if (_contributors is EqualUnmodifiableListView) return _contributors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contributors);
  }

  @override
  String toString() {
    return 'PackageInformationItemsResponse(id: $id, packageName: $packageName, packagesInfoMainPlaceItemResponse: $packagesInfoMainPlaceItemResponse, contributors: $contributors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageInformationItemsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            const DeepCollectionEquality().equals(
                other._packagesInfoMainPlaceItemResponse,
                _packagesInfoMainPlaceItemResponse) &&
            const DeepCollectionEquality()
                .equals(other._contributors, _contributors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      packageName,
      const DeepCollectionEquality().hash(_packagesInfoMainPlaceItemResponse),
      const DeepCollectionEquality().hash(_contributors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageInformationItemsResponseCopyWith<
          _$_PackageInformationItemsResponse>
      get copyWith => __$$_PackageInformationItemsResponseCopyWithImpl<
          _$_PackageInformationItemsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageInformationItemsResponseToJson(
      this,
    );
  }
}

abstract class _PackageInformationItemsResponse
    implements PackageInformationItemsResponse {
  const factory _PackageInformationItemsResponse(
          {@JsonKey(name: "package_id")
              required final int id,
          @JsonKey(name: "package_name")
              required final String packageName,
          @JsonKey(name: "main_places")
              required final List<PackageInfoMainPlaceItemsResponse>
                  packagesInfoMainPlaceItemResponse,
          @JsonKey(name: "contributors")
              required final List<ContributorsItemsResponse> contributors}) =
      _$_PackageInformationItemsResponse;

  factory _PackageInformationItemsResponse.fromJson(Map<String, dynamic> json) =
      _$_PackageInformationItemsResponse.fromJson;

  @override
  @JsonKey(name: "package_id")
  int get id;
  @override
  @JsonKey(name: "package_name")
  String get packageName;
  @override
  @JsonKey(name: "main_places")
  List<PackageInfoMainPlaceItemsResponse> get packagesInfoMainPlaceItemResponse;
  @override
  @JsonKey(name: "contributors")
  List<ContributorsItemsResponse> get contributors;
  @override
  @JsonKey(ignore: true)
  _$$_PackageInformationItemsResponseCopyWith<
          _$_PackageInformationItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
