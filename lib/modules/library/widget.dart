import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/library/updater.dart';

class QuosLibraryUpdateStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF282940),
      child: Consumer(
        builder: (context, watch, child) {
          final _state = watch(libraryUpdateStateNotifierProvider.state);

          return _state.maybeWhen(
            checkingUpdates: () => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'A verificar actualizações...',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            updating: (total, index, music) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  music.title ?? music.fileName!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
