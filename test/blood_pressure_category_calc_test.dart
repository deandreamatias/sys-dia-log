import 'package:flutter_test/flutter_test.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';
import 'package:sys_dia_log/modules/measurement/service/blood_pressure_category_calc.dart';

void main() {
  test("calculate bp expect normal", () {
    final BloodPressureCategoryCalc calc = BloodPressureCategoryCalc();

    BloodPressureCategory category =
        calc.getCategoryByValues(systolic: 119, diastolic: 79);

    expect(category, BloodPressureCategory.normal);
  });
}
