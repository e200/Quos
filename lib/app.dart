import 'package:flutter/material.dart';
import 'package:quos/pages/home/page.dart';
import 'package:quos/theme.dart';

class QuosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuosApp',
      theme: getTheme(context),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
