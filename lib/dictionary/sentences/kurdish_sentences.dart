import 'package:flutter/material.dart';
import 'package:zeetionary/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// import 'package:zeetionary/main.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initializeKurdishDatabase() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isInstalled = prefs.getBool('isKurdishDatabaseInstalled');

  if (isInstalled == null || !isInstalled) {
    // Copy database from assets to the local path
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'kurdish_sentences.db');

    ByteData data =
        await rootBundle.load(join('assets', 'kurdish_sentences.db'));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    await File(path).writeAsBytes(bytes, flush: true);

    // Set the flag that the database is installed
    await prefs.setBool('isKurdishDatabaseInstalled', true);
  }
}

class KurdishSentenceDatabase {
  static final KurdishSentenceDatabase instance =
      KurdishSentenceDatabase._init();
  static Database? _database;
  List<Map<String, dynamic>> sentences = [];

  KurdishSentenceDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('kurdish_sentences.db');
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

  List<Map<String, dynamic>> filterSentencesByKeywords(String keyword) {
    return sentences.where((sentence) {
      final kurdish = sentence['sentence'].toString().toLowerCase();
      final keywords = sentence['keywords'].toString().toLowerCase();
      return kurdish.contains(keyword.toLowerCase()) ||
          keywords.contains(keyword.toLowerCase());
    }).toList();
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}

class KurdishSentencesScreen extends ConsumerStatefulWidget {
  const KurdishSentencesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _KurdishSentencesScreenState();
}

class _KurdishSentencesScreenState
    extends ConsumerState<KurdishSentencesScreen> {
  _KurdishSentencesScreenState();

  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<Map<String, dynamic>> filteredKurdishSentences = [];
  List<Map<String, dynamic>> allKurdishSentences = [];
  bool _isKurdishDatabaseInstalled = false;
  bool _showFab = false;

  @override
  void initState() {
    super.initState();
    checkDatabaseStatus();
    _scrollController.addListener(_scrollListener);
  }

  Future<void> checkDatabaseStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isInstalled = prefs.getBool('isKurdishDatabaseInstalled');

    setState(() {
      _isKurdishDatabaseInstalled = isInstalled ?? false;
    });

    if (_isKurdishDatabaseInstalled) {
      await fetchallKurdishSentences();
    } else {
      await initializeKurdishDatabase();
      await fetchallKurdishSentences();
      setState(() {
        _isKurdishDatabaseInstalled = true;
      });
      await prefs.setBool('isKurdishDatabaseInstalled', true);
    }
  }

  Future<void> fetchallKurdishSentences() async {
    final database = KurdishSentenceDatabase.instance;
    await database.initialize();
    setState(() {
      allKurdishSentences = database.sentences;
    });
    filterSentences("");
  }

  void filterSentences(String query) {
    final Set<String> uniqueEnglishSentences = {};

    setState(() {
      filteredKurdishSentences = allKurdishSentences.where((sentence) {
        final kurdish = sentence['sentence'].toString().toLowerCase();
        final keywords = sentence['keywords'].toString().toLowerCase();

        if (!uniqueEnglishSentences.contains(kurdish)) {
          uniqueEnglishSentences.add(kurdish);
          return kurdish.contains(query.toLowerCase()) ||
              keywords.contains(query.toLowerCase());
        } else {
          return false;
        }
      }).toList();
    });
  }

  void _scrollListener() {
    if (_scrollController.offset >= 200) {
      setState(() {
        _showFab = true;
      });
    } else {
      setState(() {
        _showFab = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 1;
    return Scaffold(
      floatingActionButton: _showFab
          ? FloatingActionButton(
              onPressed: () {
                _scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(
                  color: Theme.of(context).primaryColor.withOpacity(0.003),
                  width: 0.2,
                ),
              ),
              child: Icon(
                Icons.arrow_upward,
                size: textSize + 2,
                color: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Align(
        alignment: Alignment.topRight,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).highlightColor,
                          width: 1.5,
                        ),
                      ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //     color: Theme.of(context)
                      //         .highlightColor, // The color of the border when not focused
                      //     width: 2.0,
                      //   ),
                      // ),
                      border: const OutlineInputBorder(),
                      // labelText: "Search",
                      hintText: "گەڕان بۆ ڕستە...",
                      hintStyle: TextStyle(fontSize: textSize),
                      prefixIcon: Icon(Icons.search, size: textSize + 5),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                filterSentences("");
                              },
                            )
                          : null,
                    ),
                    onChanged: (value) => filterSentences(value),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return const ListViewSeparator();
                    },
                    itemCount: filteredKurdishSentences.length,
                    itemBuilder: (context, index) {
                      final sentence = filteredKurdishSentences[index];
                      return Column(
                        children: [
                          // const Divider(),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            sentence['sentence'].toString(),
                                            style: TextStyle(
                                              fontSize: textSize,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
