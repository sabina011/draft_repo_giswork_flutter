import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/data/sharedPreference/sharedpreference_helper.dart';
import 'package:myapp/data/upload_package/datastore/models/upload_package_response.dart';
import 'package:myapp/domain/upload_package/repository/upload_package_repository.dart';

part 'upload_package_bloc.freezed.dart';
part 'upload_package_event.dart';
part 'upload_package_state.dart';

@Injectable()
class UploadPackageBloc extends Bloc<UploadPackageEvent, UploadPackageState> {
  GetUploadPackageRepository uploadPackageRepository;
  SharedPreferenceHelper preferenceHelper;

  UploadPackageBloc(this.uploadPackageRepository, this.preferenceHelper)
      : super(const _Initial()) {
    on<UploadPackageEvent>((event, emit) async {
      await event.maybeWhen(
          upload: (isCompletePackage,userSingleDayList) async {

            emit(const UploadPackageState.loading());
            try {
              final result = await uploadPackageRepository
                  .uploadPackage(isCompletePackage,userSingleDayList);
              emit(UploadPackageState.success(uploadPackageResponse: result));

              if(isCompletePackage){
                ///get the data
                String? uniquePackageId  = preferenceHelper.tempGetItineraryPackageId();
                ///package upload with unique package identification
                preferenceHelper.setUploadedPackagesIds(packageId: uniquePackageId!);
              }else{
                ///upload list item without package upload.
                /// get temporary stored sharedPreference data
                final rawJson = preferenceHelper.getMaxDayUploadedInstanceTemporary() ?? '';
                Map<String, dynamic> map = jsonDecode(rawJson);
                final maxUploadedDay = map['max_upload_day'];
                final maxUploadedDayDataLength = map['max_upload_day_length'];

                /// set temporary data to main usable variables
                preferenceHelper.setMaxDayUploadValue(maxDay: maxUploadedDay);
                preferenceHelper.setMaxDayUploadValueDataLength(maxDayDataLength:maxUploadedDayDataLength);

                ///save uploaded data to true
                preferenceHelper.setItineraryUploadSuccess();

              }
            } on DioError catch (err) {
              emit(UploadPackageState.error(
                errMsg: err.message,
              ));
              debugPrint("Exception Dio: ${err.message}");
            } catch (err) {
              emit(UploadPackageState.error(errMsg: err.toString()));
              debugPrint("Exception General: ${err.toString()}");
            }
          },
          orElse: () {});
    });
  }
}
