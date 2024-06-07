import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class SentenceDatabase {
  static final SentenceDatabase instance = SentenceDatabase._init();
  static Database? _database;
  List<Map<String, dynamic>> sentences = [];

  SentenceDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('sentences.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, fileName);

    // Check if the database exists
    bool dbExists = await databaseExists(path);

    if (!dbExists) {
      // If the database does not exist, copy it from the assets
      ByteData data = await rootBundle.load(join('assets', fileName));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write the copied database to the local path
      await File(path).writeAsBytes(bytes, flush: true);
    }

    return await openDatabase(path);
  }

  Future<void> initialize() async {
    await fetchSentences();
  }

  Future<void> fetchSentences() async {
    final db = await instance.database;
    final data = await db.query('sentences');
    sentences = data;
  }

  List<Map<String, dynamic>> filterSentencesByKeywords(
      List<String> keywords, String language) {
    final languageKey = language.toLowerCase();
    final filteredSentences = sentences.where((sentence) {
      final text = sentence[languageKey].toString().toLowerCase();
      return keywords.any((keyword) => text.contains(keyword.toLowerCase()));
    }).toList();

    return filteredSentences;
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
