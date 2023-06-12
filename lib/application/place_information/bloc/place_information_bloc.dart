import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/domain/place_information/repository/place_information_repository.dart';

import '../../../data/place_information/datastore/models/place_information_response_items.dart';

part 'place_information_bloc.freezed.dart';
part 'place_information_event.dart';
part 'place_information_state.dart';

@Injectable()
class GetPlaceInformationBloc
    extends Bloc<GetPlaceInformationEvent, GetPlaceInformationState> {
  GetPlaceInformationRepository getPlaceInformationRepository;

  GetPlaceInformationBloc(this.getPlaceInformationRepository)
      : super(const _Initial()) {
    on<GetPlaceInformationEvent>((event, emit) async {
      await event.maybeWhen(
          getPlaceInformation: (place_name) async {
            emit(const GetPlaceInformationState.loading());
            try {
              final result = await getPlaceInformationRepository
                  .getPlaceInformation(place_name);
              emit(
                GetPlaceInformationState.success(
                  getPlaceInformationResponse: result,
                ),
              );
            } on DioError catch (err) {
              emit(GetPlaceInformationState.error(
                errMsg: err.message,
              ));
            } catch (ex) {
              emit(GetPlaceInformationState.error(errMsg: ex.toString()));
            }
          },
          orElse: () {});
    });
  }
}
