import 'package:hive/hive.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';

part 'blood_pressure.g.dart';

/// BloodPressure model represents systolic and diastolic values at mmHg,
/// json view:
/// {
///   "systolic": 120,
///   "diastolic": 80,
///   "category": "high"
/// }
@HiveType(typeId: 1, adapterName: 'BloodPressureHiveAdapter')
class BloodPressure {
  static const String _systolicJsonKey = 'systolic';
  static const String _diastolicJsonKey = 'diastolic';
  static const String _categoryJsonKey = 'category';

  @HiveField(0)
  final int systolic;

  @HiveField(1)
  final int diastolic;

  @HiveField(2)
  final String category;

  BloodPressure(this.systolic, this.diastolic)
      : category = BloodPressureCategory.fromValues(systolic, diastolic).name;

  BloodPressure.fromMap(Map<String, dynamic> json)
      : systolic = json[_systolicJsonKey] as int,
        diastolic = json[_diastolicJsonKey] as int,
        category = BloodPressureCategory.values
            .byName(json[_categoryJsonKey] as String)
            .name;

  Map<String, dynamic> toMap() {
    return {
      _systolicJsonKey: systolic,
      _diastolicJsonKey: diastolic,
      _categoryJsonKey: category,
    };
  }
}
