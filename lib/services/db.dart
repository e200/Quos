import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

late Provider<Database> dbProvider;

final dbManagerProvider = Provider((ref) => DbManager());

class DbManager {
  late Database _db;

  Future<Database> openDb() async {
    final _dbPath = await _getDatabasePath();

    return _db = await openDatabase(
      _dbPath,
      version: _migrations.length,
      onConfigure: (db) {
        return db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: (db, version) async {
        final _batch = db.batch();

        for (int i = 1; i <= _migrations.length; i++) {
          _batch.execute(_migrations[i]!);
        }

        await _batch.commit();
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        final _batch = db.batch();

        for (int i = oldVersion + 1; i <= _migrations.length; i++) {
          _batch.execute(_migrations[i]!);
        }

        await _batch.commit();
      },
    );
  }

  Future<void> delete() async {
    if (_db.isOpen) {
      await _db.close();
    }

    final _dbPath = await _getDatabasePath();

    await deleteDatabase(_dbPath);
  }

  Future<String> _getDatabasePath() async {
    final _dbPath = await getDatabasesPath();

    final _dbFilePath = join(_dbPath, 'quos.db');

    return _dbFilePath;
  }
}

final Map<int, String> _migrations = {
  1: v1Query,
  2: v2Query,
};

const v1Query = '''
  CREATE TABLE musics (
    id INT PRIMARY KEY AUTOINCREMENT,
    title TEXT NULL,
    artist TEXT NULL,
    album TEXT NULL,
    album_artist TEXT NULL,
    track_number INT NULL,
    track_total INT NULL,
    disc_number INT NULL,
    disc_total INT NULL,
    genre TEXT NULL,
    artwork TEXT NULL,
    lyrics TEXT NULL,
    comment TEXT NULL,
    year INT NULL,
    play_total INT DEFAULT 0,
    file_name TEXT NOT NULL,
    file_size INT NOT NULL,
    file_format TEXT NOT NULL,
    file_path TEXT NOT NULL,
    file_last_modified TEXT NOT NULL,
    created_at TEXT NOT NULL,
    updated_at TEXT NULL
  );

  CREATE TABLE recent_played_musics (
    id INT PRIMARY KEY AUTOINCREMENT,
    music_id TEXT NULL,
    created_at TEXT NOT NULL,
    updated_at TEXT NULL,
    FOREIGN KEY(music_id) REFERENCES music(id)
  );
''';

const v2Query = '''
  CREATE TABLE music_playlists (
    id INT PRIMARY KEY AUTOINCREMENT,
    name TEXT NULL,
    description TEXT NULL,
    created_at TEXT NOT NULL,
    updated_at TEXT NULL
  );

  CREATE TABLE music_playlist_musics (
    id INT PRIMARY KEY AUTOINCREMENT,
    music_id TEXT NULL,
    music_playlist_id TEXT NULL,
    created_at TEXT NOT NULL,
    updated_at TEXT NULL,
    FOREIGN KEY(music_id) REFERENCES music(id),
    FOREIGN KEY(music_playlist_id) REFERENCES music_playlists(id),
  );
''';
