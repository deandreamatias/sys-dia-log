import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:intl/intl.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';

class MeasurementsList extends StatelessWidget {
  final List<Measurement> data;

  const MeasurementsList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${data.elementAt(index).bloodPressure.systolic}'),
                    Text('${data.elementAt(index).bloodPressure.diastolic}')
                  ],
                ),
              ),
              title: const Text('Normal'),
              subtitle: Row(children: [
                Text(DateFormat.yMd()
                    .add_Hm()
                    .format(data.elementAt(index).createdAt)),
                const Spacer(),
                I18nText('bpm', translationParams: {
                  'bpm': '${data.elementAt(index).pulse.bpm}'
                })
              ]),
              trailing: const Icon(
                Icons.circle,
                color: Colors.green,
                size: 10,
              )),
        );
      },
    );
  }
}
