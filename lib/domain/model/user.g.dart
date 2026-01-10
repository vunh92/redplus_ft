// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String,
      username: fields[1] as String?,
      name: fields[2] as String?,
      email: fields[3] as String?,
      password: fields[4] as String?,
      phone: fields[5] as String?,
      address: fields[6] as String?,
      type: fields[7] as String?,
      token: fields[8] as String?,
      avatar: fields[9] as String?,
      tier: fields[10] as String?,
      point: fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.password)
      ..writeByte(5)
      ..write(obj.phone)
      ..writeByte(6)
      ..write(obj.address)
      ..writeByte(7)
      ..write(obj.type)
      ..writeByte(8)
      ..write(obj.token)
      ..writeByte(9)
      ..write(obj.avatar)
      ..writeByte(10)
      ..write(obj.tier)
      ..writeByte(11)
      ..write(obj.point);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
