import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:intl/intl.dart';

import 'list_data.dart';

class ListItem {
  final ListData _data;

  ListItem(this._data);

  Widget buildLeadingItem(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${_data.systolicValue}'),
          Text('${_data.diastolicValue}'),
        ],
      ),
    );
  }

  Widget buildTitle(BuildContext context) {
    return I18nText(_data.categoryNameKey);
  }

  Widget buildSubTitle(BuildContext context) {
    return Row(children: [
      Text(
        DateFormat.yMd().add_Hm().format(_data.createdAt.toLocal()),
      ),
      const Spacer(),
      I18nText(
        'bpm',
        translationParams: {'bpm': '${_data.pulseBpmValue}'},
      )
    ]);
  }

  Widget buildTrailingItem(BuildContext context) {
    return Icon(
      Icons.circle,
      color: _data.categoryColorValue,
      size: 10,
    );
  }
}
