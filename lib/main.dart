import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app.dart';

/// Sys Dia Log application entrypoint.
void main() async {
  await Hive.initFlutter();

  await Future.wait([
    Hive.openBox('measurements'),
  ]);

  runApp(SysDiaLogApp());
}
