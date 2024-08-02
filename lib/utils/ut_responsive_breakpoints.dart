import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class UTResponsiveBreakpoints extends StatelessWidget {
  static const kMobileWidth = 450.0;
  static const kTabletWidth = 800.0;
  static const kDesktopWidth = 1920.0;

  final Widget child;

  const UTResponsiveBreakpoints._({
    super.key,
    required this.child,
  });

  factory UTResponsiveBreakpoints.builder({Key? key, required Widget child}) {
    return UTResponsiveBreakpoints._(key: key, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(child: child, breakpoints: [
      const Breakpoint(start: 0, end: kMobileWidth, name: MOBILE),
      const Breakpoint(start: 451, end: kTabletWidth, name: TABLET),
      const Breakpoint(start: 801, end: kDesktopWidth, name: DESKTOP),
      const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
    ]);
  }
}
