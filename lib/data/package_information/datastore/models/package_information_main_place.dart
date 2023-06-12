import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_information_main_place.freezed.dart';
part 'package_information_main_place.g.dart';


@freezed
abstract class PackageInfoMainPlaceItemsResponse
    with _$PackageInfoMainPlaceItemsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PackageInfoMainPlaceItemsResponse({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "places") required List<String> places,

  }) = _PackageInfoMainPlaceItemsResponse;

  factory PackageInfoMainPlaceItemsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PackageInfoMainPlaceItemsResponseFromJson(json);
}
