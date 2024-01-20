import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class DictionaryScreenKurdish extends StatefulWidget {
  const DictionaryScreenKurdish({super.key});

  @override
  State<DictionaryScreenKurdish> createState() =>
      _DictionaryScreenKurdishState();
}

class _DictionaryScreenKurdishState extends State<DictionaryScreenKurdish> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsKurdish = [
    "کوردی",
    "کوردستان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
    "کوردس‌تان",
  ];

  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  final ScrollController _scrollController = ScrollController();
  bool showScrollToTop = false;

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
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void filterResults(String query) {
    // https://chat.openai.com/c/71511b96-b16b-470a-9c54-fba236f23628
    setState(() {
      if (query.isEmpty) {
        // If the query is empty, show all words
        filteredWords = List.from(allWordsKurdish);
      } else {
        // Create a map to store word frequencies
        Map<String, int> wordFrequencies = {};

        // Update frequencies for exact matches
        for (String word in allWordsKurdish) {
          if (word.toLowerCase() == query.toLowerCase()) {
            wordFrequencies[word] = (wordFrequencies[word] ?? 0) +
                2; // Higher weight for exact matches
          }
        }

        // Update frequencies for relevant matches (contains the query)
        for (String word in allWordsKurdish) {
          if (word.toLowerCase().contains(query.toLowerCase())) {
            wordFrequencies[word] = (wordFrequencies[word] ?? 0) + 1;
          }
        }

        // Fuzzy search for approximate matches
        List<String> fuzzyMatches = allWordsKurdish
            .where(
                (word) => _fuzzyMatch(word.toLowerCase(), query.toLowerCase()))
            .toList();

        // Update frequencies for fuzzy matches
        for (String word in fuzzyMatches) {
          wordFrequencies[word] = (wordFrequencies[word] ?? 0) + 1;
        }

        // Combine and prioritize by relevancy, with exact matches at the top
        filteredWords = wordFrequencies.keys.toList()
          ..sort((a, b) {
            bool exactMatchA = a.toLowerCase() == query.toLowerCase();
            bool exactMatchB = b.toLowerCase() == query.toLowerCase();

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
                bool containsExactA =
                    a.toLowerCase().contains(query.toLowerCase());
                bool containsExactB =
                    b.toLowerCase().contains(query.toLowerCase());

                if (containsExactA && !containsExactB) {
                  return -1; // A contains the exact match, so it comes next.
                } else if (!containsExactA && containsExactB) {
                  return 1; // B contains the exact match, so it comes next.
                }
              }

              return frequencyComparison;
            }
          });
      }
    });
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
                size: 16.0, // Adjust the icon size as needed
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
                  controller: _searchController,
                  onChanged: filterResults,
                  decoration: InputDecoration(
                    labelText: "لێرە بگەڕێ",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
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

  const KurdishDictionary({
    super.key,
    required this.words,
    required this.onTapWord,
    required this.scrollController,
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

  const ListTileKurdish({
    super.key,
    required this.wordsKurdish,
    this.onTap,
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
        trailing: const Icon(Icons.arrow_forward),
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
