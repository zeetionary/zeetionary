import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
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

// id: INTEGER, Primary Key, Auto Increment.
// sentence: TEXT, Not Null.

Future<void> initializeDatabase() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isInstalled = prefs.getBool('isDatabaseInstalled');

  if (isInstalled == null || !isInstalled) {
    // Copy database from assets to the local path
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'sentences.db');

    ByteData data = await rootBundle.load(join('assets', 'sentences.db'));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    await File(path).writeAsBytes(bytes, flush: true);

    // Set the flag that the database is installed
    await prefs.setBool('isDatabaseInstalled', true);
  }
}

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

  List<Map<String, dynamic>> filterSentencesByKeywords(String keyword) {
    return sentences.where((sentence) {
      final english = sentence['english'].toString().toLowerCase();
      final french = sentence['french'].toString().toLowerCase();
      final keywords = sentence['keywords'].toString().toLowerCase();
      return english.contains(keyword.toLowerCase()) ||
          french.contains(keyword.toLowerCase()) ||
          keywords.contains(keyword.toLowerCase());
    }).toList();
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}

class SentencesPage extends ConsumerStatefulWidget {
  const SentencesPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SentencesPageState();
}

class _SentencesPageState extends ConsumerState<SentencesPage> {
  _SentencesPageState();

  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];
  List<Map<String, dynamic>> allSentences = [];
  bool _isDatabaseInstalled = false;
  bool _showFab = false;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-US");
    checkDatabaseStatus();
    _scrollController.addListener(_scrollListener);
  }

  Future<void> checkDatabaseStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isInstalled = prefs.getBool('isDatabaseInstalled');

    setState(() {
      _isDatabaseInstalled = isInstalled ?? false;
    });

    if (_isDatabaseInstalled) {
      await fetchAllSentences();
    } else {
      await initializeDatabase();
      await fetchAllSentences();
      setState(() {
        _isDatabaseInstalled = true;
      });
      await prefs.setBool('isDatabaseInstalled', true);
    }
  }

  Future<void> fetchAllSentences() async {
    final database = SentenceDatabase.instance;
    await database.initialize();
    setState(() {
      allSentences = database.sentences;
    });
    filterSentences("");
  }

  void filterSentences(String query) {
    final Set<String> uniqueEnglishSentences = {};

    setState(() {
      filteredSentences = allSentences.where((sentence) {
        final english = sentence['english'].toString().toLowerCase();
        final french = sentence['french'].toString().toLowerCase();
        final keywords = sentence['keywords'].toString().toLowerCase();

        if (!uniqueEnglishSentences.contains(english)) {
          uniqueEnglishSentences.add(english);
          return english.contains(query.toLowerCase()) ||
              french.contains(query.toLowerCase()) ||
              keywords.contains(query.toLowerCase());
        } else {
          return false;
        }
      }).toList();
    });
  }

  void speakEnglish(String text, String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(text);
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 60,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context)
                          .highlightColor, // Set your desired color here
                      width: 2.0, // Set the border width
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
                  hintText: "Search for sentences...",
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
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const ListViewSeparator();
              },
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
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
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    sentence['english'].toString(),
                                    style: TextStyle(
                                      fontSize: textSize,
                                    ),
                                  ),
                                ),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      sentence['french'].toString(),
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
                        Column(
                          children: [
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakEnglish(sentence['english'], "en-GB"),
                            ),
                            CustomIconButtonAmerican(
                              onPressed: () =>
                                  speakEnglish(sentence['english'], "en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // ListTile(
                    //   title: Text(
                    //     sentence['english'].toString(),
                    //     style: TextStyle(
                    //       fontSize: textSize,
                    //     ),
                    //   ),
                    //   subtitle: Directionality(
                    //       textDirection: TextDirection.rtl,
                    //       child: Text(
                    //         sentence['french'].toString(),
                    //         style: TextStyle(
                    //           fontSize: textSize,
                    //         ),
                    //       ),
                    //       ),
                    //   trailing: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       CustomIconButtonBritish(
                    //         onPressed: () =>
                    //             speakEnglish(sentence['english'], "en-GB"),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
