// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pulse.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PulseHiveAdapter extends TypeAdapter<Pulse> {
  @override
  final int typeId = 2;

  @override
  Pulse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pulse(
      bpm: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Pulse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.bpm);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PulseHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
