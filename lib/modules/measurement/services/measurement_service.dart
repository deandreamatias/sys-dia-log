import '../models/measurement.dart';

class MeasurementService {
  late final Set<Measurement> _data = {};

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
