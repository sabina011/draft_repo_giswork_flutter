// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_place_information_response_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainPlaceInformationItemsResponse _$MainPlaceInformationItemsResponseFromJson(
    Map<String, dynamic> json) {
  return _MainPlaceInformationItemsResponse.fromJson(json);
}

/// @nodoc
mixin _$MainPlaceInformationItemsResponse {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "place_name")
  String get mainPlaceName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainPlaceInformationItemsResponseCopyWith<MainPlaceInformationItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPlaceInformationItemsResponseCopyWith<$Res> {
  factory $MainPlaceInformationItemsResponseCopyWith(
          MainPlaceInformationItemsResponse value,
          $Res Function(MainPlaceInformationItemsResponse) then) =
      _$MainPlaceInformationItemsResponseCopyWithImpl<$Res,
          MainPlaceInformationItemsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "place_name") String mainPlaceName});
}

/// @nodoc
class _$MainPlaceInformationItemsResponseCopyWithImpl<$Res,
        $Val extends MainPlaceInformationItemsResponse>
    implements $MainPlaceInformationItemsResponseCopyWith<$Res> {
  _$MainPlaceInformationItemsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mainPlaceName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mainPlaceName: null == mainPlaceName
          ? _value.mainPlaceName
          : mainPlaceName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPlaceInformationItemsResponseCopyWith<$Res>
    implements $MainPlaceInformationItemsResponseCopyWith<$Res> {
  factory _$$_MainPlaceInformationItemsResponseCopyWith(
          _$_MainPlaceInformationItemsResponse value,
          $Res Function(_$_MainPlaceInformationItemsResponse) then) =
      __$$_MainPlaceInformationItemsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "place_name") String mainPlaceName});
}

/// @nodoc
class __$$_MainPlaceInformationItemsResponseCopyWithImpl<$Res>
    extends _$MainPlaceInformationItemsResponseCopyWithImpl<$Res,
        _$_MainPlaceInformationItemsResponse>
    implements _$$_MainPlaceInformationItemsResponseCopyWith<$Res> {
  __$$_MainPlaceInformationItemsResponseCopyWithImpl(
      _$_MainPlaceInformationItemsResponse _value,
      $Res Function(_$_MainPlaceInformationItemsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mainPlaceName = null,
  }) {
    return _then(_$_MainPlaceInformationItemsResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mainPlaceName: null == mainPlaceName
          ? _value.mainPlaceName
          : mainPlaceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MainPlaceInformationItemsResponse
    implements _MainPlaceInformationItemsResponse {
  const _$_MainPlaceInformationItemsResponse(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "place_name") required this.mainPlaceName});

  factory _$_MainPlaceInformationItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_MainPlaceInformationItemsResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "place_name")
  final String mainPlaceName;

  @override
  String toString() {
    return 'MainPlaceInformationItemsResponse(id: $id, mainPlaceName: $mainPlaceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPlaceInformationItemsResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainPlaceName, mainPlaceName) ||
                other.mainPlaceName == mainPlaceName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mainPlaceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPlaceInformationItemsResponseCopyWith<
          _$_MainPlaceInformationItemsResponse>
      get copyWith => __$$_MainPlaceInformationItemsResponseCopyWithImpl<
          _$_MainPlaceInformationItemsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainPlaceInformationItemsResponseToJson(
      this,
    );
  }
}

abstract class _MainPlaceInformationItemsResponse
    implements MainPlaceInformationItemsResponse {
  const factory _MainPlaceInformationItemsResponse(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "place_name") required final String mainPlaceName}) =
      _$_MainPlaceInformationItemsResponse;

  factory _MainPlaceInformationItemsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_MainPlaceInformationItemsResponse.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "place_name")
  String get mainPlaceName;
  @override
  @JsonKey(ignore: true)
  _$$_MainPlaceInformationItemsResponseCopyWith<
          _$_MainPlaceInformationItemsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
