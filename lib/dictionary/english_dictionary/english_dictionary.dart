import 'package:flutter/material.dart';
import 'package:zeetionary/dictionary/english_dictionary/dopsum.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_a.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abacus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abandon.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abandoned.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abandonment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abashed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abatement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abattoir.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbess.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbey.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbot.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbreviate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbreviation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdicate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdication.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdomen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdominal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abduct.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abduction.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aberration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abhor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abhorrence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abhorrent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abide.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abiding.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_ability.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abject.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abjectly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_ablaze.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_able.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_able_bodied.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormality.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aboard.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abode.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abolish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abolition.dart';

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
    "abdomen",
    "abdominal",
    "abduct",
    "abduction",
    "aberration",
    "abet",
    "abhor",
    "abhorrence",
    "abhorrent",
    "abide",
    "abiding",
    "ability",
    "abject",
    "abjectly",
    "ablaze",
    "able",
    "able-bodied",
    "abnormal",
    "abnormality",
    "abnormally",
    "aboard",
    "abode",
    "abolish",
    "abolition",
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
                if (wordsEnglish == "abdomen") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabdomen(),
                    ),
                  );
                }
                if (wordsEnglish == "abdominal") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabdominal(),
                    ),
                  );
                }
                if (wordsEnglish == "abduct") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabduct(),
                    ),
                  );
                }
                if (wordsEnglish == "abduction") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabduction(),
                    ),
                  );
                }
                if (wordsEnglish == "aberration") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryaberration(),
                    ),
                  );
                }
                if (wordsEnglish == "abet") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabet(),
                    ),
                  );
                }
                if (wordsEnglish == "abhor") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabhor(),
                    ),
                  );
                }
                if (wordsEnglish == "abhorrence") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabhorrence(),
                    ),
                  );
                }
                if (wordsEnglish == "abhorrent") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabhorrent(),
                    ),
                  );
                }
                if (wordsEnglish == "abide") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabide(),
                    ),
                  );
                }
                if (wordsEnglish == "abiding") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabiding(),
                    ),
                  );
                }
                if (wordsEnglish == "ability") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryability(),
                    ),
                  );
                }
                if (wordsEnglish == "abject") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabject(),
                    ),
                  );
                }
                if (wordsEnglish == "abjectly") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabjectly(),
                    ),
                  );
                }
                if (wordsEnglish == "ablaze") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryablaze(),
                    ),
                  );
                }
                if (wordsEnglish == "able") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryable(),
                    ),
                  );
                }
                if (wordsEnglish == "able-bodied") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryablebodied(),
                    ),
                  );
                }
                if (wordsEnglish == "abnormal") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabnormal(),
                    ),
                  );
                }
                if (wordsEnglish == "abnormality") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabnormality(),
                    ),
                  );
                }
                if (wordsEnglish == "abnormally") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabnormally(),
                    ),
                  );
                }
                if (wordsEnglish == "aboard") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryaboard(),
                    ),
                  );
                }
                if (wordsEnglish == "abode") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabode(),
                    ),
                  );
                }
                if (wordsEnglish == "abolish") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabolish(),
                    ),
                  );
                }
                if (wordsEnglish == "abolition") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryabolition(),
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
