import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:sys_dia_log/routing/router.dart';

@RoutePage()
class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) AutoRouter.of(context).replace(const NavBarRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/sys-dia-log-logo.png'),
            width: 200,
            filterQuality: FilterQuality.high,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              FlutterI18n.translate(context, 'title'),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  color: Theme.of(context).primaryColor),
            ),
          )
        ],
      )),
    );
  }
}
