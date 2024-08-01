import 'package:flutter/material.dart';

class ComingSoonText extends StatelessWidget {
  const ComingSoonText({super.key});

  static const baseSize = Size(1920, 1080);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isLandscape = size.width > size.height;

    final scaleByWidth = size.width / baseSize.width;
    final scaleByHeight = size.height / baseSize.height;

    final scaleByOrientation = isLandscape ? scaleByWidth : scaleByHeight;

    final double h1FontSize = (scaleByWidth * (isLandscape ? 200 : 240))
        .clamp(40.0, 160.0); // prevent text overflow
    final double h2FontSize =
        (scaleByOrientation * (isLandscape ? 80 : 50)).clamp(0.0, 64.0); // *1.6
    final double h3FontSize =
        (scaleByOrientation * (isLandscape ? 52 : 26)).clamp(0.0, 32); // *2
    final double h4FontSize =
        (scaleByOrientation * (isLandscape ? 40 : 20)).clamp(0.0, 24); // *2

    return Align(
      alignment: Alignment.center,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(
              'Future<Flutter>',
              textAlign: TextAlign.center,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.visible,
              style: TextStyle(
                height: 1.1,
                fontSize: h1FontSize,
                color: Colors.indigo.withOpacity(0.1),
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: Colors.white.withOpacity(0.05),
                    offset: const Offset(2, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Text(
            'Coming Soon',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: h2FontSize,
              shadows: [
                Shadow(
                  color: Colors.white.withOpacity(0.42),
                  offset: const Offset(0, 0),
                  blurRadius: 22,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              '2024. 9. 28. Sat',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.32),
                fontSize: h3FontSize,
              ),
            ),
            Text(
              'Songdo Convensia, Incheon, Korea',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.32),
                fontSize: h4FontSize,
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
