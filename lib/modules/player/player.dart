import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quos/modules/player/state.dart';
import 'package:quos/modules/playlist/model.dart';

final playerControllerProvider =
    StateNotifierProvider.autoDispose<PlayerController>((ref) {
  return PlayerController(audioPlayer: AudioPlayer());
});

class PlayerController extends StateNotifier<QuosPlayerState> {
  final AudioPlayer audioPlayer;

  late StreamSubscription<Duration?> _positionStream;
  late StreamSubscription<ProcessingState?> _processingStateStream;

  PlayerController({
    required this.audioPlayer,
  }) : super(const QuosPlayerState.none());

  Future<void> play(QuosPlaylist playlist, int musicIndex) async {
    final _music = playlist.musics[musicIndex];

    if (audioPlayer.playing) {
      await audioPlayer.stop();

      _positionStream.cancel();
      _processingStateStream.cancel();
    }

    final _duration = await audioPlayer.setFilePath(_music.filePath!);

    audioPlayer.play();

    _positionStream = audioPlayer.positionStream.listen((position) {
      final progress =
          (position.inMilliseconds / _duration!.inMilliseconds) * 100;

      state = QuosPlayerState.playing(
        duration: _duration,
        musicIndex: musicIndex,
        music: _music,
        playlist: playlist,
        position: position,
        progress: progress,
      );
    });

    _processingStateStream = audioPlayer.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {}
    });
  }

  Future<void> toggle() async {
    if (audioPlayer.playing) {
      audioPlayer.pause();

      state.maybeWhen(
        playing: (
          playlist,
          music,
          musicIndex,
          duration,
          position,
          progress,
        ) {
          state = QuosPlayerState.paused(
            duration: audioPlayer.duration!,
            musicIndex: musicIndex,
            music: music,
            playlist: playlist,
            position: position,
            progress: progress,
          );
        },
        orElse: () {},
      );
    } else {
      audioPlayer.play();

      state.maybeWhen(
        paused: (
          playlist,
          music,
          musicIndex,
          duration,
          position,
          progress,
        ) {
          state = QuosPlayerState.playing(
            duration: audioPlayer.duration!,
            musicIndex: musicIndex,
            music: music,
            playlist: playlist,
            position: position,
            progress: progress,
          );
        },
        orElse: () {},
      );
    }
  }
}
