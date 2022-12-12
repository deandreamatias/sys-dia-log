import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class HomeView extends StatefulWidget {
  static const String routeName = "/";

  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: I18nText('title'),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.list_rounded),
            label: FlutterI18n.translate(context, 'home'),
          ),
          NavigationDestination(
              icon: const Icon(Icons.add_circle_outline_rounded),
              label: FlutterI18n.translate(context, 'measurement')),
          NavigationDestination(
              icon: const Icon(Icons.settings_outlined),
              label: FlutterI18n.translate(context, 'settings'))
        ],
        onDestinationSelected: (value) => setState(() {
          currentPageIndex = value;
        }),
        selectedIndex: currentPageIndex,
      ),
      body: <Widget>[
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text("blue"),
        )
      ][currentPageIndex],
    );
  }
}
