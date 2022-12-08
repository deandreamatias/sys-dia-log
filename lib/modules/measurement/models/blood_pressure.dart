/// BloodPressure model represents systolic and diastolic values at mmHg,
/// json view:
/// {
///   "systolic": 120,
///   "diastolic" 80
/// }
class BloodPressure {
  static const String _systolicJsonKey = 'systolic';
  static const String _diastolicJsonKey = 'diastolic';

  final int systolic;
  final int diastolic;

  BloodPressure(this.systolic, this.diastolic);

  BloodPressure.fromJson(Map<String, dynamic> json)
      : systolic = json[_systolicJsonKey] as int,
        diastolic = json[_diastolicJsonKey] as int;

  Map<String, dynamic> toJson() {
    return {_systolicJsonKey: systolic, _diastolicJsonKey: diastolic};
  }
}
