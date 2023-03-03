import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';

class BloodPressureCategoryCalc {
  /// normal:   sys < 120 and dia < 80
  /// elevated: sys < [120-129] and dia < 80
  /// stage1:   sys < [130-139] or dia < [80-89]
  /// stage2:   sys > 140 or dia > 90
  /// crisis:   sys > 180 and/or > 120
  BloodPressureCategory getCategoryByValues({
    required int systolic,
    required int diastolic,
  }) {
    if (systolic <= 70 && diastolic <= 40) {
      return BloodPressureCategory.low;
    }

    if (systolic < 120 && diastolic < 80) {
      return BloodPressureCategory.normal;
    }

    if (systolic < 129 && diastolic < 80) {
      return BloodPressureCategory.elevated;
    }

    if (systolic < 139 || diastolic < 89) {
      return BloodPressureCategory.hypertensionStage1;
    }

    if ((systolic >= 140 && systolic < 180) ||
        (diastolic >= 90 && diastolic < 120)) {
      return BloodPressureCategory.hypertensionStage2;
    }

    return BloodPressureCategory.hypertensionCrisis;
  }
}
