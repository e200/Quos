import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quos/modules/music/model.dart';

part 'model.g.dart';

@JsonSerializable()
class QuosPlaylist {
  final int id;
  final String? name;
  final List<QuosMusic> musics;

  QuosPlaylist({
    required this.id,
    this.name,
    this.musics = const [],
  });

  factory QuosPlaylist.fromJson(Map<String, dynamic> json) =>
      _$QuosPlaylistFromJson(json);

  Map<String, dynamic> toJson() => _$QuosPlaylistToJson(this);
}
