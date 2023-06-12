// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_store_lay_traveler.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalStoreLayTravelerInformationAdapter
    extends TypeAdapter<LocalStoreLayTravelerInformation> {
  @override
  final int typeId = 4;

  @override
  LocalStoreLayTravelerInformation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalStoreLayTravelerInformation()
      ..packageName = fields[0] as String
      ..packageUniqueId = fields[1] as int
      ..localStoreInformationPackageList =
          (fields[2] as List).cast<LocalStoreInformation>();
  }

  @override
  void write(BinaryWriter writer, LocalStoreLayTravelerInformation obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.packageName)
      ..writeByte(1)
      ..write(obj.packageUniqueId)
      ..writeByte(2)
      ..write(obj.localStoreInformationPackageList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalStoreLayTravelerInformationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
