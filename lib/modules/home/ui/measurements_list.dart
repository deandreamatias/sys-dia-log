import 'package:flutter/material.dart';
import 'package:sys_dia_log/modules/home/model/list_item.dart';

class MeasurementsList extends StatelessWidget {
  final List<ListItem> items;

  const MeasurementsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Card(
          child: ListTile(
            leading: item.buildLeadingItem(context),
            title: item.buildTitle(context),
            subtitle: item.buildSubTitle(context),
            trailing: item.buildTrailingItem(context),
          ),
        );
      },
    );
  }
}
