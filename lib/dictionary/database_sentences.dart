// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

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

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    const englishTextType = 'TEXT NOT NULL';
    const frenchTextType = 'TEXT NOT NULL';

    await db.execute('''
    CREATE TABLE sentences ( 
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      english $englishTextType,
      french $frenchTextType
      )
    ''');
  }

  Future<void> initialize() async {
    await insertSentence('Hello, how are you?', 'Bonjour, comment ça va?');
    await insertSentence('Good morning', 'Bonjour');
    await insertSentence('Welcome to the app', 'Bienvenue dans l\'application');
    await fetchSentences();
  }

  Future<void> insertSentence(String english, String french) async {
    final db = await instance.database;

    await db.insert(
      'sentences',
      {'english': english, 'french': french},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> fetchSentences() async {
    final db = await instance.database;
    final data = await db.query('sentences');
    sentences = data;
  }

  List<Map<String, dynamic>> filterSentencesByKeywords(List<String> keywords, String language) {
    final filteredSentences = <Map<String, dynamic>>[];

    for (var sentence in sentences) {
      final text = language == 'english'
          ? sentence['english'].toLowerCase()
          : sentence['french'].toLowerCase();
      if (keywords.any((keyword) => text.contains(keyword.toLowerCase()))) {
        if (!filteredSentences.any((s) => s['english'] == sentence['english'])) {
          filteredSentences.add(sentence);
        }
      }
    }

    return filteredSentences;
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}