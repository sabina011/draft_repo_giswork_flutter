
import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_information_contributors_items.freezed.dart';
part 'package_information_contributors_items.g.dart';


@freezed
abstract class ContributorsItemsResponse with _$ContributorsItemsResponse{
  @JsonSerializable(explicitToJson: true)
  const factory ContributorsItemsResponse({
    @JsonKey(name:"id") required int userID,
    @JsonKey(name:"name") required String userName,
  }) = _ContributorsItemsResponse;

  factory ContributorsItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContributorsItemsResponseFromJson(json);
}