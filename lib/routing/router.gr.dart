// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreenView(),
      );
    },
    NavBarViewRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const NavBarView(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    MeasurementViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MeasurementView(),
      );
    },
    SettingsViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenViewRoute.name,
          path: '/',
        ),
        RouteConfig(
          NavBarViewRoute.name,
          path: '/nav-bar-view',
          children: [
            RouteConfig(
              HomeViewRoute.name,
              path: 'home-view',
              parent: NavBarViewRoute.name,
            ),
            RouteConfig(
              MeasurementViewRoute.name,
              path: 'measurement-view',
              parent: NavBarViewRoute.name,
            ),
            RouteConfig(
              SettingsViewRoute.name,
              path: 'settings-view',
              parent: NavBarViewRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashScreenView]
class SplashScreenViewRoute extends PageRouteInfo<void> {
  const SplashScreenViewRoute()
      : super(
          SplashScreenViewRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenViewRoute';
}

/// generated route for
/// [NavBarView]
class NavBarViewRoute extends PageRouteInfo<void> {
  const NavBarViewRoute({List<PageRouteInfo>? children})
      : super(
          NavBarViewRoute.name,
          path: '/nav-bar-view',
          initialChildren: children,
        );

  static const String name = 'NavBarViewRoute';
}

/// generated route for
/// [HomeView]
class HomeViewRoute extends PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: 'home-view',
        );

  static const String name = 'HomeViewRoute';
}

/// generated route for
/// [MeasurementView]
class MeasurementViewRoute extends PageRouteInfo<void> {
  const MeasurementViewRoute()
      : super(
          MeasurementViewRoute.name,
          path: 'measurement-view',
        );

  static const String name = 'MeasurementViewRoute';
}

/// generated route for
/// [SettingsView]
class SettingsViewRoute extends PageRouteInfo<void> {
  const SettingsViewRoute()
      : super(
          SettingsViewRoute.name,
          path: 'settings-view',
        );

  static const String name = 'SettingsViewRoute';
}
