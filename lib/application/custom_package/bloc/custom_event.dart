
part of 'custom_bloc.dart';

@freezed
class CustomPostEvent with _$CustomPostEvent{
  const factory CustomPostEvent.submit({required Map<String,dynamic> customizeDataInputs}) =_Submit;
}