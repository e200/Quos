import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/init/state.dart';
import 'package:quos/services/db.dart';

final initStateNotifierProvider =
    StateNotifierProvider((ref) => InitStateNotifier());

class InitStateNotifier extends StateNotifier<InitState> {
  InitStateNotifier() : super(const InitState.initializing());

  Future<void> init() async {
    state = const InitState.initializing();

    try {
      final _db = await DbProvider.get();

      dbProvider = Provider((ref) => _db);

      state = const InitState.initialized();
    } catch (e) {
      state = const InitState.error();
    }
  }
}
