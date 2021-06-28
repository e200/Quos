import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuosConfig {
  final SharedPreferences sharedPreferences;

  QuosConfig({required this.sharedPreferences});

  Future<void> setString(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }

  // ignore: avoid_positional_boolean_parameters
  Future<void> setBool(String key, bool value) async {
    await sharedPreferences.setBool(key, value);
  }
  
  String? getString(String key) {
    return sharedPreferences.getString(key);
  }

  bool? getBool(String key) {
    return sharedPreferences.getBool(key);
  }
  
  bool hasKey(String key) {
    return sharedPreferences.containsKey(key);
  }
}

late Provider<QuosConfig> quosConfigProvider;
