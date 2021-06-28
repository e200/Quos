import 'package:sqflite/sqflite.dart';

import 'model.dart';

class QuosPlaylistRepository {
  final Database db;
  final String table = 'music_playlists';

  QuosPlaylistRepository({
    required this.db,
  });

  Future<QuosPlaylist> getPlaylist(int id) async {
    final _jsonPlaylist = await db.query(
      table,
      where: 'id = $id',
      limit: 1,
    );

    return QuosPlaylist.fromJson(_jsonPlaylist.first);
  }

  Future<List<QuosPlaylist>> getPlaylists() async {
    final _jsonPlaylist = await db.query(table);

    return List<QuosPlaylist>.from(
        _jsonPlaylist.map((e) => QuosPlaylist.fromJson(_jsonPlaylist.first)));
  }
}
