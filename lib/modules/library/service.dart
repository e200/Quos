import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/modules/music/repository.dart';

class MusicLibrary {
  final MusicRepository musicRepository;

  MusicLibrary({required this.musicRepository});

  Future<List<QuosMusic>> getMostPlayed() {
    return musicRepository.getMostPlayed();
  }
}

final musicLibraryProvider = Provider<MusicLibrary>((ref) {
  return MusicLibrary(musicRepository: ref.watch(musicRepositoryProvider));
});
