import 'dart:io';

import 'package:flutter/material.dart';

final appGradientColors = [
  Color(0xFF313251),
  Color(0xFF171826),
];
final mutedTextColor = Color(0xFF9CB1EA);

final appBorderRadius = 10.0;

ThemeData getTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: Colors.deepPurple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }
    ),
  );
}
