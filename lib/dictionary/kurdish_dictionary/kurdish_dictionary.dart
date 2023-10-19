import 'package:flutter/material.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';
import 'package:routemaster/routemaster.dart';

class DictionaryScreenKurdish extends StatefulWidget {
  const DictionaryScreenKurdish({Key? key}) : super(key: key);

  @override
  State<DictionaryScreenKurdish> createState() =>
      _DictionaryScreenKurdishState();
}

class _DictionaryScreenKurdishState extends State<DictionaryScreenKurdish> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allWordsKurdish = [
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
    "abominable",
    "abominably",
    "aboriginal",
    "aborigine",
    "abort",
    "abortion",
    "abortive",
    "abound",
    "abound in",
    "abound with",
    "about",
    "about turn",
    "above",
    "the above",
    "above all",
    "above/below the fold",
    "above/beyond suspicion",
    "above yourself",
    "abrasion",
    "abrasive",
    "abreast",
    "abridge",
    "abridgement",
    "abroad",
    "abrupt",
    "abruptly",
    "abruptness",
    "abscess",
    "abscond",
    "abseil",
    "absence",
    "absent",
    "absentee",
    "absent-minded",
    "absolute",
    "absolutely",
    "absolute majority",
    "absolute zero",
    "absolve",
    "absorb",
    "absorbent",
    "absorption",
    "abstain",
    "abstemious",
    "abstention",
    "abstinence",
    "abstract",
    "absurd",
    "absurdity",
    "absurdly",
    "abundance",
    "abundant",
    "abundantly",
    "abuse",
    "abusive",
    "abysmal",
    "abysmally",
    "abyss",
    "academic",
    "academically",
    "academy",
    "accede",
    "accelerate",
    "acceleration",
    "accelerator",
    "accent",
    "accentuate",
    "accept",
    "acceptable",
    "acceptance",
    "access",
    "accessible",
    "accession",
    "accessory",
    "accident",
    "accidental",
    "accidentally",
    "acclaim",
    "acclimatize",
    "accolade",
    "accommodate",
    "accommodating",
    "accommodation",
    "accompaniment",
    "accompanist",
    "accompany",
    "accomplice",
    "accomplish",
    "accomplished",
    "accomplishment",
    "accord",
    "accordingly",
    "according to",
    "accordion",
    "accost",
    "account",
    "account for",
    "accountable",
    "accountancy",
    "accountant",
    "accredited",
    "accreditation",
    "accrue",
    "accumulate",
    "accumulation",
    "accuracy",
    "accurate",
    "accurately",
    "accusation",
    "accuse",
    "the accused",
    "accuser",
    "accustom to",
    "accustomed",
    "ace",
    "ache",
    "achieve",
    "achievement",
    "Achilles' heel",
    "acid",
    "acid rain",
    "acid test",
    "acknowledge",
    "acknowledgement",
    "acne",
    "acorn",
    "acoustic",
    "acoustics",
    "acquaint",
    "acquaintance",
    "acquainted",
    "acquiesce",
    "acquiescence",
    "acquire",
    "acquisition",
    "acquisitive",
    "acquit",
    "acquittal",
    "acre",
    "acreage",
    "acrid",
    "acrimonious",
    "acrimony",
    "acrobat",
    "acrobatic",
    "acrobatics",
    "acronym",
    "across",
    "acrylic",
    "act",
    "action",
    "activate",
    "active",
    "actively",
    "activist",
    "activity",
    "actor",
    "actress",
    "actual",
    "actually",
    "acumen",
    "acupuncture",
    "acute",
    "acute accent",
    "acute angle",
    "acutely",
    "acuteness",
    "ad",
    "adamant",
    "Adam's apple",
    "adapt",
    "adaptable",
    "adaptation",
    "adaptor",
    "add",
    "adder",
    "addict",
    "addicted",
    "addiction",
    "addictive",
    "addition",
    "additional",
    "additionally",
    "additive",
    "address",
    "adept",
    "adequate",
    "adequately",
    "adhere",
    "adhere to",
    "adherence",
    "adherent",
    "adhesion",
    "adhesive",
    "ad hoc",
    "adjacent",
    "adjectival",
    "adjective",
    "adjoin",
    "adjourn",
    "adjournment",
    "adjudicate",
    "adjudication",
    "adjudicator",
    "adjunct",
    "adjust",
    "adjustable",
    "adjustment",
    "ad lib",
    "administer",
    "administration",
    "administrative",
    "administrator",
    "admirable",
    "admirably",
    "admiral",
    "admiration",
    "admire",
    "admirer",
    "admiring",
    "admissible",
    "admission",
    "admit",
    "admittance",
    "admittedly",
    "admonish",
    "ad nauseam",
    "adolescence",
    "adolescent",
    "adopt",
    "adoption",
    "adoptive",
    "adorable",
    "adoration",
    "adore",
    "adorn",
    "adornment",
    "adrenaline",
    "adrift",
    "adulation",
    "adult",
    "adulterate",
    "adulterer",
    "adulterous",
    "adultery",
    "adulthood",
    "advance",
    "advanced",
    "advancement",
    "advantage",
    "advantageous",
    "advent",
    "adventure",
    "adventurer",
    "adventurous",
    "adverb",
    "adverbial",
    "adversary",
    "adverse",
    "adversely",
    "adversity",
    "advert",
    "advertise",
    "advertisement",
    "advertiser",
    "advertising",
    "advice",
    "advisable",
    "advise",
    "adviser",
    "advisory",
    "advocate",
    "aerial",
    "aerobatics",
    "aerobics",
    "aerodynamic",
    "aerodynamics",
    "aeronautics",
    "aeroplane",
    "aerosol",
    "aerospace",
    "aesthetic",
    "aesthetically",
    "affable",
    "affably",
    "affair",
    "affect",
    "affectation",
    "affected",
    "affection",
    "affectionate",
    "affectionately",
    "affidavit",
    "affiliate",
    "affiliation",
    "affinity",
    "affirm",
    "affirmation",
    "affirmative",
    "affix",
    "afflict",
    "affliction",
    "affluence",
    "affluent",
    "afford",
    "affront",
    "afloat",
    "afoot",
    "aforementioned",
    "afraid",
    "afresh",
    "after",
    "aftereffect",
    "aftermath",
    "afternoon",
    "afterthought",
    "afterwards",
    "again",
    "against",
    "age",
    "aged",
    "age group",
    "ageing",
    "ageism",
    "ageist",
    "age limit",
    "agency",
    "agenda",
    "agent",
    "age-old",
    "aggravate",
    "aggravation",
    "aggregate",
    "aggression",
    "aggressive",
    "aggressively",
    "aggressiveness",
    "aggressor",
    "aggrieved",
    "aghast",
    "agile",
    "agility",
    "aging",
    "agitate",
    "agitation",
    "dopsum",
    "dopsum",
    "dopsum",
    "dopsum",
    "come of age",
    "far afield",
    "from afar",
    "under age",
    "کوردی",
    "کوردستان",
  ];

  // void navigateToCreateCommunity(BuildContext context) {
  //   Routemaster.of(context).push('/english-aback');
  // }

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
                TextDirection.ltr, // Set the text direction to right-to-left
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 60,
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
            ),
          ),
          Expanded(
            child: Directionality(
              textDirection:
                  TextDirection.ltr, // Set the text direction to right-to-left
              child: EnglishDictionary(
                words: filteredWords,
                onTapWord: (wordsKurdish) {
                  if (wordsKurdish == "dopsum") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsKurdish == "dopsum") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsKurdish == "a") {
                    Routemaster.of(context).push('/english-a');
                  }
                  if (wordsKurdish == "aback") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsKurdish == "abacus") {
                    Routemaster.of(context).push('/english-abacus');
                  }
                  if (wordsKurdish == "abandon") {
                    Routemaster.of(context).push('/english-abandon');
                  }
                  if (wordsKurdish == "abandoned") {
                    Routemaster.of(context).push('/english-abandoned');
                  }
                  if (wordsKurdish == "abandonment") {
                    Routemaster.of(context).push('/english-abandonment');
                  }
                  if (wordsKurdish == "abashed") {
                    Routemaster.of(context).push('/english-abashed');
                  }
                  if (wordsKurdish == "abate") {
                    Routemaster.of(context).push('/english-abate');
                  }
                  if (wordsKurdish == "abatement") {
                    Routemaster.of(context).push('/english-abatement');
                  }
                  if (wordsKurdish == "abattoir") {
                    Routemaster.of(context).push('/english-abattoir');
                  }
                  if (wordsKurdish == "abbess") {
                    Routemaster.of(context).push('/english-abbess');
                  }
                  if (wordsKurdish == "abbey") {
                    Routemaster.of(context).push('/english-abbey');
                  }
                  if (wordsKurdish == "abbot") {
                    Routemaster.of(context).push('/english-abbot');
                  }
                  if (wordsKurdish == "abbreviate") {
                    Routemaster.of(context).push('/english-abbreviate');
                  }
                  if (wordsKurdish == "abbreviation") {
                    Routemaster.of(context).push('/english-abbreviation');
                  }
                  if (wordsKurdish == "abdicate") {
                    Routemaster.of(context).push('/english-abdicate');
                  }
                  if (wordsKurdish == "abdication") {
                    Routemaster.of(context).push('/english-abdication');
                  }
                  if (wordsKurdish == "abdomen") {
                    Routemaster.of(context).push('/english-abdomen');
                  }
                  if (wordsKurdish == "abdominal") {
                    Routemaster.of(context).push('/english-abdominal');
                  }
                  if (wordsKurdish == "abduct") {
                    Routemaster.of(context).push('/english-abduct');
                  }
                  if (wordsKurdish == "abduction") {
                    Routemaster.of(context).push('/english-abduction');
                  }
                  if (wordsKurdish == "aberration") {
                    Routemaster.of(context).push('/english-aberration');
                  }
                  if (wordsKurdish == "abet") {
                    Routemaster.of(context).push('/english-abet');
                  }
                  if (wordsKurdish == "abhor") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsKurdish == "abhorrence") {
                    Routemaster.of(context).push('/english-abhorrence');
                  }
                  if (wordsKurdish == "abhorrent") {
                    Routemaster.of(context).push('/english-abhorrent');
                  }
                  if (wordsKurdish == "abide") {
                    Routemaster.of(context).push('/english-abide');
                  }
                  if (wordsKurdish == "abiding") {
                    Routemaster.of(context).push('/english-abiding');
                  }
                  if (wordsKurdish == "ability") {
                    Routemaster.of(context).push('/english-ability');
                  }
                  if (wordsKurdish == "abject") {
                    Routemaster.of(context).push('/english-abject');
                  }
                  if (wordsKurdish == "abjectly") {
                    Routemaster.of(context).push('/english-abjectly');
                  }
                  if (wordsKurdish == "ablaze") {
                    Routemaster.of(context).push('/english-ablaze');
                  }
                  if (wordsKurdish == "able") {
                    Routemaster.of(context).push('/english-able');
                  }
                  if (wordsKurdish == "able-bodied") {
                    Routemaster.of(context).push('/english-able-bodied');
                  }
                  if (wordsKurdish == "abnormal") {
                    Routemaster.of(context).push('/english-abnormal');
                  }
                  if (wordsKurdish == "abnormality") {
                    Routemaster.of(context).push('/english-abnormality');
                  }
                  if (wordsKurdish == "abnormally") {
                    Routemaster.of(context).push('/english-abnormally');
                  }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
                  // }
                  // if (wordsKurdish == "dopsum") {
                  //   Routemaster.of(context).push('/english-aback');
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
