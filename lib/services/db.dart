import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

late Provider<Database> dbProvider;

class DbProvider {
  static Future<Database> get() async {
    final _dbPath = await getDatabasesPath();
    final _dbFilePath = join(_dbPath!, 'quos.db');

    await deleteDatabase(_dbFilePath);

    final _db = await openDatabase(
      _dbFilePath,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE musics (
            id INT PRIMARY KEY,
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
            file_name TEXT NOT NULL,
            file_size INT NOT NULL,
            file_format TEXT NOT NULL,
            file_path TEXT NOT NULL,
            file_last_modified TEXT NOT NULL,
            created_at TEXT NOT NULL,
            updated_at TEXT NULL
          );
        ''');
      },
    );

    return _db;
  }
}
