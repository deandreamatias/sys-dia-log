import '../models/measurement.dart';

class MeasurementService {
  late final Set<Measurement> _data;

  MeasurementService()
      : _data = {
          Measurement(
              120, 90, 60, DateTime.now().add(const Duration(days: -1))),
          Measurement(
              110, 80, 70, DateTime.now().add(const Duration(days: -2))),
          Measurement(
              100, 80, 65, DateTime.now().add(const Duration(days: -3))),
        };

  Future<Set<Measurement>> getMeasurementData() async {
    return Future.delayed(
      const Duration(seconds: 5),
      () => _data,
    );
  }

  Future<Set<Measurement>> addMeasurementData(Measurement measurement) async {
    _data.add(measurement);
    return Future.value(_data);
  }

  Future<Set<Measurement>> deleteMeasurementData(
      Measurement measurement) async {
    _data.remove(measurement);
    return Future.value(_data);
  }
}
