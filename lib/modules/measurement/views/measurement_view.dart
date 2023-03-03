import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';
import 'package:sys_dia_log/modules/measurement/service/measurement_service.dart';
import 'package:sys_dia_log/routing/router.dart';
import 'package:sys_dia_log/shared/ui/snack_bars.dart';

class MeasurementView extends StatefulWidget {
  final void Function(Measurement)? onAddNewMeasurement;

  const MeasurementView({Key? key, this.onAddNewMeasurement}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MeasurementViewState();
}

class _MeasurementViewState extends State<MeasurementView> {
  late int _systolic;
  late int _diastolic;
  late int _pulse;

  static const int systolicMin = 70;
  static const int systolicMax = 190;
  static const int diastolicMin = 40;
  static const int diastolicMax = 100;

  @override
  void initState() {
    super.initState();
    _systolic = 120;
    _diastolic = 80;
    _pulse = 60;
  }

  void _onSave() {
    Measurement measurement = MeasurementService()
        .createNewMeasurement(_systolic, _diastolic, _pulse);

    widget.onAddNewMeasurement?.call(measurement);

    AutoRouter.of(context).navigate(const HomeViewRoute());

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(getSnackBarWithDismissAction(
          I18nText(
            "created",
            translationParams: {
              'createdAt': DateFormat.yMd()
                  .add_Hm()
                  .format(measurement.createdAt.toLocal())
            },
          ),
          context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: I18nText('measurement')),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    I18nText('systolic'),
                    NumberPicker(
                        minValue: systolicMin,
                        maxValue: systolicMax,
                        value: _systolic,
                        onChanged: (v) => setState(() {
                              _systolic = v;
                            }))
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    I18nText('diastolic'),
                    NumberPicker(
                        axis: Axis.vertical,
                        minValue: diastolicMin,
                        maxValue: diastolicMax,
                        value: _diastolic,
                        onChanged: (v) => setState(() {
                              _diastolic = v;
                            }))
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    I18nText('pulse'),
                    NumberPicker(
                        minValue: 20,
                        maxValue: 220,
                        value: _pulse,
                        onChanged: (v) => setState(() {
                              _pulse = v;
                            }))
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onSave,
        label: I18nText('save'),
        icon: const Icon(Icons.save_outlined),
      ),
    );
  }
}
