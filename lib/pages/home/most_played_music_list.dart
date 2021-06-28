import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quos/modules/music/model.dart';

part 'most_played_music_list.freezed.dart';

@freezed
abstract class MostPlayedMusicListState with _$MostPlayedMusicListState {
  const factory MostPlayedMusicListState.initial() = _Initial;
  const factory MostPlayedMusicListState.loading() = _Loading;
  const factory MostPlayedMusicListState.data(List<QuosMusic> musics) = _Data;
  const factory MostPlayedMusicListState.error(Object e) = _Error;
}
