import '../models/measurement.dart';

class MeasurementService {
  Set<Measurement> data = {};

  MeasurementService()
      : data = {
          Measurement(
              120, 90, 60, DateTime.now().add(const Duration(days: -1))),
          Measurement(
              110, 80, 70, DateTime.now().add(const Duration(days: -2))),
          Measurement(
              100, 80, 65, DateTime.now().add(const Duration(days: -3))),
        };

  Future<Set<Measurement>> getMeasurementData() async {
    return Future.value(data);
  }

  Future<Set<Measurement>> addMeasurementData(Measurement measurement) async {
    data.add(measurement);
    return Future.value(data);
  }

  Future<Set<Measurement>> deleteMeasurementData(
      Measurement measurement) async {
    data.remove(measurement);
    return Future.value(data);
  }
}
