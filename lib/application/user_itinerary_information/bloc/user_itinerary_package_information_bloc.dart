import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/utils/shared/exception_handler.dart';

import '../../../data/user_itinerary_information/datastore/models/user_itinerary_package_response.dart';
import '../../../domain/user_itinerary_information/repository/user_itinerary_package_information_repository.dart';

part 'user_itinerary_package_information_bloc.freezed.dart';
part 'user_itinerary_package_information_event.dart';
part 'user_itinerary_package_information_state.dart';

@Injectable()
class GetUserItineraryPackageInformationBloc extends Bloc<
    GetUserItineraryPackageInformationEvent,
    GetUserItineraryPackageInformationState> {
  GetUserItineraryPackageInformationRepository
      getUserItineraryPackageInformationRepository;

  GetUserItineraryPackageInformationBloc(
      this.getUserItineraryPackageInformationRepository)
      : super(const _Initial()) {
    on<GetUserItineraryPackageInformationEvent>((event, emit) async {
      await event.maybeWhen(
          getUserItineraryPackageInformationResponse:
              (userId, packageID) async {
            emit(const GetUserItineraryPackageInformationState.loading());
            try {
              final result = await getUserItineraryPackageInformationRepository
                  .getUserItineraryPackageInformation(userId, packageID);
              emit(
                GetUserItineraryPackageInformationState.success(
                  userItineraryPackageResponse: result,
                ),
              );
            } on DioError catch (err) {
              String errorMessage = DioExceptionHandler.getDioErrorMessage(err);
              emit(GetUserItineraryPackageInformationState.error(
                errMsg: errorMessage,
              ));
            } catch (err) {
              String errorMessage =
                  GenericExceptionHandler.getGenericErrorMessage(
                      err.toString());
              emit(GetUserItineraryPackageInformationState.error(
                  errMsg: errorMessage));
            }
          },
          orElse: () {});
    });
  }
}
