import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

Future<List<Map<String, dynamic>>> searchSentences(
    Database db, String query) async {
  return await db.query(
    'sentences',
    where: 'sentence LIKE ?',
    whereArgs: ['%$query%'],
  );
}

// Future<Database> initializeDatabase() async {
//   var databasesPath = await getDatabasesPath();
//   var path = join(databasesPath, "kurdish_sentences.db");

//   // Force delete the existing database to ensure we use the one in assets
//   if (await databaseExists(path)) {
//     await deleteDatabase(path);
//     print("Deleted existing database in documents directory.");
//   }

//   // Copy from assets
//   try {
//     ByteData data = await rootBundle.load('assets/kurdish_sentences.db');
//     List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

//     await File(path).writeAsBytes(bytes, flush: true);
//     print("Database copied to documents directory.");
//   } catch (e) {
//     print("Error copying database: $e");
//   }

//   return await openDatabase(path);
// }

// Function to initialize and copy the database if needed
Future<Database> initializeDatabase() async {
  var databasesPath = await getDatabasesPath();
  var path = join(databasesPath, "kurdish_sentences.db");

  // Check if the database exists
  var exists = await databaseExists(path);

  if (!exists) {
    // Copy from assets
    try {
      ByteData data = await rootBundle.load('assets/kurdish_sentences.db');
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes, flush: true);
      print("Database copied to documents directory.");
    } catch (e) {
      print("Error copying database: $e");
    }
  } else {
    print("Database already exists in documents directory.");
  }

  return await openDatabase(path);
}

// class KurdishSentencesScreen extends StatefulWidget {
//   @override
//   _KurdishSentencesScreenState createState() => _KurdishSentencesScreenState();
// }

// class _KurdishSentencesScreenState extends State<KurdishSentencesScreen> {

class KurdishSentencesScreen extends ConsumerStatefulWidget {
  const KurdishSentencesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _KurdishSentencesScreenState();
}

class _KurdishSentencesScreenState
    extends ConsumerState<KurdishSentencesScreen> {
  _KurdishSentencesScreenState();

  Database? _database;
  List<Map<String, dynamic>> _sentences = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeDb();
  }

  void _initializeDb() async {
    _database = await initializeDatabase();
    _search(''); // Load all sentences initially
  }

  String normalizeKurdishH(String input) {
    return input.replaceAll('ه', 'ھ');
    // return input.replaceAll('\u200c', '');
  }

  void _search(String query) async {
    if (_database == null) return;

    String normalizedQuery = normalizeKurdishH(query);

    final results = await _database!.query(
      'sentences',
      where: 'sentence LIKE ?',
      whereArgs: ['%$normalizedQuery%'],
    );

    setState(() {
      _sentences = results;
    });

    if (results.isEmpty) {
      print("No results found for '$normalizedQuery'");
    } else {
      print("Found ${results.length} sentences for '$normalizedQuery'");
    }
  }

  Widget _highlightedText(
      String sentence, String query, WidgetRef ref, BuildContext context) {
    final textSize = ref.watch(textSizeProvider);
    String normalizedSentence = normalizeKurdishH(sentence);
    String normalizedQuery = normalizeKurdishH(query);

    int startIndex = normalizedSentence.indexOf(normalizedQuery);
    if (startIndex == -1) {
      return Text(sentence);
    }

    String beforeMatch = sentence.substring(0, startIndex);
    String match = sentence.substring(startIndex, startIndex + query.length);
    String afterMatch = sentence.substring(startIndex + query.length);

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: beforeMatch,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: textSize + 4,
            ),
          ),
          TextSpan(
            text: match,
            style: TextStyle(
              color: Theme.of(context).highlightColor,
              fontWeight: FontWeight.bold,
              fontSize: textSize + 4,
            ),
          ),
          TextSpan(
            text: afterMatch,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: textSize + 4,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // Widget build(BuildContext context, WidgetRef ref) {

  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);

    return Scaffold(
      body: Align(
        alignment: Alignment.topRight,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              // TextField(
              //   controller: _controller,
              //   decoration: const InputDecoration(
              //     prefixIcon: Icon(Icons.search),
              //     hintText: 'گەڕان بۆ ڕستە',
              //     border: OutlineInputBorder(),
              //   ),
              //   onChanged: (query) => _search(query),
              // ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 60,
                  child: TextField(
                    // cursorColor: Colors.red,
                    controller: _controller,
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
                      // fillColor: Colors.red,
                      // iconColor: Colors.red,
                      // focusColor: Colors.red,
                      // hoverColor: Colors.red,
                      // prefixIconColor: Colors.red,
                      // suffixIconColor: Colors.red,
                      hintText: 'گەڕان بۆ ڕستە',
                      hintStyle: TextStyle(fontSize: textSize),
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _controller.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _controller.clear();
                                _search(''); // Clear the search results
                              },
                            )
                          : null,
                    ),
                    onChanged: (query) {
                      setState(
                          () {}); // Trigger a rebuild to show/hide the clear button
                      _search(query);
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const ListViewSeparator();
                  },
                  itemCount: _sentences.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: _highlightedText(
                              _sentences[index]['sentence'],
                              _controller.text,
                              ref,
                              context,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
