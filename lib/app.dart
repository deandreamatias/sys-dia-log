import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sys_dia_log/locale/locales.dart';
import 'package:sys_dia_log/routing/router.dart';

class SysDiaLogApp extends StatelessWidget {
  SysDiaLogApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      useInheritedMediaQuery: true,
      title: 'Sys Dia Log',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      supportedLocales: locales,
      localizationsDelegates: [
        FlutterI18nDelegate(
            keySeparator: '.',
            translationLoader: FileTranslationLoader(
                basePath: translationsPath, useCountryCode: true)),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
