// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuosPlaylist _$QuosPlaylistFromJson(Map<String, dynamic> json) {
  return QuosPlaylist(
    id: json['id'] as int,
    name: json['name'] as String?,
    musics: (json['musics'] as List<dynamic>)
        .map((e) => QuosMusic.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QuosPlaylistToJson(QuosPlaylist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'musics': instance.musics,
    };
