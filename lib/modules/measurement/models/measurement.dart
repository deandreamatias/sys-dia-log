import 'package:hive/hive.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';
import 'blood_pressure.dart';
import 'pulse.dart';

part 'measurement.g.dart';

/// Measurement model represents data values at particular time,
/// json view:
/// {
///   "bloodPressure" : {
///     "systolic": 110,
///     "diastolic": 90,
///     "category": "NORMAL"
///   },
///   "pulse": {
///       "bpm" : 65
///   },
///  "createdAt":  "2022-12-08T20:49:44Z"
/// }
@HiveType(typeId: 0, adapterName: 'MeasurementHiveAdapter')
class Measurement extends HiveObject {
  static const String _bloodPressureJsonKey = 'bloodPressure';
  static const String _pulseJsonKey = 'pulse';
  static const String _createdAtJsonKey = 'createdAt';

  @HiveField(0)
  final BloodPressure bloodPressure;

  @HiveField(1)
  final Pulse pulse;

  @HiveField(2)
  final DateTime createdAt;

  Measurement({
    required this.bloodPressure,
    required this.pulse,
    required this.createdAt,
  });

  Measurement.values({
    required int systolic,
    required int diastolic,
    required BloodPressureCategory category,
    required int bpm,
  }) : this(
          bloodPressure: BloodPressure(
              systolic: systolic,
              diastolic: diastolic,
              category: category.jsonValue),
          pulse: Pulse(bpm: bpm),
          createdAt: DateTime.now().toUtc(),
        );

  Measurement.fromMap(Map<String, dynamic> json)
      : bloodPressure = BloodPressure.fromMap(
            json[_bloodPressureJsonKey] as Map<String, dynamic>),
        pulse = Pulse.fromMap(json[_pulseJsonKey] as Map<String, dynamic>),
        createdAt = DateTime.parse(json[_createdAtJsonKey] as String);

  Map<String, dynamic> toMap() {
    return {
      _bloodPressureJsonKey: bloodPressure.toMap(),
      _pulseJsonKey: pulse.toMap(),
      _createdAtJsonKey: createdAt.toIso8601String()
    };
  }
}
