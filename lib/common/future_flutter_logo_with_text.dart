import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FutureFlutterLogoWithText extends StatelessWidget {
  const FutureFlutterLogoWithText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final width = screenSize.width;
    final wideDevice = width > 820;
    final double logoSize = wideDevice ? 170 : 170 * (width / 820);

    final logoFontSize = wideDevice ? 55.45 : 55.45 * (width / 820);

    final logoTextStyle = GoogleFonts.montserrat(
      fontSize: logoFontSize,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      letterSpacing: 0.99,
      height: 1.2,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset('svg/logo.svg', width: logoSize),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2024', style: logoTextStyle),
            Text('Future<Flutter>', style: logoTextStyle),
          ],
        )
      ],
    );
  }
}
