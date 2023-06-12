
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_contributors_items.dart';

import 'package_information_main_place.dart';

part 'package_information_response_items.freezed.dart';
part 'package_information_response_items.g.dart';

@freezed
abstract class PackageInformationItemsResponse with _$PackageInformationItemsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PackageInformationItemsResponse({
    @JsonKey(name:"package_id") required int id,
    @JsonKey(name:"package_name") required String packageName,
    @JsonKey(name:"main_places") required List<PackageInfoMainPlaceItemsResponse> packagesInfoMainPlaceItemResponse,
    @JsonKey(name:"contributors") required List<ContributorsItemsResponse> contributors,
  }) = _PackageInformationItemsResponse;

  factory PackageInformationItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$PackageInformationItemsResponseFromJson(json);
}
