import 'package:flutter_test/flutter_test.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';
import 'package:sys_dia_log/modules/measurement/service/blood_pressure_category_calc.dart';

void main() {
  group("calculate bp tests", () {
    final BloodPressureCategoryCalc calc = BloodPressureCategoryCalc();

    // given
    var inToExpect = <BloodPressure>[
      BloodPressure(
          systolic: 119,
          diastolic: 79,
          category: BloodPressureCategory.normal.name),
      BloodPressure(
          systolic: 70,
          diastolic: 40,
          category: BloodPressureCategory.low.name),
      BloodPressure(
          systolic: 128,
          diastolic: 70,
          category: BloodPressureCategory.elevated.name),
      BloodPressure(
          systolic: 140,
          diastolic: 90,
          category: BloodPressureCategory.hypertensionStage2.name),
      BloodPressure(
          systolic: 130,
          diastolic: 70,
          category: BloodPressureCategory.hypertensionStage1.name)
    ];

    // when

    for (var bp in inToExpect) {
      test("${bp.systolic}, ${bp.diastolic} expect ${bp.category}", () {
        var category = calc.getCategoryByValues(
            systolic: bp.systolic, diastolic: bp.diastolic);

        // then
        expect(category.name, bp.category);
      });
    }
  });
}
