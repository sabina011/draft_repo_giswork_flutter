
import 'package:freezed_annotation/freezed_annotation.dart';

import 'place_information_geo_location_response.dart';
import 'place_information_images_response.dart';

part 'place_information_response_items.freezed.dart';
part 'place_information_response_items.g.dart';

@freezed
abstract class PlaceInformationItemsResponse with _$PlaceInformationItemsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PlaceInformationItemsResponse({
    @JsonKey(name:"id") required int id,
    @JsonKey(name:"day") required int day,
    @JsonKey(name:"user") required int userId,
    @JsonKey(name:"main_place_id") required int mainPlaceId,
    @JsonKey(name:"location_name") required String location_name,
    @JsonKey(name:"geo_location") required GeoLocationResponse geoLocationResponse,
    @JsonKey(name:"images") required List<GeoImagesResponse> geoImagesResponse,
  }) = _PlaceInformationItemsResponse;

  factory PlaceInformationItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceInformationItemsResponseFromJson(json);
}
