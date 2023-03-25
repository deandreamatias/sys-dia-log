import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class LocaleSettings extends StatelessWidget {
  const LocaleSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: I18nText("Locale"),
      subtitle: I18nText("Choose the app's locale setting"),
      children: [
        SwitchListTile.adaptive(
          title: I18nText("Select language"),
          value: true,
          onChanged: (value) {},
        )
      ],
    );
  }
}
// Automatic (Follow system setting)
