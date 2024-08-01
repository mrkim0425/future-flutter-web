import 'package:flutter/material.dart';

class ComingSoonText extends StatelessWidget {
  const ComingSoonText({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    final h1FontSize = width > height ? (width / 1920) * 240 : (height / 1080) * 100;
    final h2FontSize = width > height ? (width / 1920) * 80 : (height / 1080) * 50;
    final h3FontSize = width > height ? (width / 1920) * 52 : (height / 1080) * 26;
    final h4FontSize = width > height ? (width / 1920) * 40 : (height / 1080) * 20;

    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Future<Flutter>',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.1,
              fontSize: h1FontSize,
              color: Colors.indigo.withOpacity(0.1),
              fontWeight: FontWeight.w900,
              shadows: [
                Shadow(
                  color: Colors.white.withOpacity(0.05),
                  offset: const Offset(2, 2),
                  blurRadius: 2,
                ),
              ],
            ),
          ),
          Text(
            'Coming Soon',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: h2FontSize,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(2, 2),
                  blurRadius: 2,
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Text(
            '2024. 9. 28. Sat',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: h4FontSize,
            ),
          ),
          Text(
            'Incheon, Songdo Convensia',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: h3FontSize,
            ),
          ),
        ],
      ),
    );
  }
}
