import 'package:flutter/material.dart';
import 'package:sys_dia_log/modules/home/model/list_data.dart';
import 'package:sys_dia_log/modules/home/model/list_item.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';

class ListDataTransform {
  static List<ListItem> transform(Iterable<Measurement> data) {
    return _sorted(data)
        .map((e) => ListData(
            e.bloodPressure.systolic,
            e.bloodPressure.diastolic,
            _toCategoryDisplayName(e.bloodPressure.category),
            _toCategoryColor(e.bloodPressure.category),
            e.pulse.bpm,
            e.createdAt.toLocal()))
        .map((e) => ListItem(e))
        .toList();
  }

  static List _sorted(Iterable<Measurement> data) {
    List sorted = data.toList();
    sorted.sort((b, a) => a.createdAt.compareTo(b.createdAt));
    return sorted;
  }

  static String _toCategoryDisplayName(String category) {
    return "category.$category";
  }

  static const colorsMap = <String, Color>{
    "LOW": Colors.grey,
    "NORMAL": Colors.green,
    "ELEVATED": Colors.yellow,
    "HYPERTENSION_STAGE_1": Colors.amber,
    "HYPERTENSION_STAGE_2": Colors.orange,
    "HYPERTENSION_CRISIS": Colors.red,
  };

  static Color _toCategoryColor(String category) {
    return colorsMap[category] ?? Colors.transparent;
  }
}
