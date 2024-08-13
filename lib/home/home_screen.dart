import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/responsive_layout.dart';
import 'package:future_flutter_web_2024/home/desktop/home_desktop.dart';
import 'package:future_flutter_web_2024/home/mobile/home_mobile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayOut(
      desktopBody: HomeDesktop(),
      mobileBody: HomeMobile(),
    );
  }
}
