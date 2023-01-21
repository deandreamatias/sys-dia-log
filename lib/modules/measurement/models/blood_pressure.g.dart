// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_pressure.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodPressureHiveAdapter extends TypeAdapter<BloodPressure> {
  @override
  final int typeId = 1;

  @override
  BloodPressure read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodPressure(
      fields[0] as int,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BloodPressure obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.systolic)
      ..writeByte(1)
      ..write(obj.diastolic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodPressureHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
