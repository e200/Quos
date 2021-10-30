import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/pages/home/page.dart';
import 'package:quos/theme.dart';

import 'modules/init/page.dart';
import 'modules/init/provider.dart';

class QuosApp extends StatefulWidget {
  @override
  _QuosAppState createState() => _QuosAppState();
}

class _QuosAppState extends State<QuosApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addObserver(this);

    context.read(initStateNotifierProvider.notifier).init();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _setSystemOverlayStyle();
    }
  }

  void _setSystemOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: appBackgroundGradientColors.last,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _setSystemOverlayStyle();

    return MaterialApp(
      title: 'QuosApp',
      theme: getTheme(context),
      home: Consumer(
        builder: (context, watch, child) {
          final _state = watch(initStateNotifierProvider);

          return Navigator(
            onPopPage: (route, result) {
              return route.didPop(result);
            },
            pages: [
              _state.maybeWhen(
                initialized: () => MaterialPage(child: HomePage()),
                orElse: () => MaterialPage(child: InitPage()),
              ) as Page,
            ],
          );
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
