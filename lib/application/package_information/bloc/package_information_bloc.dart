import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_response.dart';
import 'package:myapp/domain/package_information/repository/package_information_repository.dart';

import '../../../utils/shared/exception_handler.dart';

part 'package_information_bloc.freezed.dart';
part 'package_information_event.dart';
part 'package_information_state.dart';

@Injectable()
class GetPackageInformationBloc
    extends Bloc<GetPackageInformationEvent, GetPackageInformationState> {
  GetPackageInformationRepository getPackageInformationRepository;

  GetPackageInformationBloc(this.getPackageInformationRepository)
      : super(const _Initial()) {
    on<GetPackageInformationEvent>((event, emit) async {
      await event.maybeWhen(
          getPackageInformation: (query) async {
            emit(const GetPackageInformationState.loading());
            try {
              final result = await getPackageInformationRepository
                  .getPackageInformation(query);
              emit(
                GetPackageInformationState.success(
                  getPlaceInformationResponse: result,
                ),
              );
            } on DioError catch (err) {
              String errorMessage = DioExceptionHandler.getDioErrorMessage(err);
              emit(GetPackageInformationState.error(
                errMsg: errorMessage,
              ));
            } catch (err) {
              String errorMessage =
                  GenericExceptionHandler.getGenericErrorMessage(
                      err.toString());
              emit(
                GetPackageInformationState.error(
                  errMsg: errorMessage,
                ),
              );
            }
          },
          orElse: () {});
    });
  }
}
