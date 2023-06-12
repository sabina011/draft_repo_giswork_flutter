import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/domain/main_place_information/repository/main_place_information_repository.dart';

import '../../../data/main_place_information/datastore/models/main_place_information_response_items.dart';

part 'main_place_information_bloc.freezed.dart';
part 'main_place_information_event.dart';
part 'main_place_information_state.dart';

@Injectable()
class GetMainPlaceInformationBloc
    extends Bloc<GetMainPlaceInformationEvent, GetMainPlaceInformationState> {
  GetMainPlaceInformationRepository getMainPlaceInformationRepository;

  GetMainPlaceInformationBloc(this.getMainPlaceInformationRepository)
      : super(const _Initial()) {
    on<GetMainPlaceInformationEvent>((event, emit) async {
      await event.maybeWhen(

          getMainPlaceInformation: () async {
            emit(const GetMainPlaceInformationState.loading());
            try {
              final result = await getMainPlaceInformationRepository
                  .getMainPlaceInformation();
              emit(
                GetMainPlaceInformationState.success(
                  getPlaceInformationResponse: result,
                ),
              );
            } on DioError catch (err) {
              print("Dio error Message"+err.message);
              emit(GetMainPlaceInformationState.error(
                errMsg: err.message,
              ));
            } catch (ex) {
              print("Dio error Message"+ex.toString());
              emit(GetMainPlaceInformationState.error(errMsg: ex.toString()));
            }
          },
          orElse: () {});
    });
  }
}
