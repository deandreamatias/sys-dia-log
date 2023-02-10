import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

SnackBar getSnackBarWithDismissAction(I18nText message, BuildContext context) {
  return SnackBar(
      content: message,
      action: SnackBarAction(
        label: FlutterI18n.translate(context, "dismiss"),
        onPressed: () => ScaffoldMessenger.of(context).removeCurrentSnackBar(),
      ));
}
