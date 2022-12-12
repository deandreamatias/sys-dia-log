import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sys_dia_log/modules/home/views/home_view.dart';
import 'package:sys_dia_log/modules/measurement/views/measurement_view.dart';
import 'package:sys_dia_log/modules/settings/views/settings_view.dart';

class SysDiaLogApp extends StatelessWidget {
  const SysDiaLogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sys Dia Log',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: HomeView.routeName,
      localizationsDelegates: [
        FlutterI18nDelegate(
            keySeparator: '.',
            translationLoader:
                FileTranslationLoader(basePath: 'i18n', useCountryCode: true)),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        MeasurementView.routeName: (context) => const MeasurementView(),
        SettingsView.routeName: (context) => const SettingsView()
      },
    );
  }
}
