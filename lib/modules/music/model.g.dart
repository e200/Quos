// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuosMusic _$QuosMusicFromJson(Map<String, dynamic> json) => QuosMusic(
      title: json['title'] as String?,
      artist: json['artist'] as String?,
      album: json['album'] as String?,
      genre: json['genre'] as String?,
      artwork: json['artwork'] as String?,
      trackNumber: json['track_number'] as int?,
      trackTotal: json['track_total'] as int?,
      discNumber: json['disc_number'] as int?,
      discTotal: json['disc_total'] as int?,
      lyrics: json['lyrics'] as String?,
      albumArtist: json['album_artist'] as String?,
      year: json['year'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      fileName: json['file_name'] as String?,
      filePath: json['file_path'] as String?,
      fileFormat: json['file_format'] as String?,
      fileSize: json['file_size'] as int?,
      fileLastModified: json['file_last_modified'] == null
          ? null
          : DateTime.parse(json['file_last_modified'] as String),
    );

Map<String, dynamic> _$QuosMusicToJson(QuosMusic instance) => <String, dynamic>{
      'title': instance.title,
      'artist': instance.artist,
      'album': instance.album,
      'genre': instance.genre,
      'artwork': instance.artwork,
      'track_number': instance.trackNumber,
      'track_total': instance.trackTotal,
      'disc_number': instance.discNumber,
      'disc_total': instance.discTotal,
      'lyrics': instance.lyrics,
      'album_artist': instance.albumArtist,
      'year': instance.year,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'file_name': instance.fileName,
      'file_path': instance.filePath,
      'file_format': instance.fileFormat,
      'file_size': instance.fileSize,
      'file_last_modified': instance.fileLastModified?.toIso8601String(),
    };
