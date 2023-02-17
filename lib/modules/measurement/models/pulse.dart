import 'package:hive/hive.dart';

part 'pulse.g.dart';

//// Pulse model represents number beeps per minute,
/// json view:
/// {
///   "bpm": 60
/// }
@HiveType(typeId: 2, adapterName: 'PulseHiveAdapter')
class Pulse extends HiveObject {
  static const String _bpmJsonKey = 'bpm';

  @HiveField(0)
  final int bpm;

  Pulse({
    required this.bpm,
  });

  Pulse.fromMap(Map<String, dynamic> json) : bpm = json[_bpmJsonKey] as int;

  Map<String, dynamic> toMap() {
    return {_bpmJsonKey: bpm};
  }
}
