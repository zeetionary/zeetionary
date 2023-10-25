import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class DictionaryScreenKurdish extends StatefulWidget {
  const DictionaryScreenKurdish({super.key});

  @override
  State<DictionaryScreenKurdish> createState() =>
      _DictionaryScreenKurdishState();
}

class _DictionaryScreenKurdishState extends State<DictionaryScreenKurdish> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allwordsKurdish = [
    "کوردی",
    "کوردستان",
  ];

  List<String> filteredWords = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredWords = List.from(allwordsKurdish);
  }

  void filterWords(String query) {
    setState(() {
      filteredWords = allwordsKurdish
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
              child: KurdishDictionary(
                words: filteredWords,
                onTapWord: (wordsKurdish) {
                  if (wordsKurdish == "کوردی") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsKurdish == "کوردستان") {
                    Routemaster.of(context).push('/english-abacus');
                  }
                  // if (wordsKurdish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsKurdish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
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

class KurdishDictionary extends StatelessWidget {
  final List<String> words;
  final Function(String) onTapWord;

  const KurdishDictionary({
    super.key,
    required this.words,
    required this.onTapWord,
  });

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
    super.key,
    required this.wordsKurdish,
    this.onTap,
  });

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
    super.key,
    required this.label,
    this.onPressed,
  });

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
