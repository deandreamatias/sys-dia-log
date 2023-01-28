import 'package:flutter/material.dart';

class RefreshButton extends StatelessWidget {
  final VoidCallback onRefreshPressed;

  const RefreshButton({super.key, required this.onRefreshPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onRefreshPressed, icon: const Icon(Icons.refresh_outlined));
  }
}
