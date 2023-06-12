import 'package:freezed_annotation/freezed_annotation.dart';

import 'place_information_response_items.dart';

part 'place_information_response.freezed.dart';
part 'place_information_response.g.dart';

@freezed
abstract class GetPlaceInformationResponse with _$GetPlaceInformationResponse {
  const factory GetPlaceInformationResponse({
    required List<PlaceInformationItemsResponse> placeInformationResponse,
  }) = _GetPlaceInformationResponse;

  factory GetPlaceInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPlaceInformationResponseFromJson(json);
}
