import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/drawer_button.dart';
import 'package:future_flutter_web_2024/common/future_flutter_logo_with_text.dart';
import 'package:future_flutter_web_2024/home/background_effect.dart';
import 'package:future_flutter_web_2024/home/home_drawer.dart';
import 'package:future_flutter_web_2024/home/home_floating_action_button.dart';
import 'package:future_flutter_web_2024/style/color.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: HomeFloatingActionButton(),
      body: Stack(
        children: [
          Positioned.fill(child: BackgroundEffect()),
          HomeDesktopContent(),
          Positioned(top: 20, left: 20, child: ScaffoldDrawerButton()),
        ],
      ),
      drawer: HomeDrawer(),
    );
  }
}

class HomeDesktopContent extends StatelessWidget {
  const HomeDesktopContent({super.key});

  @override
  Widget build(BuildContext context) {
    final locationTextStyle = TextStyle(
      fontFamily: 'SUIT',
      fontSize: 30,
      fontWeight: FontWeight.w300,
      color: gray.shade400,
      letterSpacing: 0.99,
      height: 1.2,
    );

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Hero(
            tag: 'futureFlutterLogo',
            child: FutureFlutterLogoWithText(),
          ),
          Text('Songdo Convensia, Incheon, Korea', style: locationTextStyle),
          Text('September 28, 2024', style: locationTextStyle),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
