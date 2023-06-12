// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_information_main_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageInfoMainPlaceItemsResponse _$PackageInfoMainPlaceItemsResponseFromJson(
    Map<String, dynamic> json) {
  return _PackageInfoMainPlaceItemsResponse.fromJson(json);
}

/// @nodoc
mixin _$PackageInfoMainPlaceItemsResponse {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "places")
  List<String> get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageInfoMainPlaceItemsResponseCopyWith<PackageInfoMainPlaceItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageInfoMainPlaceItemsResponseCopyWith<$Res> {
  factory $PackageInfoMainPlaceItemsResponseCopyWith(
          PackageInfoMainPlaceItemsResponse value,
          $Res Function(PackageInfoMainPlaceItemsResponse) then) =
      _$PackageInfoMainPlaceItemsResponseCopyWithImpl<$Res,
          PackageInfoMainPlaceItemsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "places") List<String> places});
}

/// @nodoc
class _$PackageInfoMainPlaceItemsResponseCopyWithImpl<$Res,
        $Val extends PackageInfoMainPlaceItemsResponse>
    implements $PackageInfoMainPlaceItemsResponseCopyWith<$Res> {
  _$PackageInfoMainPlaceItemsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageInfoMainPlaceItemsResponseCopyWith<$Res>
    implements $PackageInfoMainPlaceItemsResponseCopyWith<$Res> {
  factory _$$_PackageInfoMainPlaceItemsResponseCopyWith(
          _$_PackageInfoMainPlaceItemsResponse value,
          $Res Function(_$_PackageInfoMainPlaceItemsResponse) then) =
      __$$_PackageInfoMainPlaceItemsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "places") List<String> places});
}

/// @nodoc
class __$$_PackageInfoMainPlaceItemsResponseCopyWithImpl<$Res>
    extends _$PackageInfoMainPlaceItemsResponseCopyWithImpl<$Res,
        _$_PackageInfoMainPlaceItemsResponse>
    implements _$$_PackageInfoMainPlaceItemsResponseCopyWith<$Res> {
  __$$_PackageInfoMainPlaceItemsResponseCopyWithImpl(
      _$_PackageInfoMainPlaceItemsResponse _value,
      $Res Function(_$_PackageInfoMainPlaceItemsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? places = null,
  }) {
    return _then(_$_PackageInfoMainPlaceItemsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PackageInfoMainPlaceItemsResponse
    implements _PackageInfoMainPlaceItemsResponse {
  const _$_PackageInfoMainPlaceItemsResponse(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "places") required final List<String> places})
      : _places = places;

  factory _$_PackageInfoMainPlaceItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PackageInfoMainPlaceItemsResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  final List<String> _places;
  @override
  @JsonKey(name: "places")
  List<String> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PackageInfoMainPlaceItemsResponse(id: $id, name: $name, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageInfoMainPlaceItemsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageInfoMainPlaceItemsResponseCopyWith<
          _$_PackageInfoMainPlaceItemsResponse>
      get copyWith => __$$_PackageInfoMainPlaceItemsResponseCopyWithImpl<
          _$_PackageInfoMainPlaceItemsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageInfoMainPlaceItemsResponseToJson(
      this,
    );
  }
}

abstract class _PackageInfoMainPlaceItemsResponse
    implements PackageInfoMainPlaceItemsResponse {
  const factory _PackageInfoMainPlaceItemsResponse(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "places") required final List<String> places}) =
      _$_PackageInfoMainPlaceItemsResponse;

  factory _PackageInfoMainPlaceItemsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_PackageInfoMainPlaceItemsResponse.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "places")
  List<String> get places;
  @override
  @JsonKey(ignore: true)
  _$$_PackageInfoMainPlaceItemsResponseCopyWith<
          _$_PackageInfoMainPlaceItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
