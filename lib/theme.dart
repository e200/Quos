import 'package:flutter/material.dart';

final appBackgroundGradientColors = [
  const Color(0xFF313251),
  const Color(0xFF171826),
];

const iconButtonColor = Colors.deepOrange;

const mutedTextColor = Colors.grey;

const appBorderRadius = 15.0;

ThemeData getTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: Colors.deepOrange,
    accentColor: Colors.deepOrangeAccent,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
  );
}
