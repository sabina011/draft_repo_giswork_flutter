import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:myapp/domain/places/datastore/places_datastore.dart';
import 'package:myapp/domain/places/repository/places_repository.dart';

import '../datastore/model/place_response.dart';

@LazySingleton(as: GetPlacesRepository)
class GetPlacesRepositoryImpl extends GetPlacesRepository {
  final GetPlacesDataStore getPlacesDataStore;

  GetPlacesRepositoryImpl(this.getPlacesDataStore);

  @override
  Future<List<PlacesResponse>> getPlaces(String mainPlace) async {
    try {
      final result = await getPlacesDataStore.getPlaces(mainPlace);
      return result;
    } catch (ex) {
      log("Error fetching place_posts data  : ${ex.toString()}");
      throw UnimplementedError();
    }
  }
}
