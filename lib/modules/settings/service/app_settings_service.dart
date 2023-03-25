import 'package:hive_flutter/hive_flutter.dart';
import 'package:sys_dia_log/hive/hive_box.dart';
import 'package:sys_dia_log/modules/settings/model/app_setting.dart';

import 'package:sys_dia_log/modules/settings/model/locale_setting.dart';
import 'package:sys_dia_log/modules/settings/model/theme_mode_setting.dart';

class AppSettingsService {
  final Box _box = Hive.box(applicationSettingsBox);

  ThemeModeSetting get themeModeSetting => _readSetting(ThemeModeSetting());

  LocaleSetting get localeSetting => _readSetting(LocaleSetting());

  void save(AppSetting setting) {
    _box.put(setting.name, setting.value);
  }

  _readSetting(AppSetting setting) {
    if (_box.containsKey(setting.name)) {
      setting.value = _box.get(setting.name);
    }
    return setting;
  }
}
