import 'dart:typed_data';

import 'package:hive/hive.dart';

part 'local_store_model.g.dart';

@HiveType(typeId: 0)
class LocalStoreInformation extends HiveObject {
  @HiveField(0)
  late String locationName;

  @HiveField(1)
  late String hotelsAndRestaurants;

  @HiveField(2)
  late String geographicalInfo;

  @HiveField(3)
  late String transportationMedium;

  @HiveField(4)
  late String routeInformation;

  @HiveField(5)
  late String seasonalInformation;

  @HiveField(6)
  late String createdAt;

  @HiveField(7)
  late GeoLocation geoLocation;

  @HiveField(8, defaultValue: ['a.jpg'])
  late List<String>? images;

  @HiveField(9, defaultValue: ['a.jpg'])
  late List<String>? videos;

  @HiveField(10)
  late int day;

  // @HiveField(11,defaultValue: [])
  // late List<File> imageFiles;
  //
  //
  // @HiveField(12,defaultValue: [])
  // late List<File> videoFiles;

  @HiveField(13)
  List<Uint8List>? unitImagesFileList;

  @HiveField(14)
  List<Uint8List>? unitVideosFileList;
}

@HiveType(typeId: 1)
class GeoLocation {
  @HiveField(0)
  late int srid;

  @HiveField(1)
  late Points points;

  GeoLocation({required this.srid, required this.points});
}

@HiveType(typeId: 2)
class Points {
  @HiveField(0)
  late double latitude;

  @HiveField(1)
  late double longitude;

  Points({required this.latitude, required this.longitude});
}
