import 'package:flutter/material.dart';

class BackgroundEffect extends StatefulWidget {
  const BackgroundEffect({super.key});

  @override
  State<BackgroundEffect> createState() => _BackgroundEffectState();
}

class _BackgroundEffectState extends State<BackgroundEffect>
    with SingleTickerProviderStateMixin {

  late AnimationController bgController;
  late ColorTween topColorTween;
  late Animation<Color?> topColor;

  @override
  void initState() {
    super.initState();

    bgController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    topColorTween = ColorTween(
      begin: Colors.black,
      end: Colors.indigo.shade900.withOpacity(0.1),
      // end: Colors.white,
    );

    topColor = topColorTween.animate(bgController);
  }

  @override
  Widget build(BuildContext context) {
    bgController.repeat(reverse: true);
    final size = MediaQuery
        .of(context)
        .size;
    final width = size.width;
    final height = size.height;

    return AnimatedBuilder(
      animation: bgController,
      builder: (context, child) {
        List<Color> colors = width > height ? [
          topColor.value ?? Colors.black,
          Colors.black,
        ] : [
          Colors.black,
          topColor.value ?? Colors.black,
          Colors.black,
        ];

        List<double> stops = width > height ? [0.0, 0.8] : [0.35, 0.45, 0.6];

        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              stops: stops,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        );
      },
    );
  }
}
