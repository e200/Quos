import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class QuosMusic {
  final String? title;
  final String? artist;
  final String? album;
  final String? genre;
  final String? artwork;
  @JsonKey(name: 'track_number')
  final int? trackNumber;
  @JsonKey(name: 'track_total')
  final int? trackTotal;
  @JsonKey(name: 'disc_number')
  final int? discNumber;
  @JsonKey(name: 'disc_total')
  final int? discTotal;
  final String? lyrics;
  @JsonKey(name: 'album_artist')
  final String? albumArtist;
  final int? year;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'file_name')
  final String? fileName;
  @JsonKey(name: 'file_path')
  final String? filePath;
  @JsonKey(name: 'file_format')
  final String? fileFormat;
  @JsonKey(name: 'file_size')
  final int? fileSize;
  @JsonKey(name: 'file_last_modified')
  final DateTime? fileLastModified;

  QuosMusic({
    this.title,
    this.artist,
    this.album,
    this.genre,
    this.artwork,
    this.trackNumber,
    this.trackTotal,
    this.discNumber,
    this.discTotal,
    this.lyrics,
    this.albumArtist,
    this.year,
    this.createdAt,
    this.updatedAt,
    this.fileName,
    this.filePath,
    this.fileFormat,
    this.fileSize,
    this.fileLastModified,
  });

  factory QuosMusic.fromJson(Map<String, dynamic> json) =>
      _$QuosMusicFromJson(json);

  Map<String, dynamic> toJson() => _$QuosMusicToJson(this);
}
