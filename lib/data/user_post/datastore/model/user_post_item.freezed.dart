// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_post_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPostItem _$UserPostItemFromJson(Map<String, dynamic> json) {
  return _UserPostItem.fromJson(json);
}

/// @nodoc
mixin _$UserPostItem {
  int? get id => throw _privateConstructorUsedError;
  int? get day => throw _privateConstructorUsedError;
  String? get hotels_and_resturants => throw _privateConstructorUsedError;
  String? get geographical_info => throw _privateConstructorUsedError;
  String? get transportation_medium => throw _privateConstructorUsedError;
  String? get route_information => throw _privateConstructorUsedError;
  String? get seasonal_information => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  int? get user => throw _privateConstructorUsedError;
  int? get max_day => throw _privateConstructorUsedError;
  String? get location_name => throw _privateConstructorUsedError;
  @JsonKey(name: "geo_location")
  GeoLocationsUserPost? get geoLocationsUserPost =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<ImagesUserPost>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "videos")
  List<VideosUserPost>? get videos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPostItemCopyWith<UserPostItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostItemCopyWith<$Res> {
  factory $UserPostItemCopyWith(
          UserPostItem value, $Res Function(UserPostItem) then) =
      _$UserPostItemCopyWithImpl<$Res, UserPostItem>;
  @useResult
  $Res call(
      {int? id,
      int? day,
      String? hotels_and_resturants,
      String? geographical_info,
      String? transportation_medium,
      String? route_information,
      String? seasonal_information,
      String? created_at,
      int? user,
      int? max_day,
      String? location_name,
      @JsonKey(name: "geo_location") GeoLocationsUserPost? geoLocationsUserPost,
      @JsonKey(name: "images") List<ImagesUserPost>? images,
      @JsonKey(name: "videos") List<VideosUserPost>? videos});

  $GeoLocationsUserPostCopyWith<$Res>? get geoLocationsUserPost;
}

/// @nodoc
class _$UserPostItemCopyWithImpl<$Res, $Val extends UserPostItem>
    implements $UserPostItemCopyWith<$Res> {
  _$UserPostItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? hotels_and_resturants = freezed,
    Object? geographical_info = freezed,
    Object? transportation_medium = freezed,
    Object? route_information = freezed,
    Object? seasonal_information = freezed,
    Object? created_at = freezed,
    Object? user = freezed,
    Object? max_day = freezed,
    Object? location_name = freezed,
    Object? geoLocationsUserPost = freezed,
    Object? images = freezed,
    Object? videos = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels_and_resturants: freezed == hotels_and_resturants
          ? _value.hotels_and_resturants
          : hotels_and_resturants // ignore: cast_nullable_to_non_nullable
              as String?,
      geographical_info: freezed == geographical_info
          ? _value.geographical_info
          : geographical_info // ignore: cast_nullable_to_non_nullable
              as String?,
      transportation_medium: freezed == transportation_medium
          ? _value.transportation_medium
          : transportation_medium // ignore: cast_nullable_to_non_nullable
              as String?,
      route_information: freezed == route_information
          ? _value.route_information
          : route_information // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonal_information: freezed == seasonal_information
          ? _value.seasonal_information
          : seasonal_information // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      max_day: freezed == max_day
          ? _value.max_day
          : max_day // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLocationsUserPost: freezed == geoLocationsUserPost
          ? _value.geoLocationsUserPost
          : geoLocationsUserPost // ignore: cast_nullable_to_non_nullable
              as GeoLocationsUserPost?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesUserPost>?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideosUserPost>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationsUserPostCopyWith<$Res>? get geoLocationsUserPost {
    if (_value.geoLocationsUserPost == null) {
      return null;
    }

    return $GeoLocationsUserPostCopyWith<$Res>(_value.geoLocationsUserPost!,
        (value) {
      return _then(_value.copyWith(geoLocationsUserPost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserPostItemCopyWith<$Res>
    implements $UserPostItemCopyWith<$Res> {
  factory _$$_UserPostItemCopyWith(
          _$_UserPostItem value, $Res Function(_$_UserPostItem) then) =
      __$$_UserPostItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? day,
      String? hotels_and_resturants,
      String? geographical_info,
      String? transportation_medium,
      String? route_information,
      String? seasonal_information,
      String? created_at,
      int? user,
      int? max_day,
      String? location_name,
      @JsonKey(name: "geo_location") GeoLocationsUserPost? geoLocationsUserPost,
      @JsonKey(name: "images") List<ImagesUserPost>? images,
      @JsonKey(name: "videos") List<VideosUserPost>? videos});

  @override
  $GeoLocationsUserPostCopyWith<$Res>? get geoLocationsUserPost;
}

/// @nodoc
class __$$_UserPostItemCopyWithImpl<$Res>
    extends _$UserPostItemCopyWithImpl<$Res, _$_UserPostItem>
    implements _$$_UserPostItemCopyWith<$Res> {
  __$$_UserPostItemCopyWithImpl(
      _$_UserPostItem _value, $Res Function(_$_UserPostItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? hotels_and_resturants = freezed,
    Object? geographical_info = freezed,
    Object? transportation_medium = freezed,
    Object? route_information = freezed,
    Object? seasonal_information = freezed,
    Object? created_at = freezed,
    Object? user = freezed,
    Object? max_day = freezed,
    Object? location_name = freezed,
    Object? geoLocationsUserPost = freezed,
    Object? images = freezed,
    Object? videos = freezed,
  }) {
    return _then(_$_UserPostItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels_and_resturants: freezed == hotels_and_resturants
          ? _value.hotels_and_resturants
          : hotels_and_resturants // ignore: cast_nullable_to_non_nullable
              as String?,
      geographical_info: freezed == geographical_info
          ? _value.geographical_info
          : geographical_info // ignore: cast_nullable_to_non_nullable
              as String?,
      transportation_medium: freezed == transportation_medium
          ? _value.transportation_medium
          : transportation_medium // ignore: cast_nullable_to_non_nullable
              as String?,
      route_information: freezed == route_information
          ? _value.route_information
          : route_information // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonal_information: freezed == seasonal_information
          ? _value.seasonal_information
          : seasonal_information // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      max_day: freezed == max_day
          ? _value.max_day
          : max_day // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLocationsUserPost: freezed == geoLocationsUserPost
          ? _value.geoLocationsUserPost
          : geoLocationsUserPost // ignore: cast_nullable_to_non_nullable
              as GeoLocationsUserPost?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesUserPost>?,
      videos: freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideosUserPost>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserPostItem implements _UserPostItem {
  const _$_UserPostItem(
      {required this.id,
      required this.day,
      required this.hotels_and_resturants,
      required this.geographical_info,
      required this.transportation_medium,
      required this.route_information,
      required this.seasonal_information,
      required this.created_at,
      required this.user,
      required this.max_day,
      required this.location_name,
      @JsonKey(name: "geo_location") this.geoLocationsUserPost,
      @JsonKey(name: "images") final List<ImagesUserPost>? images,
      @JsonKey(name: "videos") final List<VideosUserPost>? videos})
      : _images = images,
        _videos = videos;

  factory _$_UserPostItem.fromJson(Map<String, dynamic> json) =>
      _$$_UserPostItemFromJson(json);

  @override
  final int? id;
  @override
  final int? day;
  @override
  final String? hotels_and_resturants;
  @override
  final String? geographical_info;
  @override
  final String? transportation_medium;
  @override
  final String? route_information;
  @override
  final String? seasonal_information;
  @override
  final String? created_at;
  @override
  final int? user;
  @override
  final int? max_day;
  @override
  final String? location_name;
  @override
  @JsonKey(name: "geo_location")
  final GeoLocationsUserPost? geoLocationsUserPost;
  final List<ImagesUserPost>? _images;
  @override
  @JsonKey(name: "images")
  List<ImagesUserPost>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VideosUserPost>? _videos;
  @override
  @JsonKey(name: "videos")
  List<VideosUserPost>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserPostItem(id: $id, day: $day, hotels_and_resturants: $hotels_and_resturants, geographical_info: $geographical_info, transportation_medium: $transportation_medium, route_information: $route_information, seasonal_information: $seasonal_information, created_at: $created_at, user: $user, max_day: $max_day, location_name: $location_name, geoLocationsUserPost: $geoLocationsUserPost, images: $images, videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPostItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.hotels_and_resturants, hotels_and_resturants) ||
                other.hotels_and_resturants == hotels_and_resturants) &&
            (identical(other.geographical_info, geographical_info) ||
                other.geographical_info == geographical_info) &&
            (identical(other.transportation_medium, transportation_medium) ||
                other.transportation_medium == transportation_medium) &&
            (identical(other.route_information, route_information) ||
                other.route_information == route_information) &&
            (identical(other.seasonal_information, seasonal_information) ||
                other.seasonal_information == seasonal_information) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.max_day, max_day) || other.max_day == max_day) &&
            (identical(other.location_name, location_name) ||
                other.location_name == location_name) &&
            (identical(other.geoLocationsUserPost, geoLocationsUserPost) ||
                other.geoLocationsUserPost == geoLocationsUserPost) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      day,
      hotels_and_resturants,
      geographical_info,
      transportation_medium,
      route_information,
      seasonal_information,
      created_at,
      user,
      max_day,
      location_name,
      geoLocationsUserPost,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPostItemCopyWith<_$_UserPostItem> get copyWith =>
      __$$_UserPostItemCopyWithImpl<_$_UserPostItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPostItemToJson(
      this,
    );
  }
}

abstract class _UserPostItem implements UserPostItem {
  const factory _UserPostItem(
      {required final int? id,
      required final int? day,
      required final String? hotels_and_resturants,
      required final String? geographical_info,
      required final String? transportation_medium,
      required final String? route_information,
      required final String? seasonal_information,
      required final String? created_at,
      required final int? user,
      required final int? max_day,
      required final String? location_name,
      @JsonKey(name: "geo_location")
          final GeoLocationsUserPost? geoLocationsUserPost,
      @JsonKey(name: "images")
          final List<ImagesUserPost>? images,
      @JsonKey(name: "videos")
          final List<VideosUserPost>? videos}) = _$_UserPostItem;

  factory _UserPostItem.fromJson(Map<String, dynamic> json) =
      _$_UserPostItem.fromJson;

  @override
  int? get id;
  @override
  int? get day;
  @override
  String? get hotels_and_resturants;
  @override
  String? get geographical_info;
  @override
  String? get transportation_medium;
  @override
  String? get route_information;
  @override
  String? get seasonal_information;
  @override
  String? get created_at;
  @override
  int? get user;
  @override
  int? get max_day;
  @override
  String? get location_name;
  @override
  @JsonKey(name: "geo_location")
  GeoLocationsUserPost? get geoLocationsUserPost;
  @override
  @JsonKey(name: "images")
  List<ImagesUserPost>? get images;
  @override
  @JsonKey(name: "videos")
  List<VideosUserPost>? get videos;
  @override
  @JsonKey(ignore: true)
  _$$_UserPostItemCopyWith<_$_UserPostItem> get copyWith =>
      throw _privateConstructorUsedError;
}
