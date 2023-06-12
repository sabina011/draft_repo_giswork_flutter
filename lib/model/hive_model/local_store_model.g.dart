// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_store_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalStoreInformationAdapter extends TypeAdapter<LocalStoreInformation> {
  @override
  final int typeId = 0;

  @override
  LocalStoreInformation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalStoreInformation()
      ..locationName = fields[0] as String
      ..hotelsAndRestaurants = fields[1] as String
      ..geographicalInfo = fields[2] as String
      ..transportationMedium = fields[3] as String
      ..routeInformation = fields[4] as String
      ..seasonalInformation = fields[5] as String
      ..createdAt = fields[6] as String
      ..geoLocation = fields[7] as GeoLocation
      ..images =
          fields[8] == null ? ['a.jpg'] : (fields[8] as List?)?.cast<String>()
      ..videos =
          fields[9] == null ? ['a.jpg'] : (fields[9] as List?)?.cast<String>()
      ..day = fields[10] as int
      ..unitImagesFileList = (fields[13] as List?)?.cast<Uint8List>()
      ..unitVideosFileList = (fields[14] as List?)?.cast<Uint8List>();
  }

  @override
  void write(BinaryWriter writer, LocalStoreInformation obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.locationName)
      ..writeByte(1)
      ..write(obj.hotelsAndRestaurants)
      ..writeByte(2)
      ..write(obj.geographicalInfo)
      ..writeByte(3)
      ..write(obj.transportationMedium)
      ..writeByte(4)
      ..write(obj.routeInformation)
      ..writeByte(5)
      ..write(obj.seasonalInformation)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.geoLocation)
      ..writeByte(8)
      ..write(obj.images)
      ..writeByte(9)
      ..write(obj.videos)
      ..writeByte(10)
      ..write(obj.day)
      ..writeByte(13)
      ..write(obj.unitImagesFileList)
      ..writeByte(14)
      ..write(obj.unitVideosFileList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalStoreInformationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GeoLocationAdapter extends TypeAdapter<GeoLocation> {
  @override
  final int typeId = 1;

  @override
  GeoLocation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeoLocation(
      srid: fields[0] as int,
      points: fields[1] as Points,
    );
  }

  @override
  void write(BinaryWriter writer, GeoLocation obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.srid)
      ..writeByte(1)
      ..write(obj.points);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeoLocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PointsAdapter extends TypeAdapter<Points> {
  @override
  final int typeId = 2;

  @override
  Points read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Points(
      latitude: fields[0] as double,
      longitude: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Points obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
