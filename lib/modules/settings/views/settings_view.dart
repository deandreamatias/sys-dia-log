import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:sys_dia_log/modules/settings/ui/locale_settings.dart';
import 'package:sys_dia_log/modules/settings/ui/theme_settings.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

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
