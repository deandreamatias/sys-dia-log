import 'package:flutter/material.dart';

import 'app_setting.dart';

class ThemeModeSetting extends AppSetting<ThemeMode> {
  ThemeModeSetting([ThemeMode? currentMode])
      : super("appThemeMode", currentMode, ThemeMode.system);
}
