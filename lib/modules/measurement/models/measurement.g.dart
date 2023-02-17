// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasurementHiveAdapter extends TypeAdapter<Measurement> {
  @override
  final int typeId = 0;

  @override
  Measurement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measurement(
      bloodPressure: fields[0] as BloodPressure,
      pulse: fields[1] as Pulse,
      createdAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Measurement obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.bloodPressure)
      ..writeByte(1)
      ..write(obj.pulse)
      ..writeByte(2)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasurementHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
