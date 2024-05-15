import 'package:flutter/material.dart';

abstract class ScreenConstraints {
  static const int largeScreenSize = 1366;
  static const int smallScreenSize = 360;
}

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  const ResponsiveWidget({super.key,
  required this.largeScreen, 
  required this.smallScreen});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}