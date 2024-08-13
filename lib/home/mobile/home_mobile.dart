import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/drawer_button.dart';
import 'package:future_flutter_web_2024/common/future_flutter_logo_with_text.dart';
import 'package:future_flutter_web_2024/home/background_effect.dart';
import 'package:future_flutter_web_2024/home/home_drawer.dart';
import 'package:future_flutter_web_2024/home/home_floating_action_button.dart';
import 'package:future_flutter_web_2024/style/color.dart';
import 'package:go_router/go_router.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: HomeFloatingActionButton(),
      body: Stack(
        children: [
          Positioned.fill(child: BackgroundEffect()),
          HomeMobileContent(),
          // Positioned(top: 20, left: 20, child: ScaffoldDrawerButton()),
        ],
      ),
    );
  }
}

class HomeMobileContent extends StatelessWidget {
  const HomeMobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    // final width = screenSize.width;
    // final wideDevice = width > 820;

    // final locationFontSize = wideDevice ? 41.59 : 41.59 * (width / 820);
    // final locationTextStyle = TextStyle(
    //   fontFamily: 'SUIT',
    //   fontSize: locationFontSize,
    //   fontWeight: FontWeight.w300,
    //   color: gray.shade400,
    //   letterSpacing: 0.99,
    //   height: 1.2,
    // );

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Hero(
            tag: 'futureFlutterLogo',
            child: Center(child: FutureFlutterLogoWithText()),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => context.go('/sessions'),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 100,
                        child: const Center(
                            child: Text(
                          'Sessions',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => context.go('/coc'),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 100,
                        child: const Center(
                            child: Text(
                          'Code Of Conduct',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
