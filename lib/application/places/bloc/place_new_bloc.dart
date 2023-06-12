import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/data/places/datastore/model/place_response.dart';
import 'package:myapp/domain/places/repository/places_repository.dart';

part 'place_new_bloc.freezed.dart';
part 'place_new_event.dart';
part 'place_new_state.dart';


@injectable
class GetPlacesBloc extends Bloc<GetPlacesEvent, GetPlaceState>{
  final GetPlacesRepository getPlacesRepository;

  GetPlacesBloc(this.getPlacesRepository) : super(const _Initial()) {
    on<GetPlacesEvent>((event, emit) async {
      emit(const GetPlaceState.loading());
      try {
        final result = await getPlacesRepository.getPlaces(event.place);
        emit(GetPlaceState.success(places: result));
      } on DioError catch (err) {
        emit(GetPlaceState.error(
          errMsg: err.message,
        ));
      }
      catch(ex){
        emit(GetPlaceState.error(errMsg: ex.toString()));
      }
    });
  }
}