part of 'package_information_bloc.dart';

@freezed
abstract class GetPackageInformationEvent with _$GetPackageInformationEvent {
  const factory GetPackageInformationEvent.getPackageInformation(
      {required String query}) = _GetPackageInformationEvent;
}
