import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

import 'package:sys_dia_log/routing/router.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeViewRoute(),
        MeasurementViewRoute(),
        SettingsViewRoute()
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(
                  icon: const Icon(Icons.home_outlined),
                  selectedIcon: const Icon(Icons.home),
                  label: FlutterI18n.translate(context, 'home')),
              NavigationDestination(
                  icon: const Icon(Icons.add_outlined),
                  selectedIcon: const Icon(Icons.add),
                  label: FlutterI18n.translate(context, 'measurement')),
              NavigationDestination(
                  icon: const Icon(Icons.settings_outlined),
                  selectedIcon: const Icon(Icons.settings),
                  label: FlutterI18n.translate(context, 'settings'))
            ],
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (tabIndex) =>
                tabsRouter.setActiveIndex(tabIndex),
          ),
        );
      },
    );
  }
}
