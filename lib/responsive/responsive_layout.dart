import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  late final Widget mobileScaffold;
  late final Widget tabletScaffold;
  late final Widget dekstopScaffold;

  ResponsiveLayout(
      {required this.mobileScaffold,
      required this.tabletScaffold,
      required this.dekstopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return dekstopScaffold;
        }
      },
    );
  }
}
