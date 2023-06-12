
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_place_information_response_items.freezed.dart';
part 'main_place_information_response_items.g.dart';

@freezed
abstract class MainPlaceInformationItemsResponse with _$MainPlaceInformationItemsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory MainPlaceInformationItemsResponse({
    @JsonKey(name:"id") required int id,
    @JsonKey(name:"place_name") required String mainPlaceName,
  }) = _MainPlaceInformationItemsResponse;

  factory MainPlaceInformationItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$MainPlaceInformationItemsResponseFromJson(json);
}
