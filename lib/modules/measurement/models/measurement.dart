import 'blood_pressure.dart';
import 'pulse.dart';

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
class Measurement {
  static const String _bloodPressureJsonKey = 'bloodPressure';
  static const String _pulseJsonKey = 'pulse';
  static const String _createdAtJsonKey = 'createdAt';

  final BloodPressure bloodPressure;
  final Pulse pulse;
  final DateTime createdAt;

  Measurement(int systolic, int diastolic, int bpm, this.createdAt)
      : bloodPressure = BloodPressure(systolic, diastolic),
        pulse = Pulse(bpm);

  Measurement.fromJson(Map<String, dynamic> json)
      : bloodPressure = BloodPressure.fromJson(
            json[_bloodPressureJsonKey] as Map<String, dynamic>),
        pulse = Pulse.fromJson(json[_pulseJsonKey] as Map<String, dynamic>),
        createdAt = DateTime.parse(json[_createdAtJsonKey] as String);

  Map<String, dynamic> toJson() {
    return {
      _bloodPressureJsonKey: bloodPressure.toJson(),
      _pulseJsonKey: pulse.toJson(),
      _createdAtJsonKey: createdAt.toIso8601String()
    };
  }
}
