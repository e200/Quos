import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/services/db.dart';
import 'package:sqflite/sqflite.dart';

final musicRepositoryProvider = Provider<MusicRepository>((ref) {
  return MusicRepository(
    db: ref.watch(dbProvider),
  );
});

class MusicRepository {
  final Database db;

  static const table = 'musics';

  MusicRepository({required this.db});

  Future<QuosMusic> create(Map<String, dynamic> data) async {
    await db.insert(
      table,
      {
        ...data,
        'created_at': DateTime.now().toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    return QuosMusic.fromJson(data);
  }

  Future<List<QuosMusic>> getAll() async {
    final _jsonMusics = await db.query(table);

    return List<QuosMusic>.from(_jsonMusics.map((e) => QuosMusic.fromJson(e)));
  }
}
