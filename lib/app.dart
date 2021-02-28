import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quos/pages/home/page.dart';
import 'package:quos/theme.dart';

class QuosApp extends StatefulWidget {
  @override
  _QuosAppState createState() => _QuosAppState();
}

class _QuosAppState extends State<QuosApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _setSystemOverlayStyle();
    }
  }

  void _setSystemOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: appGradientColors.last,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    _setSystemOverlayStyle();
    
    return MaterialApp(
      title: 'QuosApp',
      theme: getTheme(context),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
