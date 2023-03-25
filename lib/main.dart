import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';
import 'package:sys_dia_log/modules/measurement/models/pulse.dart';
import 'package:sys_dia_log/modules/settings/model/locale_adapter.dart';
import 'package:sys_dia_log/modules/settings/model/theme_mode_adapter.dart';

import 'app.dart';
import 'hive/hive_box.dart';

/// Sys Dia Log application entrypoint.
void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(BloodPressureHiveAdapter());
  Hive.registerAdapter(PulseHiveAdapter());
  Hive.registerAdapter(MeasurementHiveAdapter());
  Hive.registerAdapter(ThemeModeHiveAdapter());
  Hive.registerAdapter(LocaleHiveAdapter());

  await Future.wait([
    Hive.openBox(applicationSettingsBox),
  ]);

  runApp(SysDiaLogApp());
}
