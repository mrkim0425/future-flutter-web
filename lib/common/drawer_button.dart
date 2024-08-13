import 'package:flutter/material.dart';

class ScaffoldDrawerButton extends StatelessWidget {
  const ScaffoldDrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
