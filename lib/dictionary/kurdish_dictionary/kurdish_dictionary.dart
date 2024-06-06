import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

// class DictionaryScreenKurdish extends StatefulWidget {
//   const DictionaryScreenKurdish({super.key});

//   @override
//   State<DictionaryScreenKurdish> createState() =>
//       _DictionaryScreenKurdishState();
// }

class DictionaryScreenKurdish extends ConsumerStatefulWidget {
  const DictionaryScreenKurdish({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DictionaryScreenKurdishState();
}

// class _DictionaryScreenKurdishState extends State<DictionaryScreenKurdish> {

class _DictionaryScreenKurdishState
    extends ConsumerState<DictionaryScreenKurdish> {
  _DictionaryScreenKurdishState();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsKurdish = [
    "کوردی",
    "کوردستان",
    "کوردس‌تان",
    "کوردس‌ تان",
    "کورد س‌تان",
    "ھائی کوردی",
    "هائی عەرەبی",
    "دەست‌پێ‌کردن",
    "دەستپێکردن",
    "دەستپێ‌کردن",
    "دەست‌پێکردن",
    "دەست پێ کردن",
    "دەستپێ کردن",
    "دەست پێکردن",
    "یەک",
    "دوو",
    "سێ",
    "چوار",
    "پێنج",
    "شەش",
    "حەوت",
    "‌هەشت",
  ];

  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  final ScrollController _scrollController = ScrollController();
  bool showScrollToTop = false;
  Set<String> kurdishfavourites = {};

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allWordsKurdish);
    // Add a listener to the scroll controller to determine when to show the scroll-to-top button
    _scrollController.addListener(() {
      setState(() {
        showScrollToTop = _scrollController.offset > 100;
      });
    });
    shuffledWords = List.from(allWordsKurdish)..shuffle(Random());
    _startTimer();
    _loadKurdishFavourites();
  }

  void _loadKurdishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      kurdishfavourites =
          prefs.getStringList('kurdish favourites')?.toSet() ?? {};
    });
  }

  // Function to handle clearing favourites
  // void _clearKurdishFavourites() {
  //   setState(() {
  //     favourites.clear();
  //   });
  // }

  // void _removeKurdishFavourite(String favourite) {
  //   setState(() {
  //     favourites.remove(favourite);
  //   });
  //   _saveKurdishFavourites();
  // }

  // Future<void> _saveKurdishFavourites() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setStringList('kurdish favourites', favourites.toList());
  // }

  // Function to handle updating favourites
  void _updateKurdishFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final kurdishFavouritesList =
        prefs.getStringList('kurdish favourites')?.toSet() ?? {};

    setState(() {
      kurdishfavourites = kurdishFavouritesList;
    });
  }

  void onKurdishFavourite(String word) async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      final kurdishFavouritesList =
          prefs.getStringList('kurdish favourites')?.toSet() ?? {};

      final wordWithoutTimestamp = word.split('-').first;

      if (kurdishFavouritesList.contains(wordWithoutTimestamp)) {
        kurdishFavouritesList.remove(wordWithoutTimestamp);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('وشەی دڵخواز سڕایەوە: $wordWithoutTimestamp')),
          ),
        );
      } else {
        kurdishFavouritesList.add(wordWithoutTimestamp);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('وشەی دڵخواز زیادکرا: $wordWithoutTimestamp')),
          ),
        );
      }

      prefs.setStringList('kurdish favourites', kurdishFavouritesList.toList());
      _updateKurdishFavourites();
    });
  }

  List<String> shuffledWords = [];

  int _shuffleCurrentIndex = 0;
  // List<String> shuffledWords = allWordsKurdish;
  // List<String> shuffledWords = [];

  void _shuffleWords() {
    // (zee: shuffled words in drawer) https://chat.openai.com/c/1f9cf2bd-5e5b-43d9-9ef0-dacd4d495d4f
    shuffledWords = List.from(allWordsKurdish)..shuffle(Random());
  }

  void _startTimer() async {
    for (var i = 0; i < shuffledWords.length; i++) {
      await Future.delayed(const Duration(milliseconds: 1100), () {
        setState(() {
          _shuffleCurrentIndex = i;
        });
      });
    }
    _shuffleWords(); // Reshuffle the words after the loop
    _startTimer(); // Restart the timer for continuous cycling
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
        // If the query is empty, show all words
        filteredWords = List.from(allWordsKurdish);
      } else {
        // Create a map to store word frequencies
        Map<String, int> wordFrequencies = {};

        // Update frequencies for exact matches, considering hyphens and spaces as the same
        for (String word in allWordsKurdish) {
          String normalizedWord =
              normalizeKurdishZWNJ(normalizeKurdishH(word)).toLowerCase();
          String normalizedQuery =
              normalizeKurdishZWNJ(normalizeKurdishH(query)).toLowerCase();

          if (normalizedWord == normalizedQuery) {
            wordFrequencies[word] = (wordFrequencies[word] ?? 0) +
                2; // Higher weight for exact matches
          }
        }

        // Update frequencies for relevant matches (contains the query), considering hyphens and spaces as the same
        for (String word in allWordsKurdish) {
          String normalizedWord =
              normalizeKurdishZWNJ(normalizeKurdishH(word)).toLowerCase();
          String normalizedQuery =
              normalizeKurdishZWNJ(normalizeKurdishH(query)).toLowerCase();

          if (normalizedWord.contains(normalizedQuery)) {
            // Prioritize words with more consecutive matching characters
            int consecutiveMatches =
                _countConsecutiveMatches(normalizedWord, normalizedQuery);
            wordFrequencies[word] =
                (wordFrequencies[word] ?? 0) + consecutiveMatches;
          }
        }

        // Fuzzy search for approximate matches, considering hyphens and spaces as the same
        List<String> fuzzyMatches = allWordsKurdish
            .where((word) => _fuzzyMatch(
                normalizeKurdishZWNJ(normalizeKurdishH(word)),
                normalizeKurdishZWNJ(normalizeKurdishH(query)).toLowerCase()))
            .toList();

        // Update frequencies for fuzzy matches
        for (String word in fuzzyMatches) {
          wordFrequencies[word] = (wordFrequencies[word] ?? 0) + 1;
        }

        // Combine and prioritize by relevancy, with exact matches at the top
        filteredWords = wordFrequencies.keys.toList()
          ..sort((a, b) {
            bool exactMatchA = normalizeKurdishZWNJ(normalizeKurdishH(a))
                    .toLowerCase() ==
                normalizeKurdishZWNJ(normalizeKurdishH(query)).toLowerCase();
            bool exactMatchB = normalizeKurdishZWNJ(normalizeKurdishH(b))
                    .toLowerCase() ==
                normalizeKurdishZWNJ(normalizeKurdishH(query)).toLowerCase();

            if (exactMatchA && !exactMatchB) {
              return -1; // A is an exact match, so it comes first.
            } else if (!exactMatchA && exactMatchB) {
              return 1; // B is an exact match, so it comes first.
            } else {
              // Sort based on frequencies for non-exact matches
              int frequencyComparison =
                  (wordFrequencies[b] ?? 0).compareTo(wordFrequencies[a] ?? 0);

              if (frequencyComparison == 0) {
                // If frequencies are equal, prioritize words containing the exact match
                bool containsExactA = normalizeKurdishH(a)
                    .toLowerCase()
                    .contains(normalizeKurdishH(query).toLowerCase());
                bool containsExactB = normalizeKurdishH(b)
                    .toLowerCase()
                    .contains(normalizeKurdishH(query).toLowerCase());

                if (containsExactA && !containsExactB) {
                  return -1; // A contains the exact match, so it comes next.
                } else if (!containsExactA && containsExactB) {
                  return 1; // B contains the exact match, so it comes next.
                }

                // If not an exact match, prioritize by the length of consecutive matches
                int consecutiveMatchComparison = _countConsecutiveMatches(
                        normalizeKurdishH(b), query)
                    .compareTo(
                        _countConsecutiveMatches(normalizeKurdishH(a), query));

                if (consecutiveMatchComparison != 0) {
                  return consecutiveMatchComparison;
                }
              }

              return frequencyComparison;
            }
          });
      }
    });
  }

  String normalizeKurdishZWNJ(String input) {
    // Replace ZWNJ with an empty string
    // https://chat.openai.com/c/3be92bde-854c-4f40-8617-179f3b7602ca
    return input.replaceAll(
        '\u200c', ''); // '\u200c' is the Unicode representation of ZWNJ
  }

  String normalizeKurdishH(String input) {
    // Replace all occurrences of ھ with ه
    // https://chat.openai.com/c/3be92bde-854c-4f40-8617-179f3b7602ca
    return input.replaceAll('ھ', 'ه');
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
    // Implement an enhanced fuzzy matching algorithm
    // Consider consecutive character matches and adjust the threshold.

    // Case-insensitive comparison
    word = word.toLowerCase();
    query = query.toLowerCase();

    // Exact match
    if (word == query) {
      return true;
    }

    // Check for consecutive character matches
    int consecutiveMatches = 0;
    int maxConsecutiveMatches = 2; // Adjust as needed

    for (int i = 0;
        i < word.length && consecutiveMatches <= maxConsecutiveMatches;
        i++) {
      if (i < query.length && word[i] == query[i]) {
        consecutiveMatches++;
      } else {
        consecutiveMatches = 0;
      }
    }

    return consecutiveMatches > maxConsecutiveMatches;
  }

  // void filterResults(String query) {
  //   setState(() {
  //     filteredWords = allWordsKurdish
  //         .where((word) => word.toLowerCase().contains(query.toLowerCase()))
  //         .toList();
  //   });
  // }

  // void saveToHistory(String word) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   List<String> kurdishhistory = prefs.getStringList("kurdish history") ?? [];

  //   if (!kurdishhistory.contains(word)) {
  //     kurdishhistory.add(word);
  //     await prefs.setStringList("kurdish history", kurdishhistory);
  //   }
  // }

  void saveToHistory(String word) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> kurdishhistory = prefs.getStringList('kurdish history') ?? [];

    // https://bard.google.com/chat/ad9cccab2b6f39b4

    if (kurdishhistory.contains(word)) {
      kurdishhistory
          .remove(word); // Remove the existing item before adding it again.
    }

    kurdishhistory.insert(0, word); // Add the item back to the top of the list.
    await prefs.setStringList('kurdish history', kurdishhistory);

    setState(() {}); // Rebuild the list view with the updated order.
  }

  // (not zee) https://chat.openai.com/c/1b6a5ca9-fbb4-4eb2-8a47-8df7b4085fdc

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void clearSearch() {
    _searchController.clear();
    filterResults('');
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 1;
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: showScrollToTop
          ? FloatingActionButton(
              onPressed: _scrollToTop,
              backgroundColor:
                  Theme.of(context).scaffoldBackgroundColor, // background color
              elevation: 0, // Remove elevation
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(16.0), // Button border radius
                side: BorderSide(
                  color: Theme.of(context)
                      .primaryColor
                      .withOpacity(0.003), // Border color
                  width: 0.2, // Border width
                ),
              ),
              child: Icon(
                Icons.arrow_upward,
                size: textSize + 2, // Adjust the icon size as needed
                color: Theme.of(context)
                    .primaryColor
                    .withOpacity(0.6), // Icon color
              ),
            )
          : null,
      // (zee: scroll top) https://chat.openai.com/c/8f33ee5e-f847-4559-93f1-8869b74f52f9
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Directionality(
            textDirection:
                TextDirection.rtl, // Set the text direction to right-to-left
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 60,
                child: TextField(
                  // enableInteractiveSelection: false,
                  controller: _searchController,
                  onChanged: filterResults,
                  decoration: InputDecoration(
                    // labelText: "لێرە بگەڕێ",
                    // hintText: "لێرە بگەڕێ",
                    hintText: shuffledWords.isEmpty
                        ? ''
                        : shuffledWords[_shuffleCurrentIndex],
                    hintStyle: TextStyle(fontSize: textSize),
                    prefixIcon: Icon(Icons.search, size: textSize + 5),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(Icons.clear, size: textSize + 5),
                            onPressed: clearSearch,
                          )
                        : null,
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Directionality(
              textDirection:
                  TextDirection.rtl, // Set the text direction to right-to-left
              child: KurdishDictionary(
                words: filteredWords,
                scrollController: _scrollController,
                onKurdishFavourite: onKurdishFavourite,
                kurdishfavourites: kurdishfavourites,
                onTapWord: (wordsKurdish) {
                  if (wordsKurdish == "کوردی") {
                    saveToHistory(wordsKurdish);
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsKurdish == "کوردستان") {
                    saveToHistory(wordsKurdish);
                    Routemaster.of(context).push('/english-abacus');
                  }
                  if (wordsKurdish == "کوردس‌تان") {
                    saveToHistory(wordsKurdish);
                    Routemaster.of(context).push('/english-abacus');
                  }
                  // if (wordsKurdish == "DOPSUM") {
                  saveToHistory(wordsKurdish);
                  //   Routemaster.of(context).push('/kurdish-DOPSUM');
                  // }
                  // if (wordsKurdish == "DOPSUM") {
                  saveToHistory(wordsKurdish);
                  //   Routemaster.of(context).push('/kurdish-DOPSUM');
                  // }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KurdishDictionary extends StatelessWidget {
  final List<String> words;
  final Function(String) onTapWord;
  final ScrollController scrollController;
  final Function(String) onKurdishFavourite;
  final Set<String> kurdishfavourites;

  const KurdishDictionary({
    super.key,
    required this.words,
    required this.onTapWord,
    required this.scrollController,
    required this.onKurdishFavourite,
    required this.kurdishfavourites,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController, // Use the passed scroll controller
      itemCount: words.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileKurdish(
          wordsKurdish: words[index],
          onTap: () {
            onTapWord(words[index]);
          },
          onKurdishFavourite: () => onKurdishFavourite(
              words[index]),
          isKurdishFavouriteed: kurdishfavourites.contains(words[index]),
        );
      },
    );
  }
}

// class KurdishDictionary extends StatelessWidget {
//   final List<String> words;
//   final Function(String) onTapWord;

//   const KurdishDictionary({
//     super.key,
//     required this.words,
//     required this.onTapWord,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: words.length,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTileKurdish(
//           wordsKurdish: words[index],
//           onTap: () {
//             onTapWord(words[index]);
//           },
//         );
//       },
//     );
//   }
// }

class ListTileKurdish extends ConsumerWidget {
  final String wordsKurdish;
  final VoidCallback? onTap;
  final VoidCallback? onKurdishFavourite;
  final bool isKurdishFavouriteed;

  const ListTileKurdish({
    super.key,
    required this.wordsKurdish,
    this.onTap,
    this.onKurdishFavourite,
    this.isKurdishFavouriteed = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2;
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(
          wordsKurdish,
          style: TextStyle(
            fontSize: textSize, // Set your desired font size
          ),
        ),
        trailing: IconButton(
          icon: isKurdishFavouriteed
              ? Icon(Icons.favorite,
                  color: Theme.of(context).primaryColor.withOpacity(0.7))
              // color: Colors.red.shade300.withOpacity(0.99))
              : Icon(Icons.favorite_border,
                  color: Theme.of(context).primaryColor.withOpacity(0.7)),
          onPressed: () => onKurdishFavourite?.call(),
        ),
      ),
    );
  }
}

// class ListTileKurdish extends StatelessWidget {
//   final String wordsKurdish;
//   final VoidCallback? onTap;

//   const ListTileKurdish({
//     super.key,
//     required this.wordsKurdish,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final textSize = ref.watch(textSizeProvider) + 2;
//     return InkWell(
//       onTap: onTap,
//       child: ListTile(
//         key: key,
//         title: Text(wordsKurdish),
//         trailing: const Icon(Icons.arrow_forward),
//       ),
//     );
//   }
// }

class CardButton extends ConsumerWidget {
  final String label;
  final VoidCallback? onPressed;

  const CardButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2;
    return SizedBox(
      height: 50,
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: textSize),
            ),
          ),
        ),
      ),
    );
  }
}
