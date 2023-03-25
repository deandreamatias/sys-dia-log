import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeModeHiveAdapter extends TypeAdapter<ThemeMode> {
  @override
  int get typeId => 3;

  @override
  ThemeMode read(BinaryReader reader) {
    return ThemeMode.values.byName(reader.readString());
  }

  @override
  void write(BinaryWriter writer, ThemeMode obj) {
    writer.writeString(obj.name);
  }
}
