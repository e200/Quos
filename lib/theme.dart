import 'package:flutter/material.dart';

final appGradientColors = [
  const Color(0xFF313251),
  const Color(0xFF171826),
];

const iconButtonColor = Color(0xFFA785EE);

const mutedTextColor = Color(0xFF9CB1EA);

const appBorderRadius = 15.0;

ThemeData getTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: Colors.deepPurple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
  );
}
