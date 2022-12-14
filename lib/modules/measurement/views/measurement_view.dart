import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';

class MeasurementView extends StatelessWidget {
  const MeasurementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: I18nText('measurement')),
    );
  }
}
