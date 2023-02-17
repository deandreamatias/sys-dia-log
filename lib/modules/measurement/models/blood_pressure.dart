import 'package:hive/hive.dart';

part 'blood_pressure.g.dart';

/// BloodPressure model represents systolic and diastolic values at mmHg,
/// json view:
/// {
///   "systolic": 120,
///   "diastolic": 80,
///   "category": "HIGH"
/// }
@HiveType(typeId: 1, adapterName: 'BloodPressureHiveAdapter')
class BloodPressure extends HiveObject {
  static const String _systolicJsonKey = 'systolic';
  static const String _diastolicJsonKey = 'diastolic';
  static const String _categoryJsonKey = 'category';

  @HiveField(0)
  final int systolic;

  @HiveField(1)
  final int diastolic;

  @HiveField(2)
  final String category;

  BloodPressure({
    required this.systolic,
    required this.diastolic,
    required this.category,
  });

  BloodPressure.fromMap(Map<String, dynamic> json)
      : systolic = json[_systolicJsonKey] as int,
        diastolic = json[_diastolicJsonKey] as int,
        category = json[_categoryJsonKey] as String;

  Map<String, dynamic> toMap() {
    return {
      _systolicJsonKey: systolic,
      _diastolicJsonKey: diastolic,
      _categoryJsonKey: category,
    };
  }
}
