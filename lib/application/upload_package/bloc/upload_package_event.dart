part of 'upload_package_bloc.dart';

@freezed
abstract class UploadPackageEvent with _$UploadPackageEvent {
  const factory UploadPackageEvent.upload(
      {required bool isCompletePackage,
      required List<Map<String, dynamic>> userSingleDayList}) = _UploadEvent;
}
