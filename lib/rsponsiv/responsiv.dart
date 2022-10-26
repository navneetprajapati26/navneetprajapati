import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;
  ResponsiveLayout(
      {Key? key,
      required this.mobileBody,
      required this.desktopBody,
      required this.tabletBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileBody;
      } else if (constraints.maxWidth < 1100) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    });
  }
}
