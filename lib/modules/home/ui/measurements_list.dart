import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:intl/intl.dart';
import 'package:sys_dia_log/modules/measurement/models/blood_pressure_category.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';

class MeasurementsList extends StatelessWidget {
  final List<Measurement> data;

  const MeasurementsList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        Measurement item = data.elementAt(index);

        BloodPressureCategory bloodPressureCategory =
            BloodPressureCategory.values.byName(item.bloodPressure.category);

        return Card(
          child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${item.bloodPressure.systolic}'),
                    Text('${item.bloodPressure.diastolic}')
                  ],
                ),
              ),
              title: I18nText(bloodPressureCategory.categoryNameKey),
              subtitle: Row(children: [
                Text(
                    DateFormat.yMd().add_Hm().format(item.createdAt.toLocal())),
                const Spacer(),
                I18nText('bpm', translationParams: {'bpm': '${item.pulse.bpm}'})
              ]),
              trailing: Icon(
                Icons.circle,
                color: bloodPressureCategory.categoryColor,
                size: 10,
              )),
        );
      },
    );
  }
}
