import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';
import 'package:sys_dia_log/modules/home/services/home_service_facade.dart';
import 'package:sys_dia_log/modules/measurement/models/measurement.dart';
import 'package:sys_dia_log/shared/ui/loading_indicator.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final Future<Set<Measurement>> _dataSnap;

  @override
  void initState() {
    super.initState();
    _dataSnap = HomeServiceFacade().getHomeViewData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: I18nText('home')),
      body: FutureBuilder<Set<Measurement>>(
        future: _dataSnap,
        initialData: const <Measurement>{},
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: LoadingIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              // TODO: return refresh;
            }
            if (!snapshot.hasData) {
              // TODO: return add some data
            }
          }

          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              '${snapshot.data?.elementAt(index).bloodPressure.systolic}'),
                          Text(
                              '${snapshot.data?.elementAt(index).bloodPressure.diastolic}')
                        ],
                      ),
                    ),
                    title: const Text('Normal'),
                    subtitle: Row(children: [
                      Text(DateFormat.yMd()
                          .format(snapshot.data!.elementAt(index).createdAt)),
                      const Spacer(),
                      I18nText('bpm', translationParams: {
                        'bpm': '${snapshot.data?.elementAt(index).pulse.bpm}'
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
        },
      ),
    );
  }
}
