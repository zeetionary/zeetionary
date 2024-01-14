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
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allGrammarSubjects = [
    // "dopsum",
    "present simple",
    "present perfect",
    "past simple",
    "past perfect",
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

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
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
