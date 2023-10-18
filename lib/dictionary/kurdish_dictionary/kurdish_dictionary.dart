import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';

// final GoRouter _router = GoRouter(
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/dictionarykurdish',
//       builder: (BuildContext context, GoRouterState state) {
//         return const DictionaryScreenKurdish();
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: 'kurdish/:aback',
//           builder: (BuildContext context, GoRouterState state) {
//             return EnglishEntryAback();
//           },
//         ),
//       ],
//     ),
//   ],
// );

class DictionaryScreenKurdish extends StatefulWidget {
  const DictionaryScreenKurdish({Key? key}) : super(key: key);

  @override
  State<DictionaryScreenKurdish> createState() =>
      _DictionaryScreenKurdishState();
}

class _DictionaryScreenKurdishState extends State<DictionaryScreenKurdish> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsKurdish = [
    "aback",
    "abacus",
  ];
  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allWordsKurdish);
  }

  void filterWords(String query) {
    setState(() {
      filteredWords = allWordsKurdish
          .where((word) => word.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    _searchController.clear();
    filterWords('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                  onChanged: filterWords,
                  decoration: InputDecoration(
                    labelText: 'لێرە بگەڕێ',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: clearSearch,
                    ),
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
              child: EnglishDictionary(
                words: filteredWords,
                onTapWord: (wordsKurdish) {
                  if (wordsKurdish == "aback") {
                    // Handle the onTap event for the word "dog" here.
                    // You can navigate to a different screen or perform any desired action.
                    // For example:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EnglishEntryAback(),
                      ),
                    );
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

class EnglishDictionary extends StatelessWidget {
  final List<String> words;
  final Function(String) onTapWord;

  const EnglishDictionary({
    Key? key,
    required this.words,
    required this.onTapWord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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

class ListTileKurdish extends StatelessWidget {
  final String wordsKurdish;
  final VoidCallback? onTap;

  const ListTileKurdish({
    Key? key,
    required this.wordsKurdish,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(wordsKurdish),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CardButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
