// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_treatment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyTreatmentAdapter extends TypeAdapter<MyTreatment> {
  @override
  final int typeId = 2;

  @override
  MyTreatment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyTreatment(
      id: fields[0] as String,
      userId: fields[1] as String,
      imageUrl: fields[2] as String,
      title: fields[3] as String,
      content: fields[4] as String,
      code: fields[5] as String,
      endDate: fields[6] as String,
      status: fields[7] as String,
      createdAt: fields[8] as String,
      updatedAt: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MyTreatment obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.content)
      ..writeByte(5)
      ..write(obj.code)
      ..writeByte(6)
      ..write(obj.endDate)
      ..writeByte(7)
      ..write(obj.status)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyTreatmentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
