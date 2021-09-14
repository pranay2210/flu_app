// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BannerAdapter extends TypeAdapter<Banner> {
  @override
  Banner read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Banner(
      bannerSettingsID: fields[0] as int,
      collectionID: fields[1] as String,
      bannerImageName: fields[2] as String,
      bannerImagePriority: fields[3] as int,
      lastUpdated: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Banner obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.bannerSettingsID)
      ..writeByte(1)
      ..write(obj.collectionID)
      ..writeByte(2)
      ..write(obj.bannerImageName)
      ..writeByte(3)
      ..write(obj.bannerImagePriority)
      ..writeByte(4)
      ..write(obj.lastUpdated);
  }
}
