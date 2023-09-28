import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  ResponsiveLayout({
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return mobileBody;
          } else if (constraints.maxWidth < 1000) {
            return tabletBody;
          } else {
            return desktopBody;
          }
        },
      ),
    );
  }
}
