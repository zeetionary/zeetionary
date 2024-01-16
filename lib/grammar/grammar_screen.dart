import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// import 'package:zeetionary/constants.dart';

class GrammarScreen extends StatefulWidget {
  const GrammarScreen({super.key});

  @override
  State<GrammarScreen> createState() => _GrammarScreenState();
}

class _GrammarScreenState extends State<GrammarScreen> {
  // (zee: adde tags) https://chat.openai.com/c/488e70a6-e67b-418c-9f94-fc78cdff92e4
  final Map<String, List<String>> filterItems = {
    "present": ["present simple", "present perfect"],
    "past": ["past simple", "past perfect"],
  };

  String? selectedFilter; // Nullable to represent no selection

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allGrammarSubjects = [
    // "dopsum",
    "present simple",
    "present perfect",
    "past simple",
    "past perfect",
    "test",
  ];

  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allGrammarSubjects);
  }

  // void filterResults(String query) {
  //   setState(() {
  //     filteredWords = allGrammarSubjects
  //         .where((word) => word.toLowerCase().contains(query.toLowerCase()))
  //         .toList();
  //   });
  // }

  void filterResults(String query) {
    setState(() {
      if (query.isEmpty) {
        // If the query is empty, show all words
        filteredWords = List.from(allGrammarSubjects);
      } else {
        // Sort words to prioritize exact matches first
        filteredWords = allGrammarSubjects
            .where((word) => word.toLowerCase().contains(query.toLowerCase()))
            .toList();

        filteredWords.sort((a, b) {
          bool exactMatchA = a.toLowerCase() == query.toLowerCase();
          bool exactMatchB = b.toLowerCase() == query.toLowerCase();

          if (exactMatchA && !exactMatchB) {
            return -1; // A is an exact match, so it comes first.
          } else if (!exactMatchA && exactMatchB) {
            return 1; // B is an exact match, so it comes first.
          } else {
            // If both are exact matches or neither are, sort them based on lexicographic order.
            return a.toLowerCase().compareTo(b.toLowerCase());
          }
        });
      }
    });
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
    return Scaffold(
      // appBar: const ZeetionaryAppbar(),
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: _searchController,
                  onChanged: filterResults,
                  decoration: InputDecoration(
                    labelText: "Search here",
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
          // Tags for filtering
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var filter in filterItems.keys) _buildFilterTag(filter),
            ],
          ),
          Expanded(
            child: Directionality(
              textDirection:
                  TextDirection.ltr, // Set the text direction to right-to-left
              child: EnglishGrammar(
                words: filteredWords,
                onTapWord: (allGrammarSubjects) {
                  if (allGrammarSubjects == "present simple") {
                    Routemaster.of(context).push("/english/grammar/aback");
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterTag(String filter) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (selectedFilter == filter) {
                // If the selected tag is tapped again, unselect it
                selectedFilter = null;
                filteredWords = List.from(allGrammarSubjects);
              } else {
                // Otherwise, select the tag and update the list
                selectedFilter = filter;
                _updateFilteredWords();
              }
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: selectedFilter == filter
                ? Theme.of(context).primaryColor.withOpacity(0.005)
                : Theme.of(context).primaryColor.withOpacity(0.005),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            side: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Text(
            filter.toUpperCase(),
            style: TextStyle(
              color: selectedFilter == filter
                  ? Theme.of(context).primaryColor.withOpacity(0.99)
                  : Theme.of(context).primaryColor.withOpacity(0.50),
            ),
          ),
        ),
      ),
    );
  }

  void _updateFilteredWords() {
    setState(() {
      if (_searchController.text.isNotEmpty) {
        // If there's a search query, filter based on the query
        filteredWords = filterItems[selectedFilter!]!
            .where((word) => word
                .toLowerCase()
                .contains(_searchController.text.toLowerCase()))
            .toList();
      } else {
        // If no search query, show all items for the selected filter
        filteredWords = List.from(filterItems[selectedFilter!]!);
      }
    });
  }
}

class EnglishGrammar extends StatelessWidget {
  final List<String> words;
  final Function(String) onTapWord;

  const EnglishGrammar({
    super.key,
    required this.words,
    required this.onTapWord,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: words.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileGrammar(
          allGrammarSubjects: words[index],
          onTap: () {
            onTapWord(words[index]);
          },
        );
      },
    );
  }
}

class ListTileGrammar extends ConsumerWidget {
  final String allGrammarSubjects;
  final VoidCallback? onTap;

  const ListTileGrammar({
    super.key,
    required this.allGrammarSubjects,
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
          allGrammarSubjects,
          style: TextStyle(
            fontSize: textSize, // Set your desired font size
          ),
        ),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

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
