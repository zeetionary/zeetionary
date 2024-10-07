import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/firebase/features/auth/screen/logout_screens/home_screen_logout/english_dictionary_logout/english_dictionary_list_logout.dart';
import 'package:zeetionary/firebase/features/auth/screen/logout_screens/home_screen_logout/english_dictionary_logout/english_dictionary_navigation_logout.dart';

class DictionaryScreenEnglishLogout extends ConsumerStatefulWidget {
  const DictionaryScreenEnglishLogout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DictionaryScreenEnglishLogoutState();
}

class _DictionaryScreenEnglishLogoutState
    extends ConsumerState<DictionaryScreenEnglishLogout> {
  _DictionaryScreenEnglishLogoutState();

  List<String> filteredWordsLogout = [];
  final TextEditingController _searchController = TextEditingController();

  final ScrollController _scrollController = ScrollController();
  bool showScrollToTop = false;
  Set<String> englishfavourites = {};

  @override
  void initState() {
    super.initState();
    filteredWordsLogout = List.from(allWordsEnglishLogout);
    _scrollController.addListener(() {
      setState(() {
        showScrollToTop = _scrollController.offset > 100;
      });
    });
    shuffledWordsLogout = List.from(allWordsEnglishLogout)..shuffle(Random());
    _startTimer();
    _loadEnglishFavourites();
  }

  void _loadEnglishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      englishfavourites =
          prefs.getStringList('english favourites')?.toSet() ?? {};
    });
  }

  void _updateEnglishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final englishFavouritesList =
        prefs.getStringList('english favourites')?.toSet() ?? {};

    setState(() {
      englishfavourites = englishFavouritesList;
    });
  }

  void onEnglishFavourite(String word) async {
    final prefs = await SharedPreferences.getInstance();
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    setState(() {
      final englishFavouritesList =
          prefs.getStringList('english favourites')?.toSet() ?? {};

      final wordWithoutTimestamp = word.split('-').first;

      if (englishFavouritesList.contains(wordWithoutTimestamp)) {
        englishFavouritesList.remove(wordWithoutTimestamp);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).canvasColor,
            // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            showCloseIcon: true,
            closeIconColor: Theme.of(context).primaryColor,
            content: Align(
              alignment: alignment,
              child: Directionality(
                textDirection: textDirection,
                child: Text(
                  isKurdish
                      ? 'وشەی دڵخواز سڕایەوە: $wordWithoutTimestamp'
                      : 'Favourite removed: $wordWithoutTimestamp',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: textSize + 1,
                  ),
                ),
              ),
            ),
            behavior: SnackBarBehavior.floating,
          ),
        );
      } else {
        englishFavouritesList.add(wordWithoutTimestamp);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).canvasColor,
            // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            showCloseIcon: true,
            closeIconColor: Theme.of(context).primaryColor,
            content: Align(
              alignment: alignment,
              child: Directionality(
                textDirection: textDirection,
                child: Text(
                  isKurdish
                      ? 'وشەی دڵخواز زیاد کرا: $wordWithoutTimestamp'
                      : 'Favourite added: $wordWithoutTimestamp',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: textSize + 1,
                  ),
                ),
              ),
            ),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }

      prefs.setStringList('english favourites', englishFavouritesList.toList());
      _updateEnglishFavourites();
    });
  }

  List<String> shuffledWordsLogout = [];

  int _shuffleCurrentIndex = 0;

  void _shuffleWords() {
    shuffledWordsLogout = List.from(allWordsEnglishLogout)..shuffle(Random());
  }

  void _startTimer() async {
    for (var i = 0; i < shuffledWordsLogout.length; i++) {
      await Future.delayed(const Duration(milliseconds: 3000), () {
        setState(() {
          _shuffleCurrentIndex = i;
        });
      });
    }
    _shuffleWords();
    _startTimer();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void filterResults(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredWordsLogout = List.from(allWordsEnglishLogout);
      } else {
        Map<String, int> wordFrequencies = {};

        for (String word in allWordsEnglishLogout) {
          String normalizedWord = _normalizeString(word);
          String normalizedQuery = _normalizeString(query);

          if (normalizedWord == normalizedQuery) {
            wordFrequencies[word] = (wordFrequencies[word] ?? 0) + 2;
          }
        }

        for (String word in allWordsEnglishLogout) {
          String normalizedWord = _normalizeString(word);
          String normalizedQuery = _normalizeString(query);

          if (normalizedWord.contains(normalizedQuery)) {
            int consecutiveMatches = _countConsecutiveMatches(
              normalizedWord,
              normalizedQuery,
            );
            wordFrequencies[word] =
                (wordFrequencies[word] ?? 0) + consecutiveMatches;
          }
        }

        List<String> fuzzyMatches = allWordsEnglishLogout
            .where((word) =>
                _fuzzyMatch(_normalizeString(word), _normalizeString(query)))
            .toList();

        for (String word in fuzzyMatches) {
          wordFrequencies[word] = (wordFrequencies[word] ?? 0) + 1;
        }

        filteredWordsLogout = wordFrequencies.keys.toList()
          ..sort((a, b) {
            bool exactMatchA = _isExactMatch(a, query);
            bool exactMatchB = _isExactMatch(b, query);

            if (exactMatchA && !exactMatchB) {
              return -1;
            } else if (!exactMatchA && exactMatchB) {
              return 1;
            } else {
              bool isSubstringA = a.contains(query) && !exactMatchA;
              bool isSubstringB = b.contains(query) && !exactMatchB;

              if (isSubstringA && !isSubstringB) {
                return -1;
              } else if (!isSubstringA && isSubstringB) {
                return 1;
              }

              bool startsWithA = a.startsWith(query);
              bool startsWithB = b.startsWith(query);

              if (startsWithA && !startsWithB) {
                return -1;
              } else if (!startsWithA && startsWithB) {
                return 1;
              }

              bool endsWithA = a.endsWith(query);
              bool endsWithB = b.endsWith(query);

              if (endsWithA && !endsWithB) {
                return -1;
              } else if (!endsWithA && endsWithB) {
                return 1;
              }

              if (exactMatchA && exactMatchB) {
                return a.length.compareTo(b.length);
              }

              int consecutiveMatchComparison =
                  _countConsecutiveMatches(b, query)
                      .compareTo(_countConsecutiveMatches(a, query));

              if (consecutiveMatchComparison != 0) {
                return consecutiveMatchComparison;
              }

              return (wordFrequencies[b] ?? 0)
                  .compareTo(wordFrequencies[a] ?? 0);
            }
          });
      }
    });
  }

  bool _isExactMatch(String word, String query) {
    word = _normalizeString(word);
    query = _normalizeString(query);

    return word == query;
  }

  String _normalizeString(String input) {
    input = input.replaceAll('ise', 'ize');
    input = input.replaceAll('sy', 'zy');
    input = input.replaceAll('tre', 'ter');
    input = input.replaceAll('our', 'or');
    input = input.replaceAll('lling', 'ling');
    input = input.replaceAll('yse', 'yze');
    input = input.replaceAll('ourite', 'orite');
    input = input.replaceAll('ce', 'se');
    input = input.replaceAll('sation', 'zation');
    input = input.replaceAll('amme', 'am');
    input = input.replaceAll('mme', 'm');
    input = input.replaceAll('ogue', 'og');
    input = input.replaceAll('llery', 'lry');
    input = input.replaceAll('nes', 'ns');
    input = input.replaceAll('nium', 'num');
    input = input.replaceAll('è', 'e');
    input = input.replaceAll('ê', 'e');
    input = input.replaceAll('hoea', 'hea');

    return input.replaceAll('-', ' ').toLowerCase();
  }

  int _countConsecutiveMatches(String word, String query) {
    int count = 0;
    for (int i = 0; i < word.length && i < query.length; i++) {
      if (word[i] == query[i]) {
        count++;
      } else {
        break;
      }
    }
    return count;
  }

  bool _fuzzyMatch(String word, String query) {
    word = word.toLowerCase();
    query = query.toLowerCase();

    if (word == query) {
      return true;
    }

    int maxEditDistance = 2;
    int editDistance = _calculateEditDistance(word, query);

    return editDistance <= maxEditDistance;
  }

  int _calculateEditDistance(String a, String b) {
    int m = a.length;
    int n = b.length;
    List<List<int>> dp =
        List.generate(m + 1, (_) => List<int>.filled(n + 1, 0));

    for (int i = 0; i <= m; i++) {
      for (int j = 0; j <= n; j++) {
        if (i == 0) {
          dp[i][j] = j;
        } else if (j == 0) {
          dp[i][j] = i;
        } else if (a[i - 1] == b[j - 1]) {
          dp[i][j] = dp[i - 1][j - 1];
        } else {
          dp[i][j] = 1 + _min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]);
        }
      }
    }

    return dp[m][n];
  }

  int _min(int a, int b, int c) => a < b ? (a < c ? a : c) : (b < c ? b : c);

  void saveToHistory(String word) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> englishhistory = prefs.getStringList('english history') ?? [];

    if (englishhistory.contains(word)) {
      englishhistory.remove(word);
    }

    englishhistory.insert(0, word);
    await prefs.setStringList('english history', englishhistory);

    setState(() {});
  }

  void clearSearch() {
    _searchController.clear();
    filterResults("");
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 1;
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: showScrollToTop
          ? FloatingActionButton(
              onPressed: _scrollToTop,
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 60,
              child: TextField(
                // enableInteractiveSelection: false,
                controller: _searchController,
                onChanged: filterResults,
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
                  hintText: shuffledWordsLogout.isEmpty
                      ? ''
                      : shuffledWordsLogout[_shuffleCurrentIndex],
                  hintStyle: TextStyle(fontSize: textSize),
                  prefixIcon: Icon(Icons.search, size: textSize + 5),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (_searchController.text.isNotEmpty)
                        IconButton(
                          icon: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.3),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Icon(Icons.clear, size: textSize + 5),
                          ),
                          onPressed: clearSearch,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: EnglishDictionaryNavigationLogout(
                words: filteredWordsLogout,
                scrollController: _scrollController,
                onEnglishFavourite: onEnglishFavourite,
                englishfavourites: englishfavourites,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
