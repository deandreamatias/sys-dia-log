import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sys_dia_log/hive/hive_box.dart';
import 'package:sys_dia_log/modules/home/ui/add_new_button.dart';
import 'package:sys_dia_log/modules/home/ui/measurements_list.dart';
import 'package:sys_dia_log/modules/home/ui/refresh_button.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';
import 'package:sys_dia_log/routing/router.dart';
import 'package:sys_dia_log/shared/ui/loading_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Future<Box<Measurement>> _futureBox;

  @override
  void initState() {
    super.initState();
    _futureBox = Hive.openBox<Measurement>(measurementsBox);
  }

  _addNavigate() {
    context.router.navigate(MeasurementViewRoute(
        onAddNewMeasurement: (Measurement m) => setState(() {})));
  }

  _onRefresh() {
    setState(() {
      _futureBox = Hive.openBox<Measurement>(measurementsBox);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: I18nText('home')),
      body: FutureBuilder<Box<Measurement>>(
        future: _futureBox,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: LoadingIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: RefreshButton(onRefreshPressed: _onRefresh()),
              );
            }
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(
                  child: AddNewButton(
                onAddNewButtonPressed: () => _addNavigate(),
              ));
            }
          }

          return ValueListenableBuilder<Box<Measurement>>(
            valueListenable:
                Hive.box<Measurement>(measurementsBox).listenable(),
            builder: (context, value, child) =>
                MeasurementsList(data: value.values.toList()),
          );
        },
      ),
    );
  }
}
