import 'package:flutter/material.dart';

class Pulse {
  static const String _bpmJsonKey = 'bpm';

  final int bpm;

  Pulse(this.bpm);

  Pulse.fromJson(Map<String, dynamic> json) : bpm = json[_bpmJsonKey] as int;

  Map<String, dynamic> toJson() {
    return {_bpmJsonKey: bpm};
  }
}
