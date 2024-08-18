import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:sys_dia_log/modules/settings/ui/locale_settings.dart';
import 'package:sys_dia_log/modules/settings/ui/theme_settings.dart';

@RoutePage()
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: I18nText('settings')),
      body: ListView(
        children: [
          ...ListTile.divideTiles(
            context: context,
            tiles: [
              const ThemeSettings(),
              const LocaleSettings(),
            ],
          )
        ],
      ),
    );
  }
}
