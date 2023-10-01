import 'package:flutter/material.dart';
import 'package:zeetionary/dictionary/english_dictionary/dopsum.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_a.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_aback.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abacus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abandon.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abandoned.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abandonment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abashed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abatement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abattoir.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abbess.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abbey.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abbot.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abbreviate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abbreviation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abdicate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/en_entry_abdication.dart';

class DictionaryScreenEnglish extends StatefulWidget {
  const DictionaryScreenEnglish({Key? key}) : super(key: key);

  @override
  State<DictionaryScreenEnglish> createState() =>
      _DictionaryScreenEnglishState();
}

class _DictionaryScreenEnglishState extends State<DictionaryScreenEnglish> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsEnglish = [
    "dopsum",
    "a",
    "aback",
    "abacus",
    "abandon",
    "abandoned",
    "abandonment",
    "abashed",
    "abate",
    "abatement",
    "abattoir",
    "abbess",
    "abbey",
    "abbot",
    "abbreviate",
    "abbreviation",
    "abdicate",
    "abdication",
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
                if (wordsEnglish == "dopsum") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryDopsum(),
                    ),
                  );
                }
                if (wordsEnglish == "a") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryA(),
                    ),
                  );
                }
                if (wordsEnglish == "aback") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAback(),
                    ),
                  );
                }
                if (wordsEnglish == "abacus") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbacus(),
                    ),
                  );
                }
                if (wordsEnglish == "abandon") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbandon(),
                    ),
                  );
                }
                if (wordsEnglish == "abandoned") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbandoned(),
                    ),
                  );
                }
                if (wordsEnglish == "abandonment") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabandonment(),
                    ),
                  );
                }
                if (wordsEnglish == "abashed") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbashed(),
                    ),
                  );
                }
                if (wordsEnglish == "abate") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbate(),
                    ),
                  );
                }
                if (wordsEnglish == "abatement") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabatement(),
                    ),
                  );
                }
                if (wordsEnglish == "abattoir") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbattoir(),
                    ),
                  );
                }
                if (wordsEnglish == "abbess") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbbess(),
                    ),
                  );
                }
                if (wordsEnglish == "abbey") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabbey(),
                    ),
                  );
                }
                if (wordsEnglish == "abbot") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabbot(),
                    ),
                  );
                }
                if (wordsEnglish == "abbreviate") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryAbbreviate(),
                    ),
                  );
                }
                if (wordsEnglish == "abbreviation") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabbreviation(),
                    ),
                  );
                }
                if (wordsEnglish == "abdicate") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabdicate(),
                    ),
                  );
                }
                if (wordsEnglish == "abdication") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabdication(),
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
