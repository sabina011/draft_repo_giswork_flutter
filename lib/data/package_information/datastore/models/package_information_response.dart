
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_response_items.dart';

part 'package_information_response.freezed.dart';
part 'package_information_response.g.dart';

@freezed
abstract class PackageInformationResponse with _$PackageInformationResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PackageInformationResponse({
    @JsonKey(name:"data_size") required int dataSize,
    @JsonKey(name:"data") required List<PackageInformationItemsResponse> packageInfoResponse,
  }) = _PackageInformationResponse;

  factory PackageInformationResponse.fromJson(Map<String, dynamic> json) =>
      _$PackageInformationResponseFromJson(json);
}