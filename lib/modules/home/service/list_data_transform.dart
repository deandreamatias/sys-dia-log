import 'package:flutter/material.dart';
import 'package:sys_dia_log/modules/home/model/list_data.dart';
import 'package:sys_dia_log/modules/home/model/list_item.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';

class ListDataTransform {
  static List<ListItem> transform(Iterable<Measurement> data) {
    // TODO: convert to list data
    return List.from(data
        .map((e) => ListData(
            e.bloodPressure.systolic,
            e.bloodPressure.diastolic,
            e.bloodPressure.category,
            Colors.black,
            e.pulse.bpm,
            e.createdAt.toLocal()))
        .map((e) => ListItem(e)));
  }
}
