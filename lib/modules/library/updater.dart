import 'dart:io';

// ignore: import_of_legacy_library_into_null_safe
import 'package:audiotagger/audiotagger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:permission_handler/permission_handler.dart';
import 'package:quos/modules/library/state.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/music/repository.dart';
import 'package:path/path.dart' as path;

class LibraryUpdater {
  final MusicRepository musicRepository;

  final _supportedFileFormats = <String>['.mp3'];

  LibraryUpdater({required this.musicRepository});

  Future<void> update(
      {Function(int total, int index, QuosMusic music)? onEachUpdate}) async {
    await Permission.storage.request();

    final _storage = Directory('/storage/emulated/0');

    final _files = _storage.listSync(recursive: true);

    final _supportedFiles = _extractSupportedFiles(_files);

    final _tagger = Audiotagger();

    for (int i = 0; i < _supportedFiles.length; i++) {
      try {
        final _supportedFile = _supportedFiles[i];

        final _filePath = _supportedFile.path;
        final _stat = await _supportedFile.stat();
        final _tags = await _tagger.readTags(path: _supportedFile.path);

        final _quosMusic = QuosMusic(
          fileName: path.basename(_filePath),
          fileFormat: path.extension(_filePath),
          filePath: _filePath,
          fileSize: _stat.size,
          fileLastModified: _stat.changed,
          title: _tags.title,
          artist: _tags.artist,
          album: _tags.album,
          albumArtist: _tags.albumArtist,
          genre: _tags.genre,
          trackNumber: int.tryParse(_tags.trackNumber),
          trackTotal: int.tryParse(_tags.trackTotal),
          discNumber: int.tryParse(_tags.discNumber),
          discTotal: int.tryParse(_tags.discTotal),
          lyrics: _tags.lyrics,
          year: int.tryParse(_tags.year),
          artwork: _tags.artwork,
        );

        final _music = await musicRepository.create(_quosMusic.toJson());

        onEachUpdate?.call(_supportedFileFormats.length, i, _music);
      } catch (e) {
        // print(e);
      }
    }
  }

  List<FileSystemEntity> _extractSupportedFiles(List<FileSystemEntity> _files) {
    return _files
        .where(
            (element) => _isFileSupported(element.path, _supportedFileFormats))
        .toList();
  }

  bool _isFileSupported(String path, List<String> supportedFileFormats) {
    return supportedFileFormats.any((element) => path.endsWith(element));
  }

  Future<bool> hasUpdates() async {
    return true;
  }
}

final libraryUpdaterProvider = Provider<LibraryUpdater>((ref) {
  return LibraryUpdater(
    musicRepository: ref.watch(musicRepositoryProvider),
  );
});

final libraryUpdateStateNotifierProvider =
    StateNotifierProvider<LibraryUpdateStateNotifier>((ref) {
  return LibraryUpdateStateNotifier(
    libraryUpdater: ref.watch(libraryUpdaterProvider),
  );
});

class LibraryUpdateStateNotifier extends StateNotifier<LibraryUpdateState> {
  final LibraryUpdater libraryUpdater;

  LibraryUpdateStateNotifier({
    required this.libraryUpdater,
  }) : super(const LibraryUpdateState.checkingUpdates());

  Future<void> update() async {
    state = const LibraryUpdateState.checkingUpdates();

    if (await libraryUpdater.hasUpdates()) {
      await libraryUpdater.update(
        onEachUpdate: (total, index, music) {
          state = LibraryUpdateState.updating(
            total: total,
            index: index,
            music: music,
          );
        },
      );
    }

    state = const LibraryUpdateState.updated();
  }
}
