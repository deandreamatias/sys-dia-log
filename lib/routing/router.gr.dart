// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeView();
    },
  );
}

/// generated route for
/// [MeasurementView]
class MeasurementRoute extends PageRouteInfo<MeasurementRouteArgs> {
  MeasurementRoute({
    Key? key,
    void Function(Measurement)? onAddNewMeasurement,
    List<PageRouteInfo>? children,
  }) : super(
          MeasurementRoute.name,
          args: MeasurementRouteArgs(
            key: key,
            onAddNewMeasurement: onAddNewMeasurement,
          ),
          initialChildren: children,
        );

  static const String name = 'MeasurementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MeasurementRouteArgs>(
          orElse: () => const MeasurementRouteArgs());
      return MeasurementView(
        key: args.key,
        onAddNewMeasurement: args.onAddNewMeasurement,
      );
    },
  );
}

class MeasurementRouteArgs {
  const MeasurementRouteArgs({
    this.key,
    this.onAddNewMeasurement,
  });

  final Key? key;

  final void Function(Measurement)? onAddNewMeasurement;

  @override
  String toString() {
    return 'MeasurementRouteArgs{key: $key, onAddNewMeasurement: $onAddNewMeasurement}';
  }
}

/// generated route for
/// [NavBarView]
class NavBarRoute extends PageRouteInfo<void> {
  const NavBarRoute({List<PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NavBarView();
    },
  );
}

/// generated route for
/// [SettingsView]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsView();
    },
  );
}

/// generated route for
/// [SplashScreenView]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute({List<PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreenView();
    },
  );
}
