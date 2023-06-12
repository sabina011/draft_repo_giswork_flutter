import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/domain/customize/repository/customize_repository.dart';

part 'custom_bloc.freezed.dart';
part 'custom_event.dart';
part 'custom_state.dart';

@injectable
class CustomPostBloc extends Bloc<CustomPostEvent, CustomPostState> {
  final GetCustomizeRepository customizeRepository;

  CustomPostBloc(this.customizeRepository) : super(const _Initial()) {
    on<CustomPostEvent>((event, emit) async {
      await event.maybeWhen(
          submit: (customUserInputs) async {
            emit(CustomPostState.loading());
            try {
              final response =
                  await customizeRepository.customizeToServer(customUserInputs);
              emit(CustomPostState.success(successMsg: response.successMsg));
            } on DioError catch (ex) {
              log('Dio Error found at: ${ex.message.toString()}');
              emit(CustomPostState.error(errorMsg: ex.message));
            } catch(ex){
              log('Error found at: ${ex.toString()}');
              emit(CustomPostState.error(errorMsg: ex.toString()));
            }
          },
          orElse: () {});
    });
  }
}
