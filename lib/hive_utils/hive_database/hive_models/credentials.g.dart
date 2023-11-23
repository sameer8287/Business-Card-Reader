// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CredentialHiveModelAdapter extends TypeAdapter<CredentialHiveModel> {
  @override
  final int typeId = 0;

  @override
  CredentialHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CredentialHiveModel(
      fullname: fields[1] as String?,
      username: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CredentialHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.fullname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CredentialHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
