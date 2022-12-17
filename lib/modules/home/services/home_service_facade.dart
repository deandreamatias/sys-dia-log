import 'package:sys_dia_log/modules/measurement/models/measurement.dart';
import 'package:sys_dia_log/modules/measurement/services/measurement_service.dart';

class HomeServiceFacade {
  final MeasurementService _measurementService = MeasurementService();

  Future<Set<Measurement>> getHomeViewData() {
    return _measurementService.getMeasurementData();
  }
}
