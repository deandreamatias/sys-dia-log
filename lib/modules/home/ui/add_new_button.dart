import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class AddNewButton extends StatelessWidget {
  final VoidCallback onAddNewButtonPressed;

  const AddNewButton({super.key, required this.onAddNewButtonPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onAddNewButtonPressed,
      icon: const Icon(Icons.add),
      label: I18nText('add'),
    );
  }
}
