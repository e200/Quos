import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/init/provider.dart';
import 'package:quos/widgets.dart';

class InitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return QuosScaffold(
      body: Consumer(
        builder: (context, watch, child) {
          final _state = watch(initStateNotifierProvider.state);

          return _state.maybeWhen(
            error: () {
              return Column(
                children: [
                  const Text('Erro'),
                ],
              );
            },
            orElse: () => child!,
          );
        },
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
