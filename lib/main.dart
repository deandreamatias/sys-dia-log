import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';
import 'package:sys_dia_log/modules/measurement/models/pulse.dart';

import 'app.dart';

/// Sys Dia Log application entrypoint.
void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(BloodPressureHiveAdapter());
  Hive.registerAdapter(PulseHiveAdapter());
  Hive.registerAdapter(MeasurementHiveAdapter());

  runApp(SysDiaLogApp());
}
