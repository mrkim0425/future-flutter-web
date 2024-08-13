import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/common/future_flutter_logo_with_text.dart';
import 'package:future_flutter_web_2024/home/background_effect.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        context.go('/');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(children: [
        Positioned.fill(child: BackgroundEffect()),
        Center(
          child: Hero(
            tag: 'futureFlutterLogo',
            child: FutureFlutterLogoWithText(),
          ),
        ),
      ]),
    );
  }
}
