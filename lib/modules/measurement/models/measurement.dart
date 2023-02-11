import 'package:hive/hive.dart';
import 'blood_pressure.dart';
import 'pulse.dart';

part 'measurement.g.dart';

/// Measurement model represents data values at particular time,
/// json view:
/// {
///   "bloodPressure" : {
///     "systolic": 110,
///     "diastolic" : 90
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

  Measurement(this.bloodPressure, this.pulse, this.createdAt);

  Measurement.values(int systolic, int diastolic, int bpm, this.createdAt)
      : bloodPressure = BloodPressure(systolic, diastolic),
        pulse = Pulse(bpm);

  Measurement.fromMap(Map<String, dynamic> json)
      : bloodPressure = BloodPressure.fromMap(
            json[_bloodPressureJsonKey] as Map<String, dynamic>),
        pulse = Pulse.fromMap(json[_pulseJsonKey] as Map<String, dynamic>),
        createdAt = DateTime.parse(json[_createdAtJsonKey] as String);

  Map<String, dynamic> toMap() {
    return {
      _bloodPressureJsonKey: bloodPressure.toMap(),
      _pulseJsonKey: pulse.toJson(),
      _createdAtJsonKey: createdAt.toIso8601String()
    };
  }
}
