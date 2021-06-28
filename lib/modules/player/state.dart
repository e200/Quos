import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/playlist/model.dart';

part 'state.freezed.dart';

@freezed
abstract class QuosPlayerState with _$QuosPlayerState {
  const factory QuosPlayerState.none() = _None;
  const factory QuosPlayerState.playing({
    required QuosPlaylist playlist,
    required QuosMusic music,
    required int musicIndex,
    required Duration duration,
    required Duration position,
    required double progress,
  }) = _Playing;
  const factory QuosPlayerState.paused({
    required QuosPlaylist playlist,
    required QuosMusic music,
    required int musicIndex,
    required Duration duration,
    required Duration position,
    required double progress,
  }) = _Paused;
  const factory QuosPlayerState.stopped() = _Stopped;
}
