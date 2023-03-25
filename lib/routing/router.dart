import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sys_dia_log/modules/home/views/home_view.dart';
import 'package:sys_dia_log/modules/measurement/views/measurement_view.dart';
import 'package:sys_dia_log/modules/settings/views/settings_view.dart';
import 'package:sys_dia_log/shared/views/splash_screen_view.dart';
import 'package:sys_dia_log/shared/views/nav_bar_view.dart';
import '../modules/measurement/models/measurement.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,View',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreenView, initial: true),
    CustomRoute(
        page: NavBarView,
        children: [
          AutoRoute(page: HomeView),
          AutoRoute(page: MeasurementView),
          AutoRoute(page: SettingsView)
        ],
        transitionsBuilder: TransitionsBuilders.fadeIn)
  ],
)
class AppRouter extends _$AppRouter {}
