import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_response_items.dart';
import 'package:myapp/domain/itinerary_show/repository/itinerary_show_repository.dart';

part 'itinerary_show_bloc.freezed.dart';
part 'itinerary_show_event.dart';
part 'itinerary_show_state.dart';

@Injectable()
class GetItineraryShowBloc extends Bloc<GetItineraryShowEvent, GetItineraryShowState> {

  GetItineraryShowRepository getItineraryShowRepository;
  GetItineraryShowBloc(this.getItineraryShowRepository)
      : super(const _Initial()) {
    on<GetItineraryShowEvent>((event, emit) async {
      await event.maybeWhen(
          getItinerary: (packageName) async {
            emit(const GetItineraryShowState.loading());
            try {
              final result = await getItineraryShowRepository
                  .getItineraryShow(packageName);
              emit(
              GetItineraryShowState.success(itineraryShowItems: result),
              );
            } on DioError catch (err) {
              emit(GetItineraryShowState.error(
                errMsg: err.message,
              ));
            } catch (ex) {
              emit(GetItineraryShowState.error(errMsg: ex.toString()));
            }
          },
          orElse: () {});
    });


  }
}
