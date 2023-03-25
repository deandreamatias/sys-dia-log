import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:provider/provider.dart';
import 'package:sys_dia_log/locale/locales.dart';
import 'package:sys_dia_log/modules/settings/providers/app_settings_provider.dart';

class LocaleSettings extends StatefulWidget {
  const LocaleSettings({super.key});

  @override
  State<StatefulWidget> createState() => _LocaleSettingsState();
}

class _LocaleSettingsState extends State<LocaleSettings> {
  late Locale _locale;

  @override
  void initState() {
    super.initState();
    _locale = context.read<AppSettingsProvider>().locale;
  }

  _onLocaleChange(Locale? locale) {
    if (locale != null) {
      setState(() {
        _locale = locale;
        context.read<AppSettingsProvider>().locale = _locale;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: I18nText("locale"),
      subtitle: I18nText("locale_desc"),
      children: [
        RadioListTile(
            title: I18nText(locales[0].languageCode),
            value: locales[0],
            groupValue: _locale,
            onChanged: _onLocaleChange),
        RadioListTile(
            title: I18nText(locales[1].languageCode),
            value: locales[1],
            groupValue: _locale,
            onChanged: _onLocaleChange),
        RadioListTile(
            title: I18nText(locales[2].languageCode),
            value: locales[2],
            groupValue: _locale,
            onChanged: _onLocaleChange)
      ],
    );
  }
}
// Automatic (Follow system setting)
