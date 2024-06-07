import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
import 'package:zeetionary/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/dictionary/database_sentences.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

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
  bool _isDownloading = false;
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

    if (isInstalled != null && isInstalled) {
      await fetchAllSentences();
    } else {
      setState(() {
        _isDatabaseInstalled = false;
      });
    }
  }

  Future<void> fetchAllSentences() async {
    final database = SentenceDatabase.instance;
    await database.initialize();
    allSentences = database.sentences;
    setState(() {
      _isDatabaseInstalled = true;
    });
    filterSentences("");
  }

  void filterSentences(String query) {
    final Set<String> uniqueEnglishSentences = {};

    setState(() {
      filteredSentences = allSentences.where((sentence) {
        final english = sentence['english'].toString().toLowerCase();
        final french = sentence['french'].toString().toLowerCase();

        if (!uniqueEnglishSentences.contains(english)) {
          uniqueEnglishSentences.add(english);
          return english.contains(query.toLowerCase()) ||
              french.contains(query.toLowerCase());
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

  Future<void> downloadDatabase() async {
    setState(() {
      _isDownloading = true;
    });

    final database = SentenceDatabase.instance;
    await database.initialize();
    allSentences = database.sentences;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDatabaseInstalled', true);

    setState(() {
      _isDownloading = false;
      _isDatabaseInstalled = true;
    });

    filterSentences("");
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
      body: _isDownloading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 60,
                    child: TextField(
                      controller: _searchController,
                      onChanged: (value) => filterSentences(value),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintStyle: TextStyle(fontSize: textSize),
                        hintText: "Search for sentences...",
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
                    ),
                  ),
                ),
                Expanded(
                  child: _isDatabaseInstalled
                      ? ListView.builder(
                          itemCount: filteredSentences.length,
                          itemBuilder: (context, index) {
                            final sentence = filteredSentences[index];
                            return Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    sentence['english'].toString(),
                                    style: TextStyle(
                                      fontSize: textSize,
                                    ),
                                  ),
                                  subtitle: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Text(
                                        sentence['french'].toString(),
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: textSize,
                                        ),
                                      )),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButtonBritish(
                                        onPressed: () => speakEnglish(
                                            sentence['english'], "en-GB"),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                              ],
                            );
                          },
                        )
                      : Center(
                          child: ElevatedButton(
                            onPressed: downloadDatabase,
                            child: const Text("Download Database"),
                          ),
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

