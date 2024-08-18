import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:sys_dia_log/modules/home/views/home_view.dart';
import 'package:sys_dia_log/modules/measurement/views/measurement_view.dart';
import 'package:sys_dia_log/modules/settings/views/settings_view.dart';
import 'package:sys_dia_log/shared/views/splash_screen_view.dart';
import 'package:sys_dia_log/shared/views/nav_bar_view.dart';
import '../modules/measurement/models/measurement.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashScreenRoute.page, initial: true),
        CustomRoute(
          page: NavBarRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: MeasurementRoute.page),
            AutoRoute(page: SettingsRoute.page)
          ],
          transitionsBuilder: TransitionsBuilders.fadeIn,
        )
      ];
}
