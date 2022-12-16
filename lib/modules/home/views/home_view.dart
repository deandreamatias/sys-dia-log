import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:sys_dia_log/modules/measurement/services/measurement_service.dart';
import 'package:sys_dia_log/shared/ui/loading_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _service = MeasurementService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: I18nText('home')),
      body: FutureBuilder(
        future: _service.getMeasurementData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView();
          } else {
            return const Center(child: LoadingIndicator());
          }
        },
      ),
    );
  }
}
