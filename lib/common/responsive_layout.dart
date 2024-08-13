// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

const mobileWidth = 360;
const tabletWidth = 768;
const customScreenSize = 1100;
const desktopWidth = 1366;

class ResponsiveLayOut extends StatelessWidget {
  final Widget? mobileBody;
  final Widget? tabletBody;
  final Widget desktopBody;
  const ResponsiveLayOut({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
    this.tabletBody,
  });

  static bool isMobileScreen(BuildContext context) =>
      MediaQuery.sizeOf(context).width < tabletWidth;
  static bool isTabletScreen(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= tabletWidth ||
      MediaQuery.sizeOf(context).width < desktopWidth;
  static bool isDesktopScreen(BuildContext context) =>
      MediaQuery.sizeOf(context).width > desktopWidth;
  static bool isCustomSize(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= customScreenSize &&
        MediaQuery.sizeOf(context).width >= tabletWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= desktopWidth) {
          return desktopBody;
        } else if (width < desktopWidth && width >= tabletWidth) {
          return tabletBody ?? desktopBody;
        } else {
          return mobileBody ?? desktopBody;
        }
      },
    );
  }
}
