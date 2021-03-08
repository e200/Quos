// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/app.dart';

void main() {
  Paint.enableDithering = true;

  runApp(ProviderScope(child: QuosApp()));
}
