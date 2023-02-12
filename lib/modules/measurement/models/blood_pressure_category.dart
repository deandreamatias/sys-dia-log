import 'package:flutter/material.dart';

enum BloodPressureCategory {
  low(Colors.blue, 'category.low'),
  normal(Colors.green, 'category.normal'),
  preHigh(Colors.orange, 'category.preHigh'),
  high(Colors.red, 'category.high');

  final Color categoryColor;
  final String categoryNameKey;

  const BloodPressureCategory(this.categoryColor, this.categoryNameKey);

  static BloodPressureCategory fromValues(int systolic, int diastolic) {
    if ((systolic <= 90) && (diastolic <= 60)) {
      return BloodPressureCategory.low;
    } else if ((systolic <= 120) && (diastolic <= 80)) {
      return BloodPressureCategory.normal;
    } else if ((systolic <= 140) && (diastolic <= 90)) {
      return BloodPressureCategory.preHigh;
    } else if ((systolic <= 160) && (diastolic <= 100)) {
      return BloodPressureCategory.high;
    } else {
      return BloodPressureCategory.high;
    }
  }
}
