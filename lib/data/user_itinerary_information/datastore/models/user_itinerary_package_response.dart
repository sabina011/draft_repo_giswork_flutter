import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/data/user_itinerary_information/datastore/models/user_itinerary_package_items_response.dart';

part 'user_itinerary_package_response.freezed.dart';
part 'user_itinerary_package_response.g.dart';

@freezed
abstract class UserItineraryPackageInformationResponse
    with _$UserItineraryPackageInformationResponse {
  @JsonSerializable(explicitToJson: true)
  const factory UserItineraryPackageInformationResponse({
    @JsonKey(name: 'data') required List<UserItineraryPackageItemsResponse>
    userItineraryPackageItemResponse}) = _UserItineraryPackageInformationResponse;

  factory UserItineraryPackageInformationResponse.fromJson(
      Map<String, dynamic> json) =>
      _$UserItineraryPackageInformationResponseFromJson(json);
}
