import 'package:flutter/material.dart';

class FlutterLogoBg extends StatelessWidget {
  const FlutterLogoBg({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Opacity(
          opacity: 0.1,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
