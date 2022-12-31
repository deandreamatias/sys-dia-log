import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sys_dia_log/hive/hive_box.dart';
import 'app.dart';

/// Sys Dia Log application entrypoint.
void main() async {
  await Hive.initFlutter();

  await Future.wait([
    Hive.openLazyBox(measurementsBox),
  ]);

  runApp(SysDiaLogApp());
}
