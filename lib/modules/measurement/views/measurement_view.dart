import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:numberpicker/numberpicker.dart';

class MeasurementView extends StatefulWidget {
  const MeasurementView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MeasurementViewState();
}

class _MeasurementViewState extends State<MeasurementView> {
  late int _systolic;
  late int _diastolic;
  late int _pulse;

  @override
  void initState() {
    super.initState();
    _systolic = 120;
    _diastolic = 80;
    _pulse = 60;
  }

  void _onSave() {}

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
                        minValue: 20,
                        maxValue: 200,
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
                        minValue: 20,
                        maxValue: 200,
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
