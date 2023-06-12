// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../../data/customize/custmize_api_service.dart' as _i25;
import '../../data/customize/datastore/customize_datastore_impl.dart' as _i27;
import '../../data/customize/repository/customize_repository_impl.dart' as _i29;
import '../../data/itinerary_show/datastore/itinerary_response_items_datastore_impl.dart'
    as _i32;
import '../../data/itinerary_show/itinerary_response_api_service.dart' as _i30;
import '../../data/itinerary_show/repository/itinerary_response_items_repository_impl.dart'
    as _i34;
import '../../data/main_place_information/datastore/main_place_information_datastore_impl.dart'
    as _i37;
import '../../data/main_place_information/main_place_information_api_service.dart'
    as _i35;
import '../../data/main_place_information/repository/main_place_information_repository_impl.dart'
    as _i39;
import '../../data/network/dio_client.dart' as _i3;
import '../../data/package_information/datastore/package_information_datastore_impl.dart'
    as _i42;
import '../../data/package_information/package_information_api_service.dart'
    as _i40;
import '../../data/package_information/repository/package_information_repository_impl.dart'
    as _i44;
import '../../data/place_information/datastore/place_information_datastore_impl.dart'
    as _i47;
import '../../data/place_information/place_information_api_service.dart'
    as _i45;
import '../../data/place_information/repository/place_information_repository_impl.dart'
    as _i49;
import '../../data/places/datastore/places_datastore_impl.dart' as _i6;
import '../../data/places/places_api_service.dart' as _i4;
import '../../data/places/repository/places_repository_impl.dart' as _i8;
import '../../data/session/datastore/session_datastore_impl.dart' as _i15;
import '../../data/session/repository/session_repository_impl.dart' as _i17;
import '../../data/session/session_api_service.dart' as _i10;
import '../../data/sharedPreference/sharedpreference_helper.dart' as _i22;
import '../../data/upload_package/datastore/upload_package_datastore_impl.dart'
    as _i51;
import '../../data/upload_package/repository/upload_package_repository_impl.dart'
    as _i53;
import '../../data/upload_package/upload_package_api_service.dart' as _i23;
import '../../data/user_itinerary_information/datastore/user_itinerary_information_datastore_impl.dart'
    as _i56;
import '../../data/user_itinerary_information/repository/user_itinerary_information_repository_impl.dart'
    as _i58;
import '../../data/user_itinerary_information/user_itinerary_information_api_service.dart'
    as _i54;
import '../../data/user_post/datastore/user_post_datastore_impl.dart'
    as _i19;
import '../../data/user_post/repository/user_post_repository_impl.dart'
    as _i21;
import '../../data/user_post/user_post_api_service.dart' as _i12;
import '../../domain/customize/datastore/customize_datastore.dart' as _i26;
import '../../domain/customize/repository/customize_repository.dart' as _i28;
import '../../domain/itinerary_show/datastore/itinerary_show_datastore.dart'
    as _i31;
import '../../domain/itinerary_show/repository/itinerary_show_repository.dart'
    as _i33;
import '../../domain/main_place_information/datastore/main_place_information_datastore.dart'
    as _i36;
import '../../domain/main_place_information/repository/main_place_information_repository.dart'
    as _i38;
import '../../domain/package_information/datastore/package_information_datastore.dart'
    as _i41;
import '../../domain/package_information/repository/package_information_repository.dart'
    as _i43;
import '../../domain/place_information/datastore/place_information_datastore.dart'
    as _i46;
import '../../domain/place_information/repository/place_information_repository.dart'
    as _i48;
import '../../domain/places/datastore/places_datastore.dart' as _i5;
import '../../domain/places/repository/places_repository.dart' as _i7;
import '../../domain/session/datastore/session_datastore.dart' as _i14;
import '../../domain/session/repository/session_repository.dart' as _i16;
import '../../domain/upload_package/datastore/upload_package_datastore.dart'
    as _i50;
import '../../domain/upload_package/repository/upload_package_repository.dart'
    as _i52;
import '../../domain/user_itinerary_information/datastore/user_itinerary_package_information_datastore.dart'
    as _i55;
import '../../domain/user_itinerary_information/repository/user_itinerary_package_information_repository.dart'
    as _i57;
import '../../domain/user_post/datastore/user_post_datastore.dart' as _i18;
import '../../domain/user_post/repository/user_post_repository.dart' as _i20;
import '../connection/bloc/connection_bloc.dart' as _i9;
import '../custom_package/bloc/custom_bloc.dart' as _i61;
import '../itinerary_show/itinerary_show_bloc.dart' as _i62;
import '../login/bloc/login_bloc.dart' as _i59;
import '../main_place_information/bloc/main_place_information_bloc.dart'
    as _i63;
import '../package_information/bloc/package_information_bloc.dart' as _i64;
import '../place_information/bloc/place_information_bloc.dart' as _i65;
import '../places/bloc/place_new_bloc.dart' as _i13;
import '../upload_package/bloc/upload_package_bloc.dart' as _i60;
import '../user_itinerary_information/bloc/user_itinerary_package_information_bloc.dart'
    as _i66;
import '../user_posts/bloc/user_post_new_bloc.dart' as _i24;
import 'injection.dart' as _i67; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.DioClient>(() => _i3.DioClient());
  gh.factory<_i4.GetPlacesApiService>(
      () => _i4.GetPlacesApiService(get<_i3.DioClient>()));
  gh.lazySingleton<_i5.GetPlacesDataStore>(
      () => _i6.GetPlacesDataStoreImpl(get<_i4.GetPlacesApiService>()));
  gh.lazySingleton<_i7.GetPlacesRepository>(
      () => _i8.GetPlacesRepositoryImpl(get<_i5.GetPlacesDataStore>()));
  gh.factory<_i9.NetworkConnectionBloc>(() => _i9.NetworkConnectionBloc());
  gh.factory<_i10.SessionLoginApiService>(
      () => _i10.SessionLoginApiService(get<_i3.DioClient>()));
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i12.UserPostApiService>(
      () => _i12.UserPostApiService(get<_i3.DioClient>()));
  gh.factory<_i13.GetPlacesBloc>(
      () => _i13.GetPlacesBloc(get<_i7.GetPlacesRepository>()));
  gh.lazySingleton<_i14.GetSessionDataStore>(
      () => _i15.GetSessionDataStoreImpl(get<_i10.SessionLoginApiService>()));
  gh.lazySingleton<_i16.GetSessionRepository>(
      () => _i17.GetSessionRepositoryImpl(get<_i14.GetSessionDataStore>()));
  gh.lazySingleton<_i18.GetUserPostDataStore>(
      () => _i19.UserPostDataStoreImpl(get<_i12.UserPostApiService>()));
  gh.lazySingleton<_i20.GetUserPostRepository>(
      () => _i21.GetUserPostRepositoryImpl(get<_i18.GetUserPostDataStore>()));
  gh.factory<_i22.SharedPreferenceHelper>(
      () => _i22.SharedPreferenceHelper(prefs: get<_i11.SharedPreferences>()));
  gh.factory<_i23.UploadPackageApiService>(() => _i23.UploadPackageApiService(
        get<_i22.SharedPreferenceHelper>(),
        get<_i3.DioClient>(),
      ));
  gh.factory<_i24.UserPostBloc>(
      () => _i24.UserPostBloc(get<_i20.GetUserPostRepository>()));
  gh.factory<_i25.CustomizeApiService>(() => _i25.CustomizeApiService(
        get<_i3.DioClient>(),
        get<_i22.SharedPreferenceHelper>(),
      ));
  gh.lazySingleton<_i26.GetCustomizeDataStore>(
      () => _i27.GetCustomizeDataStoreImpl(get<_i25.CustomizeApiService>()));
  gh.lazySingleton<_i28.GetCustomizeRepository>(
      () => _i29.GetCustomizeRepositoryImpl(get<_i26.GetCustomizeDataStore>()));
  gh.factory<_i30.GetItineraryShowApiService>(
      () => _i30.GetItineraryShowApiService(
            get<_i22.SharedPreferenceHelper>(),
            get<_i3.DioClient>(),
          ));
  gh.lazySingleton<_i31.GetItineraryShowDataStore>(() =>
      _i32.GetMainPlaceInformationDataStoreImpl(
          get<_i30.GetItineraryShowApiService>()));
  gh.lazySingleton<_i33.GetItineraryShowRepository>(() =>
      _i34.GetMainPlaceInformationRepositoryImpl(
          get<_i31.GetItineraryShowDataStore>()));
  gh.factory<_i35.GetMainPlaceInformationApiService>(
      () => _i35.GetMainPlaceInformationApiService(
            get<_i22.SharedPreferenceHelper>(),
            get<_i3.DioClient>(),
          ));
  gh.lazySingleton<_i36.GetMainPlaceInformationDataStore>(() =>
      _i37.GetMainPlaceInformationDataStoreImpl(
          get<_i35.GetMainPlaceInformationApiService>()));
  gh.lazySingleton<_i38.GetMainPlaceInformationRepository>(() =>
      _i39.GetMainPlaceInformationRepositoryImpl(
          get<_i36.GetMainPlaceInformationDataStore>()));
  gh.factory<_i40.GetPackageInformationApiService>(
      () => _i40.GetPackageInformationApiService(
            get<_i22.SharedPreferenceHelper>(),
            get<_i3.DioClient>(),
          ));
  gh.lazySingleton<_i41.GetPackageInformationDataStore>(() =>
      _i42.GetPackageInformationDataStoreImpl(
          get<_i40.GetPackageInformationApiService>()));
  gh.lazySingleton<_i43.GetPackageInformationRepository>(() =>
      _i44.GetPackageInformationRepositoryImpl(
          get<_i41.GetPackageInformationDataStore>()));
  gh.factory<_i45.GetPlaceInformationApiService>(
      () => _i45.GetPlaceInformationApiService(
            get<_i22.SharedPreferenceHelper>(),
            get<_i3.DioClient>(),
          ));
  gh.lazySingleton<_i46.GetPlaceInformationDataStore>(() =>
      _i47.GetUploadPackageDataStoreImpl(
          get<_i45.GetPlaceInformationApiService>()));
  gh.lazySingleton<_i48.GetPlaceInformationRepository>(() =>
      _i49.GetUploadPackageRepositoryImpl(
          get<_i46.GetPlaceInformationDataStore>()));
  gh.lazySingleton<_i50.GetUploadPackageDataStore>(() =>
      _i51.GetUploadPackageDataStoreImpl(get<_i23.UploadPackageApiService>()));
  gh.lazySingleton<_i52.GetUploadPackageRepository>(() =>
      _i53.GetUploadPackageRepositoryImpl(
          get<_i50.GetUploadPackageDataStore>()));
  gh.factory<_i54.GetUserItineraryPackageInformationApiService>(
      () => _i54.GetUserItineraryPackageInformationApiService(
            get<_i22.SharedPreferenceHelper>(),
            get<_i3.DioClient>(),
          ));
  gh.lazySingleton<_i55.GetUserItineraryPackageInformationDataStore>(() =>
      _i56.GetUserItineraryPackageInformationDataStoreImpl(
          get<_i54.GetUserItineraryPackageInformationApiService>()));
  gh.lazySingleton<_i57.GetUserItineraryPackageInformationRepository>(() =>
      _i58.GetUserItineraryPackageInformationRepositoryImpl(
          get<_i55.GetUserItineraryPackageInformationDataStore>()));
  gh.factory<_i59.LoginBloc>(() => _i59.LoginBloc(
        get<_i16.GetSessionRepository>(),
        get<_i22.SharedPreferenceHelper>(),
      ));
  gh.factory<_i60.UploadPackageBloc>(() => _i60.UploadPackageBloc(
        get<_i52.GetUploadPackageRepository>(),
        get<_i22.SharedPreferenceHelper>(),
      ));
  gh.factory<_i61.CustomPostBloc>(
      () => _i61.CustomPostBloc(get<_i28.GetCustomizeRepository>()));
  gh.factory<_i62.GetItineraryShowBloc>(
      () => _i62.GetItineraryShowBloc(get<_i33.GetItineraryShowRepository>()));
  gh.factory<_i63.GetMainPlaceInformationBloc>(() =>
      _i63.GetMainPlaceInformationBloc(
          get<_i38.GetMainPlaceInformationRepository>()));
  gh.factory<_i64.GetPackageInformationBloc>(() =>
      _i64.GetPackageInformationBloc(
          get<_i43.GetPackageInformationRepository>()));
  gh.factory<_i65.GetPlaceInformationBloc>(() =>
      _i65.GetPlaceInformationBloc(get<_i48.GetPlaceInformationRepository>()));
  gh.factory<_i66.GetUserItineraryPackageInformationBloc>(() =>
      _i66.GetUserItineraryPackageInformationBloc(
          get<_i57.GetUserItineraryPackageInformationRepository>()));
  return get;
}

class _$InjectionModule extends _i67.InjectionModule {}
