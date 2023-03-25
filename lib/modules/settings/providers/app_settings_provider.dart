import 'package:flutter/material.dart';
import 'package:sys_dia_log/modules/settings/model/locale_setting.dart';
import 'package:sys_dia_log/modules/settings/model/theme_mode_setting.dart';
import 'package:sys_dia_log/modules/settings/service/app_settings_service.dart';

class AppSettingsProvider extends ChangeNotifier {
  final AppSettingsService _settingsService = AppSettingsService();

  ThemeMode get themeMode => _settingsService.themeModeSetting.getOrDefault();

  Locale get locale => _settingsService.localeSetting.getOrDefault();

  set themeMode(ThemeMode themeMode) {
    _settingsService.save(ThemeModeSetting(themeMode));
    notifyListeners();
  }

  set locale(Locale locale) {
    _settingsService.save(LocaleSetting(locale));
    notifyListeners();
  }
}
