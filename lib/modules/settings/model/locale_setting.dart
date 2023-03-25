import 'package:flutter/material.dart';

import 'app_setting.dart';

class LocaleSetting extends AppSetting<Locale> {
  LocaleSetting([Locale? currentLocale])
      : super("appLocale", currentLocale, const Locale('be', 'BLR'));
}
