import 'package:flutter/material.dart';
import 'package:flutter_i18n/widgets/I18nText.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: I18nText('title'),
      ),
    );
  }
}
