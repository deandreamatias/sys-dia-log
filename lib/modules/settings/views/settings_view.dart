import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: I18nText('settings')),
    );
  }
}
