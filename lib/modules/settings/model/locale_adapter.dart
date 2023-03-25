import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocaleHiveAdapter extends TypeAdapter<Locale> {
  @override
  int get typeId => 4;

  @override
  Locale read(BinaryReader reader) {
    return _fromLocaleString(reader.readString(), "_");
  }

  @override
  void write(BinaryWriter writer, Locale obj) {
    writer.writeString(_toLocaleString(obj, "_"));
  }

  _toLocaleString(Locale locale, String separator) {
    final StringBuffer out = StringBuffer(locale.languageCode);
    if (locale.countryCode != null && locale.countryCode!.isNotEmpty) {
      out.write(separator);
      out.write(locale.countryCode);
    }
    return out.toString();
  }

  Locale _fromLocaleString(String localeStr, String separator) {
    List<String> parts = localeStr.split(separator);
    if (parts.length == 1) {
      return Locale(parts[0]);
    }
    return Locale(parts[0], parts[1]);
  }
}
