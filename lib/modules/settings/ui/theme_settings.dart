import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';
import 'package:sys_dia_log/modules/settings/providers/app_settings_provider.dart';

class ThemeSettings extends StatefulWidget {
  const ThemeSettings({super.key});

  @override
  State<StatefulWidget> createState() => _ThemeSettingsState();
}

class _ThemeSettingsState extends State<ThemeSettings> {
  late ThemeMode _themeMode;

  @override
  void initState() {
    super.initState();
    _themeMode = context.read<AppSettingsProvider>().themeMode;
  }

  _onThemeChange(BuildContext ctx, bool isSelected, ThemeMode mode) {
    setState(() {
      if (!isSelected && mode == ThemeMode.system) {
        var currentSystemMode = MediaQuery.of(ctx).platformBrightness;
        if (currentSystemMode == Brightness.dark) {
          _themeMode = ThemeMode.dark;
        } else {
          _themeMode = ThemeMode.light;
        }
      } else if (!isSelected && mode == ThemeMode.dark) {
        _themeMode = ThemeMode.light;
      } else {
        _themeMode = mode;
      }

      context.read<AppSettingsProvider>().themeMode = _themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: I18nText("appearance"),
      children: [
        SwitchListTile.adaptive(
          title: I18nText("system"),
          subtitle: I18nText("system_desc"),
          value: ThemeMode.system == _themeMode,
          onChanged: (value) =>
              _onThemeChange(context, value, ThemeMode.system),
        ),
        if (ThemeMode.system != _themeMode)
          SwitchListTile.adaptive(
            title: I18nText("dark_mode"),
            value: ThemeMode.dark == _themeMode,
            onChanged: (value) =>
                _onThemeChange(context, value, ThemeMode.dark),
          )
      ],
    );
  }
}
// Automatic (Follow system setting)
