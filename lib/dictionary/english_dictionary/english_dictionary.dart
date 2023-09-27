import 'package:flutter/material.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letter_a.dart';

class DictionaryScreenEnglish extends StatefulWidget {
  const DictionaryScreenEnglish({Key? key}) : super(key: key);

  @override
  State<DictionaryScreenEnglish> createState() =>
      _DictionaryScreenEnglishState();
}

class _DictionaryScreenEnglishState extends State<DictionaryScreenEnglish> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsEnglish = [
    "aardvark",
    "english one",
    "english two",
  ];
  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allWordsEnglish);
  }

  void filterWords(String query) {
    setState(() {
      filteredWords = allWordsEnglish
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: filterWords,
              decoration: InputDecoration(
                labelText: 'Search here',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: clearSearch,
                ),
                border: const OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: EnglishDictionary(
              words: filteredWords,
              onTapWord: (wordsEnglish) {
                if (wordsEnglish == "aardvark") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EnglishEntryAardvark(),
                    ),
                  );
                }
                if (wordsEnglish == "english one") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EnglishEntryAardvark(),
                    ),
                  );
                }
              },
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
        return ListTileEnglish(
          wordsEnglish: words[index],
          onTap: () {
            onTapWord(words[index]);
          },
        );
      },
    );
  }
}

class ListTileEnglish extends StatelessWidget {
  final String wordsEnglish;
  final VoidCallback? onTap;

  const ListTileEnglish({
    Key? key,
    required this.wordsEnglish,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(wordsEnglish),
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
