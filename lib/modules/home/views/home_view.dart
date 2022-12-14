import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    print("This is home view opened");
    return Scaffold(
      appBar: AppBar(title: I18nText('home')),
    );
  }
}
