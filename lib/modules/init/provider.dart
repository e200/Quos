import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/init/state.dart';
import 'package:quos/services/config.dart';
import 'package:quos/services/db.dart';
import 'package:shared_preferences/shared_preferences.dart';

final initStateNotifierProvider =
    StateNotifierProvider((ref) => InitStateNotifier(ref: ref));

class InitStateNotifier extends StateNotifier<InitState> {
  final ProviderReference ref;

  InitStateNotifier({ required this.ref }) : super(const InitState.initializing());

  Future<void> init() async {
    state = const InitState.initializing();

    try {
      final _db = await ref.read(dbManagerProvider).openDb();
      final _sharedPreferences = await SharedPreferences.getInstance();

      dbProvider = Provider((ref) => _db);
      quosConfigProvider = Provider(
        (ref) => QuosConfig(sharedPreferences: _sharedPreferences),
      );

      state = const InitState.initialized();
    } catch (e) {
      state = const InitState.error();
    }
  }
}
