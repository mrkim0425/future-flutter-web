import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/home/background_effect.dart';
import 'package:future_flutter_web_2024/home/coming_soon_text.dart';
import 'package:future_flutter_web_2024/home/drawer_button.dart';
import 'package:future_flutter_web_2024/home/flutter_logo_bg.dart';
import 'package:future_flutter_web_2024/home/home_drawer.dart';
import 'package:future_flutter_web_2024/home/home_floating_action_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: HomeFloatingActionButton(),
      body: Stack(
        children: [
          Positioned.fill(child: BackgroundEffect()),
          FlutterLogoBg(),
          ComingSoonText(),
          Positioned(top: 20, left: 20, child: ScaffoldDrawerButton()),
        ],
      ),
      drawer: HomeDrawer(),
    );
  }
}
