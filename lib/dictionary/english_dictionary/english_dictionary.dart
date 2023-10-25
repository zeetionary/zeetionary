import 'package:flutter/material.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';
import 'package:routemaster/routemaster.dart';

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
    "agitator",
    "aglow",
    "AGM",
    "agnostic",
    "agonized",
    "agonizing",
    "agony",
    "agony aunt",
    "agoraphobia",
    "agoraphobic",
    "agrarian",
    "agree",
    "agreeable",
    "agreeably",
    "agreement",
    "agricultural",
    "agriculture",
    "agritourism",
    "agrochemical",
    "agronomist",
    "agronomy",
    "aground",
    "ahead",
    "ahead of",
    "AI",
    "aid",
    "aide",
    "AIDS",
    "ailing",
    "ailment",
    "aim",
    "aimless",
    "aimlessly",
    "ain't",
    "air",
    "airbag",
    "airborne",
    "air-conditioned",
    "air conditioner",
    "aircraft",
    "aircraft carrier",
    "airfield",
    "air force",
    "air hostess",
    "airily",
    "airing",
    "airing cupboard",
    "airless",
    "airlift",
    "airline",
    "airliner",
    "airmail",
    "air marshal",
    "airplane",
    "airport",
    "air raid",
    "airship",
    "airspace",
    "airstrip",
    "air terminal",
    "airtight",
    "air-to-air",
    "air traffic controller",
    "airway",
    "airworthy",
    "airy",
    "aisle",
    "ajar",
    "akin",
    "à la carte",
    "alacrity",
    "alarm",
    "alarm clock",
    "alarming",
    "alas",
    "albatross",
    "albeit",
    "albino",
    "album",
    "alcohol",
    "alcoholic",
    "alcoholism",
    "alcove",
    "ale",
    "alert",
    "dopsum",
    "dopsum",
    "dopsum",
    "come of age",
    "far afield",
    "from afar",
    "under age",
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
                onTapWord: (wordsEnglish) {
                  if (wordsEnglish == "dopsum") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsEnglish == "dopsum") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsEnglish == "a") {
                    Routemaster.of(context).push('/english-a');
                  }
                  if (wordsEnglish == "aback") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsEnglish == "abacus") {
                    Routemaster.of(context).push('/english-abacus');
                  }
                  if (wordsEnglish == "abandon") {
                    Routemaster.of(context).push('/english-abandon');
                  }
                  if (wordsEnglish == "abandoned") {
                    Routemaster.of(context).push('/english-abandoned');
                  }
                  if (wordsEnglish == "abandonment") {
                    Routemaster.of(context).push('/english-abandonment');
                  }
                  if (wordsEnglish == "abashed") {
                    Routemaster.of(context).push('/english-abashed');
                  }
                  if (wordsEnglish == "abate") {
                    Routemaster.of(context).push('/english-abate');
                  }
                  if (wordsEnglish == "abatement") {
                    Routemaster.of(context).push('/english-abatement');
                  }
                  if (wordsEnglish == "abattoir") {
                    Routemaster.of(context).push('/english-abattoir');
                  }
                  if (wordsEnglish == "abbess") {
                    Routemaster.of(context).push('/english-abbess');
                  }
                  if (wordsEnglish == "abbey") {
                    Routemaster.of(context).push('/english-abbey');
                  }
                  if (wordsEnglish == "abbot") {
                    Routemaster.of(context).push('/english-abbot');
                  }
                  if (wordsEnglish == "abbreviate") {
                    Routemaster.of(context).push('/english-abbreviate');
                  }
                  if (wordsEnglish == "abbreviation") {
                    Routemaster.of(context).push('/english-abbreviation');
                  }
                  if (wordsEnglish == "abdicate") {
                    Routemaster.of(context).push('/english-abdicate');
                  }
                  if (wordsEnglish == "abdication") {
                    Routemaster.of(context).push('/english-abdication');
                  }
                  if (wordsEnglish == "abdomen") {
                    Routemaster.of(context).push('/english-abdomen');
                  }
                  if (wordsEnglish == "abdominal") {
                    Routemaster.of(context).push('/english-abdominal');
                  }
                  if (wordsEnglish == "abduct") {
                    Routemaster.of(context).push('/english-abduct');
                  }
                  if (wordsEnglish == "abduction") {
                    Routemaster.of(context).push('/english-abduction');
                  }
                  if (wordsEnglish == "aberration") {
                    Routemaster.of(context).push('/english-aberration');
                  }
                  if (wordsEnglish == "abet") {
                    Routemaster.of(context).push('/english-abet');
                  }
                  if (wordsEnglish == "abhor") {
                    Routemaster.of(context).push('/english-aback');
                  }
                  if (wordsEnglish == "abhorrence") {
                    Routemaster.of(context).push('/english-abhorrence');
                  }
                  if (wordsEnglish == "abhorrent") {
                    Routemaster.of(context).push('/english-abhorrent');
                  }
                  if (wordsEnglish == "abide") {
                    Routemaster.of(context).push('/english-abide');
                  }
                  if (wordsEnglish == "abiding") {
                    Routemaster.of(context).push('/english-abiding');
                  }
                  if (wordsEnglish == "ability") {
                    Routemaster.of(context).push('/english-ability');
                  }
                  if (wordsEnglish == "abject") {
                    Routemaster.of(context).push('/english-abject');
                  }
                  if (wordsEnglish == "abjectly") {
                    Routemaster.of(context).push('/english-abjectly');
                  }
                  if (wordsEnglish == "ablaze") {
                    Routemaster.of(context).push('/english-ablaze');
                  }
                  if (wordsEnglish == "able") {
                    Routemaster.of(context).push('/english-able');
                  }
                  if (wordsEnglish == "able-bodied") {
                    Routemaster.of(context).push('/english-able-bodied');
                  }
                  if (wordsEnglish == "abnormal") {
                    Routemaster.of(context).push('/english-abnormal');
                  }
                  if (wordsEnglish == "abnormality") {
                    Routemaster.of(context).push('/english-abnormality');
                  }
                  if (wordsEnglish == "abnormally") {
                    Routemaster.of(context).push('/english-abnormally');
                  }
                  if (wordsEnglish == "aboard") {
                    Routemaster.of(context).push('/english-aboard');
                  }
                  if (wordsEnglish == "abode") {
                    Routemaster.of(context).push('/english-abode');
                  }
                  if (wordsEnglish == "abolish") {
                    Routemaster.of(context).push('/english-abolish');
                  }
                  if (wordsEnglish == "abolition") {
                    Routemaster.of(context).push('/english-abolition');
                  }
                  if (wordsEnglish == "abominable") {
                    Routemaster.of(context).push('/english-abominable');
                  }
                  if (wordsEnglish == "abominably") {
                    Routemaster.of(context).push('/english-abominably');
                  }
                  if (wordsEnglish == "aboriginal") {
                    Routemaster.of(context).push('/english-aboriginal');
                  }
                  if (wordsEnglish == "aborigine") {
                    Routemaster.of(context).push('/english-aborigine');
                  }
                  if (wordsEnglish == "abort") {
                    Routemaster.of(context).push('/english-abort');
                  }
                  if (wordsEnglish == "abortion") {
                    Routemaster.of(context).push('/english-abortion');
                  }
                  if (wordsEnglish == "abortive") {
                    Routemaster.of(context).push('/english-abortive');
                  }
                  if (wordsEnglish == "abound") {
                    Routemaster.of(context).push('/english-abound');
                  }
                  if (wordsEnglish == "abound in") {
                    Routemaster.of(context).push('/english-abound-in');
                  }
                  if (wordsEnglish == "abound with") {
                    Routemaster.of(context).push('/english-abound-with');
                  }
                  if (wordsEnglish == "about") {
                    Routemaster.of(context).push('/english-about');
                  }
                  if (wordsEnglish == "about turn") {
                    Routemaster.of(context).push('/english-about-turn');
                  }
                  if (wordsEnglish == "above") {
                    Routemaster.of(context).push('/english-above');
                  }
                  if (wordsEnglish == "the above") {
                    Routemaster.of(context).push('/english-the-above');
                  }
                  if (wordsEnglish == "above all") {
                    Routemaster.of(context).push('/english-above-all');
                  }
                  if (wordsEnglish == "above/below the fold") {
                    Routemaster.of(context)
                        .push('/english-above-below-the-fold');
                  }
                  if (wordsEnglish == "above/beyond suspicion") {
                    Routemaster.of(context)
                        .push("/english-above-beyond-suspicion");
                  }
                  if (wordsEnglish == "above yourself") {
                    Routemaster.of(context).push('/english-above-yourself');
                  }
                  if (wordsEnglish == "abrasion") {
                    Routemaster.of(context).push('/english-abrasion');
                  }
                  if (wordsEnglish == "abrasive") {
                    Routemaster.of(context).push('/english-abrasive');
                  }
                  if (wordsEnglish == "abreast") {
                    Routemaster.of(context).push('/english-abreast');
                  }
                  if (wordsEnglish == "abridge") {
                    Routemaster.of(context).push('/english-abridge');
                  }
                  if (wordsEnglish == "abridgement") {
                    Routemaster.of(context).push('/english-abridgement');
                  }
                  if (wordsEnglish == "abridge") {
                    Routemaster.of(context).push('/english-abridge');
                  }
                  if (wordsEnglish == "abroad") {
                    Routemaster.of(context).push('/english-abroad');
                  }
                  if (wordsEnglish == "abrupt") {
                    Routemaster.of(context).push('/english-abrupt');
                  }
                  if (wordsEnglish == "abruptly") {
                    Routemaster.of(context).push('/english-abruptly');
                  }
                  if (wordsEnglish == "abruptness") {
                    Routemaster.of(context).push('/english-abruptness');
                  }
                  if (wordsEnglish == "abscess") {
                    Routemaster.of(context).push('/english-abscess');
                  }
                  if (wordsEnglish == "abscond") {
                    Routemaster.of(context).push('/english-abscond');
                  }
                  if (wordsEnglish == "abseil") {
                    Routemaster.of(context).push('/english-abseil');
                  }
                  if (wordsEnglish == "absence") {
                    Routemaster.of(context).push('/english-absence');
                  }
                  if (wordsEnglish == "absent") {
                    Routemaster.of(context).push('/english-absent');
                  }
                  if (wordsEnglish == "absentee") {
                    Routemaster.of(context).push('/english-absentee');
                  }
                  if (wordsEnglish == "absent-minded") {
                    Routemaster.of(context).push('/english-absent-minded');
                  }
                  if (wordsEnglish == "absolute") {
                    Routemaster.of(context).push('/english-absolute');
                  }
                  if (wordsEnglish == "absolutely") {
                    Routemaster.of(context).push('/english-absolutely');
                  }
                  if (wordsEnglish == "absolute majority") {
                    Routemaster.of(context).push('/english-absolute-majority');
                  }
                  if (wordsEnglish == "absolute zero") {
                    Routemaster.of(context).push('/english-absolute-zero');
                  }
                  if (wordsEnglish == "absolve") {
                    Routemaster.of(context).push('/english-absolve');
                  }
                  if (wordsEnglish == "absorb") {
                    Routemaster.of(context).push('/english-absorb');
                  }
                  if (wordsEnglish == "absorbent") {
                    Routemaster.of(context).push('/english-absorbent');
                  }
                  if (wordsEnglish == "absorption") {
                    Routemaster.of(context).push('/english-absorption');
                  }
                  if (wordsEnglish == "abstain") {
                    Routemaster.of(context).push('/english-abstain');
                  }
                  if (wordsEnglish == "abstemious") {
                    Routemaster.of(context).push('/english-abstemious');
                  }
                  if (wordsEnglish == "abstention") {
                    Routemaster.of(context).push('/english-abstention');
                  }
                  if (wordsEnglish == "abstinence") {
                    Routemaster.of(context).push('/english-abstinence');
                  }
                  if (wordsEnglish == "abstract") {
                    Routemaster.of(context).push('/english-abstract');
                  }
                  if (wordsEnglish == "absurd") {
                    Routemaster.of(context).push('/english-absurd');
                  }
                  if (wordsEnglish == "absurdity") {
                    Routemaster.of(context).push('/english-absurdity');
                  }
                  if (wordsEnglish == "absurdly") {
                    Routemaster.of(context).push('/english-absurdly');
                  }
                  if (wordsEnglish == "abundance") {
                    Routemaster.of(context).push('/english-abundance');
                  }
                  if (wordsEnglish == "abundant") {
                    Routemaster.of(context).push('/english-abundant');
                  }
                  if (wordsEnglish == "abundantly") {
                    Routemaster.of(context).push('/english-abundantly');
                  }
                  if (wordsEnglish == "abuse") {
                    Routemaster.of(context).push('/english-abuse');
                  }
                  if (wordsEnglish == "abusive") {
                    Routemaster.of(context).push('/english-abusive');
                  }
                  if (wordsEnglish == "abysmal") {
                    Routemaster.of(context).push('/english-abysmal');
                  }
                  if (wordsEnglish == "abysmally") {
                    Routemaster.of(context).push('/english-abysmally');
                  }
                  if (wordsEnglish == "abyss") {
                    Routemaster.of(context).push('/english-abyss');
                  }
                  if (wordsEnglish == "academic") {
                    Routemaster.of(context).push('/english-academic');
                  }
                  if (wordsEnglish == "academically") {
                    Routemaster.of(context).push('/english-academically');
                  }
                  if (wordsEnglish == "academy") {
                    Routemaster.of(context).push('/english-academy');
                  }
                  if (wordsEnglish == "accede") {
                    Routemaster.of(context).push('/english-accede');
                  }
                  if (wordsEnglish == "accelerate") {
                    Routemaster.of(context).push('/english-accelerate');
                  }
                  if (wordsEnglish == "acceleration") {
                    Routemaster.of(context).push('/english-acceleration');
                  }
                  if (wordsEnglish == "accelerator") {
                    Routemaster.of(context).push('/english-accelerator');
                  }
                  if (wordsEnglish == "accent") {
                    Routemaster.of(context).push('/english-accent');
                  }
                  if (wordsEnglish == "accentuate") {
                    Routemaster.of(context).push('/english-accentuate');
                  }
                  if (wordsEnglish == "accept") {
                    Routemaster.of(context).push('/english-accept');
                  }
                  if (wordsEnglish == "acceptable") {
                    Routemaster.of(context).push('/english-acceptable');
                  }
                  if (wordsEnglish == "acceptance") {
                    Routemaster.of(context).push('/english-acceptance');
                  }
                  if (wordsEnglish == "access") {
                    Routemaster.of(context).push('/english-access');
                  }
                  if (wordsEnglish == "accessible") {
                    Routemaster.of(context).push('/english-accessible');
                  }
                  if (wordsEnglish == "accession") {
                    Routemaster.of(context).push('/english-accession');
                  }
                  if (wordsEnglish == "accessory") {
                    Routemaster.of(context).push('/english-accessory');
                  }
                  if (wordsEnglish == "accident") {
                    Routemaster.of(context).push('/english-accident');
                  }
                  if (wordsEnglish == "accidental") {
                    Routemaster.of(context).push('/english-accidental');
                  }
                  if (wordsEnglish == "accidentally") {
                    Routemaster.of(context).push('/english-accidentally');
                  }
                  if (wordsEnglish == "acclaim") {
                    Routemaster.of(context).push('/english-acclaim');
                  }
                  if (wordsEnglish == "acclimatize") {
                    Routemaster.of(context).push('/english-acclimatize');
                  }
                  if (wordsEnglish == "accolade") {
                    Routemaster.of(context).push('/english-accolade');
                  }
                  if (wordsEnglish == "accommodate") {
                    Routemaster.of(context).push('/english-accommodate');
                  }
                  if (wordsEnglish == "accommodating") {
                    Routemaster.of(context).push('/english-accommodating');
                  }
                  if (wordsEnglish == "accommodation") {
                    Routemaster.of(context).push('/english-accommodation');
                  }
                  if (wordsEnglish == "accompaniment") {
                    Routemaster.of(context).push('/english-accompaniment');
                  }
                  if (wordsEnglish == "accompanist") {
                    Routemaster.of(context).push('/english-accompanist');
                  }
                  if (wordsEnglish == "accompany") {
                    Routemaster.of(context).push('/english-accompany');
                  }
                  if (wordsEnglish == "accomplice") {
                    Routemaster.of(context).push('/english-accomplice');
                  }
                  if (wordsEnglish == "accomplish") {
                    Routemaster.of(context).push('/english-accomplish');
                  }
                  if (wordsEnglish == "accomplished") {
                    Routemaster.of(context).push('/english-accomplished');
                  }
                  if (wordsEnglish == "accomplishment") {
                    Routemaster.of(context).push('/english-accomplishment');
                  }
                  if (wordsEnglish == "accord") {
                    Routemaster.of(context).push('/english-accord');
                  }
                  if (wordsEnglish == "accordingly") {
                    Routemaster.of(context).push('/english-accordingly');
                  }
                  if (wordsEnglish == "according to") {
                    Routemaster.of(context).push('/english-according-to');
                  }
                  if (wordsEnglish == "accordion") {
                    Routemaster.of(context).push('/english-accordion');
                  }
                  if (wordsEnglish == "accost") {
                    Routemaster.of(context).push('/english-accost');
                  }
                  if (wordsEnglish == "account") {
                    Routemaster.of(context).push('/english-account');
                  }
                  if (wordsEnglish == "account for") {
                    Routemaster.of(context).push('/english-account-for');
                  }
                  if (wordsEnglish == "accountable") {
                    Routemaster.of(context).push('/english-accountable');
                  }
                  if (wordsEnglish == "accountancy") {
                    Routemaster.of(context).push('/english-accountancy');
                  }
                  if (wordsEnglish == "accountant") {
                    Routemaster.of(context).push('/english-accountant');
                  }
                  if (wordsEnglish == "accredited") {
                    Routemaster.of(context).push('/english-accredited');
                  }
                  if (wordsEnglish == "accreditation") {
                    Routemaster.of(context).push('/english-accreditation');
                  }
                  if (wordsEnglish == "accrue") {
                    Routemaster.of(context).push('/english-accrue');
                  }
                  if (wordsEnglish == "accumulate") {
                    Routemaster.of(context).push('/english-accumulate');
                  }
                  if (wordsEnglish == "accumulation") {
                    Routemaster.of(context).push('/english-accumulation');
                  }
                  if (wordsEnglish == "accuracy") {
                    Routemaster.of(context).push('/english-accuracy');
                  }
                  if (wordsEnglish == "accurate") {
                    Routemaster.of(context).push('/english-accurate');
                  }
                  if (wordsEnglish == "accurately") {
                    Routemaster.of(context).push('/english-accurately');
                  }
                  if (wordsEnglish == "accusation") {
                    Routemaster.of(context).push('/english-accusation');
                  }
                  if (wordsEnglish == "accuse") {
                    Routemaster.of(context).push('/english-accuse');
                  }
                  if (wordsEnglish == "the accused") {
                    Routemaster.of(context).push('/english-the-accused');
                  }
                  if (wordsEnglish == "accuser") {
                    Routemaster.of(context).push('/english-accuser');
                  }
                  if (wordsEnglish == "accustom to") {
                    Routemaster.of(context).push('/english-accustom-to');
                  }
                  if (wordsEnglish == "accustomed") {
                    Routemaster.of(context).push('/english-accustomed');
                  }
                  if (wordsEnglish == "ace") {
                    Routemaster.of(context).push('/english-ace');
                  }
                  if (wordsEnglish == "ache") {
                    Routemaster.of(context).push('/english-ache');
                  }
                  if (wordsEnglish == "achieve") {
                    Routemaster.of(context).push('/english-achieve');
                  }
                  if (wordsEnglish == "achievement") {
                    Routemaster.of(context).push('/english-achievement');
                  }
                  if (wordsEnglish == "Achilles' heel") {
                    Routemaster.of(context).push('/english-achilles-heel');
                  }
                  if (wordsEnglish == "acid") {
                    Routemaster.of(context).push('/english-acid');
                  }
                  if (wordsEnglish == "acid rain") {
                    Routemaster.of(context).push('/english-acid-rain');
                  }
                  if (wordsEnglish == "acid test") {
                    Routemaster.of(context).push('/english-acid-test');
                  }
                  if (wordsEnglish == "acknowledge") {
                    Routemaster.of(context).push('/english-acknowledge');
                  }
                  if (wordsEnglish == "acknowledgement") {
                    Routemaster.of(context).push('/english-acknowledgement');
                  }
                  if (wordsEnglish == "acne") {
                    Routemaster.of(context).push('/english-acne');
                  }
                  if (wordsEnglish == "acorn") {
                    Routemaster.of(context).push('/english-acorn');
                  }
                  if (wordsEnglish == "acoustic") {
                    Routemaster.of(context).push('/english-acoustic');
                  }
                  if (wordsEnglish == "acoustics") {
                    Routemaster.of(context).push('/english-acoustics');
                  }
                  if (wordsEnglish == "acquaint") {
                    Routemaster.of(context).push('/english-acquaint');
                  }
                  if (wordsEnglish == "acquaintance") {
                    Routemaster.of(context).push('/english-acquaintance');
                  }
                  if (wordsEnglish == "acquainted") {
                    Routemaster.of(context).push('/english-acquainted');
                  }
                  if (wordsEnglish == "acquiesce") {
                    Routemaster.of(context).push('/english-acquiesce');
                  }
                  if (wordsEnglish == "acquiescence") {
                    Routemaster.of(context).push('/english-acquiescence');
                  }
                  if (wordsEnglish == "acquire") {
                    Routemaster.of(context).push('/english-acquire');
                  }
                  if (wordsEnglish == "acquisition") {
                    Routemaster.of(context).push('/english-acquisition');
                  }
                  if (wordsEnglish == "acquisitive") {
                    Routemaster.of(context).push('/english-acquisitive');
                  }
                  if (wordsEnglish == "acquit") {
                    Routemaster.of(context).push('/english-acquit');
                  }
                  if (wordsEnglish == "acquittal") {
                    Routemaster.of(context).push('/english-acquittal');
                  }
                  if (wordsEnglish == "acre") {
                    Routemaster.of(context).push('/english-acre');
                  }
                  if (wordsEnglish == "acreage") {
                    Routemaster.of(context).push('/english-acreage');
                  }
                  if (wordsEnglish == "acrid") {
                    Routemaster.of(context).push('/english-acrid');
                  }
                  if (wordsEnglish == "acrimonious") {
                    Routemaster.of(context).push('/english-acrimonious');
                  }
                  if (wordsEnglish == "acrimony") {
                    Routemaster.of(context).push('/english-acrimony');
                  }
                  if (wordsEnglish == "acrobat") {
                    Routemaster.of(context).push('/english-acrobat');
                  }
                  if (wordsEnglish == "acrobatic") {
                    Routemaster.of(context).push('/english-acrobatic');
                  }
                  if (wordsEnglish == "acrobatics") {
                    Routemaster.of(context).push('/english-acrobatics');
                  }
                  if (wordsEnglish == "acronym") {
                    Routemaster.of(context).push('/english-acronym');
                  }
                  if (wordsEnglish == "across") {
                    Routemaster.of(context).push('/english-across');
                  }
                  if (wordsEnglish == "acrylic") {
                    Routemaster.of(context).push('/english-acrylic');
                  }
                  if (wordsEnglish == "act") {
                    Routemaster.of(context).push('/english-act');
                  }
                  if (wordsEnglish == "action") {
                    Routemaster.of(context).push('/english-action');
                  }
                  if (wordsEnglish == "activate") {
                    Routemaster.of(context).push('/english-activate');
                  }
                  if (wordsEnglish == "active") {
                    Routemaster.of(context).push('/english-active');
                  }
                  if (wordsEnglish == "actively") {
                    Routemaster.of(context).push('/english-actively');
                  }
                  if (wordsEnglish == "activist") {
                    Routemaster.of(context).push('/english-activist');
                  }
                  if (wordsEnglish == "activity") {
                    Routemaster.of(context).push('/english-activity');
                  }
                  if (wordsEnglish == "actor") {
                    Routemaster.of(context).push('/english-actor');
                  }
                  if (wordsEnglish == "actress") {
                    Routemaster.of(context).push('/english-actress');
                  }
                  if (wordsEnglish == "actual") {
                    Routemaster.of(context).push('/english-actual');
                  }
                  if (wordsEnglish == "actually") {
                    Routemaster.of(context).push('/english-actually');
                  }
                  if (wordsEnglish == "acumen") {
                    Routemaster.of(context).push('/english-acumen');
                  }
                  if (wordsEnglish == "acupuncture") {
                    Routemaster.of(context).push('/english-acupuncture');
                  }
                  if (wordsEnglish == "acute") {
                    Routemaster.of(context).push('/english-acute');
                  }
                  if (wordsEnglish == "acute accent") {
                    Routemaster.of(context).push('/english-acute-accent');
                  }
                  if (wordsEnglish == "acute angle") {
                    Routemaster.of(context).push('/english-acute-angle');
                  }
                  if (wordsEnglish == "acutely") {
                    Routemaster.of(context).push('/english-acutely');
                  }
                  if (wordsEnglish == "acuteness") {
                    Routemaster.of(context).push('/english-acuteness');
                  }
                  if (wordsEnglish == "ad") {
                    Routemaster.of(context).push('/english-ad');
                  }
                  if (wordsEnglish == "adamant") {
                    Routemaster.of(context).push('/english-adamant');
                  }
                  if (wordsEnglish == "Adam's apple") {
                    Routemaster.of(context).push('/english-adams-apple');
                  }
                  if (wordsEnglish == "adapt") {
                    Routemaster.of(context).push('/english-adapt');
                  }
                  if (wordsEnglish == "adaptable") {
                    Routemaster.of(context).push('/english-adaptable');
                  }
                  if (wordsEnglish == "adaptation") {
                    Routemaster.of(context).push('/english-adaptation');
                  }
                  if (wordsEnglish == "adaptor") {
                    Routemaster.of(context).push('/english-adaptor');
                  }
                  if (wordsEnglish == "add") {
                    Routemaster.of(context).push('/english-add');
                  }
                  if (wordsEnglish == "adder") {
                    Routemaster.of(context).push('/english-adder');
                  }
                  if (wordsEnglish == "addict") {
                    Routemaster.of(context).push('/english-addict');
                  }
                  if (wordsEnglish == "addicted") {
                    Routemaster.of(context).push('/english-addicted');
                  }
                  if (wordsEnglish == "addiction") {
                    Routemaster.of(context).push('/english-addiction');
                  }
                  if (wordsEnglish == "addictive") {
                    Routemaster.of(context).push('/english-addictive');
                  }
                  if (wordsEnglish == "addition") {
                    Routemaster.of(context).push('/english-addition');
                  }
                  if (wordsEnglish == "additional") {
                    Routemaster.of(context).push('/english-additional');
                  }
                  if (wordsEnglish == "additionally") {
                    Routemaster.of(context).push('/english-additionally');
                  }
                  if (wordsEnglish == "additive") {
                    Routemaster.of(context).push('/english-additive');
                  }
                  if (wordsEnglish == "address") {
                    Routemaster.of(context).push('/english-address');
                  }
                  if (wordsEnglish == "adept") {
                    Routemaster.of(context).push('/english-adept');
                  }
                  if (wordsEnglish == "adequate") {
                    Routemaster.of(context).push('/english-adequate');
                  }
                  if (wordsEnglish == "adequately") {
                    Routemaster.of(context).push('/english-adequately');
                  }
                  if (wordsEnglish == "adhere") {
                    Routemaster.of(context).push('/english-adhere');
                  }
                  if (wordsEnglish == "adhere to") {
                    Routemaster.of(context).push('/english-adhere-to');
                  }
                  if (wordsEnglish == "adherence") {
                    Routemaster.of(context).push('/english-adherence');
                  }
                  if (wordsEnglish == "adherent") {
                    Routemaster.of(context).push('/english-adherent');
                  }
                  if (wordsEnglish == "adhesion") {
                    Routemaster.of(context).push('/english-adhesion');
                  }
                  if (wordsEnglish == "adhesive") {
                    Routemaster.of(context).push('/english-adhesive');
                  }
                  if (wordsEnglish == "ad hoc") {
                    Routemaster.of(context).push('/english-ad-hoc');
                  }
                  if (wordsEnglish == "adjacent") {
                    Routemaster.of(context).push('/english-adjacent');
                  }
                  if (wordsEnglish == "adjectival") {
                    Routemaster.of(context).push('/english-adjectival');
                  }
                  if (wordsEnglish == "adjective") {
                    Routemaster.of(context).push('/english-adjective');
                  }
                  if (wordsEnglish == "adjoin") {
                    Routemaster.of(context).push('/english-adjoin');
                  }
                  if (wordsEnglish == "adjourn") {
                    Routemaster.of(context).push('/english-adjourn');
                  }
                  if (wordsEnglish == "adjournment") {
                    Routemaster.of(context).push('/english-adjournment');
                  }
                  if (wordsEnglish == "adjudicate") {
                    Routemaster.of(context).push('/english-adjudicate');
                  }
                  if (wordsEnglish == "adjudication") {
                    Routemaster.of(context).push('/english-adjudication');
                  }
                  if (wordsEnglish == "adjudicator") {
                    Routemaster.of(context).push('/english-adjudicator');
                  }
                  if (wordsEnglish == "adjunct") {
                    Routemaster.of(context).push('/english-adjunct');
                  }
                  if (wordsEnglish == "adjust") {
                    Routemaster.of(context).push('/english-adjust');
                  }
                  if (wordsEnglish == "adjustable") {
                    Routemaster.of(context).push('/english-adjustable');
                  }
                  if (wordsEnglish == "adjustment") {
                    Routemaster.of(context).push('/english-adjustment');
                  }
                  if (wordsEnglish == "ad lib") {
                    Routemaster.of(context).push('/english-ad-lib');
                  }
                  if (wordsEnglish == "administer") {
                    Routemaster.of(context).push('/english-administer');
                  }
                  if (wordsEnglish == "administration") {
                    Routemaster.of(context).push('/english-administration');
                  }
                  if (wordsEnglish == "administrative") {
                    Routemaster.of(context).push('/english-administrative');
                  }
                  if (wordsEnglish == "administrator") {
                    Routemaster.of(context).push('/english-administrator');
                  }
                  if (wordsEnglish == "admirable") {
                    Routemaster.of(context).push('/english-admirable');
                  }
                  if (wordsEnglish == "admirably") {
                    Routemaster.of(context).push('/english-admirably');
                  }
                  if (wordsEnglish == "admiral") {
                    Routemaster.of(context).push('/english-admiral');
                  }
                  if (wordsEnglish == "admiration") {
                    Routemaster.of(context).push('/english-admiration');
                  }
                  if (wordsEnglish == "admire") {
                    Routemaster.of(context).push('/english-admire');
                  }
                  if (wordsEnglish == "admirer") {
                    Routemaster.of(context).push('/english-admirer');
                  }
                  if (wordsEnglish == "admiring") {
                    Routemaster.of(context).push('/english-admiring');
                  }
                  if (wordsEnglish == "admissible") {
                    Routemaster.of(context).push('/english-admissible');
                  }
                  if (wordsEnglish == "admission") {
                    Routemaster.of(context).push('/english-admission');
                  }
                  if (wordsEnglish == "admit") {
                    Routemaster.of(context).push('/english-admit');
                  }
                  if (wordsEnglish == "admittance") {
                    Routemaster.of(context).push('/english-admittance');
                  }
                  if (wordsEnglish == "admittedly") {
                    Routemaster.of(context).push('/english-admittedly');
                  }
                  if (wordsEnglish == "admonish") {
                    Routemaster.of(context).push('/english-admonish');
                  }
                  if (wordsEnglish == "ad nauseam") {
                    Routemaster.of(context).push('/english-ad-nauseam');
                  }
                  if (wordsEnglish == "adolescence") {
                    Routemaster.of(context).push('/english-adolescence');
                  }
                  if (wordsEnglish == "adolescent") {
                    Routemaster.of(context).push('/english-adolescent');
                  }
                  if (wordsEnglish == "adopt") {
                    Routemaster.of(context).push('/english-adopt');
                  }
                  if (wordsEnglish == "adoption") {
                    Routemaster.of(context).push('/english-adoption');
                  }
                  if (wordsEnglish == "adoptive") {
                    Routemaster.of(context).push('/english-adoptive');
                  }
                  if (wordsEnglish == "adorable") {
                    Routemaster.of(context).push('/english-adorable');
                  }
                  if (wordsEnglish == "adoration") {
                    Routemaster.of(context).push('/english-adoration');
                  }
                  if (wordsEnglish == "adore") {
                    Routemaster.of(context).push('/english-adore');
                  }
                  if (wordsEnglish == "adorn") {
                    Routemaster.of(context).push('/english-adorn');
                  }
                  if (wordsEnglish == "adornment") {
                    Routemaster.of(context).push('/english-adornment');
                  }
                  if (wordsEnglish == "adrenaline") {
                    Routemaster.of(context).push('/english-adrenaline');
                  }
                  if (wordsEnglish == "adrift") {
                    Routemaster.of(context).push('/english-adrift');
                  }
                  if (wordsEnglish == "adult") {
                    Routemaster.of(context).push('/english-adult');
                  }
                  if (wordsEnglish == "adulation") {
                    Routemaster.of(context).push('/english-adulation');
                  }
                  if (wordsEnglish == "adulterate") {
                    Routemaster.of(context).push('/english-adulterate');
                  }
                  if (wordsEnglish == "adulterer") {
                    Routemaster.of(context).push('/english-adulterer');
                  }
                  if (wordsEnglish == "adulterous") {
                    Routemaster.of(context).push('/english-adulterous');
                  }
                  if (wordsEnglish == "adultery") {
                    Routemaster.of(context).push('/english-adultery');
                  }
                  if (wordsEnglish == "adulthood") {
                    Routemaster.of(context).push('/english-adulthood');
                  }
                  if (wordsEnglish == "advance") {
                    Routemaster.of(context).push('/english-advance');
                  }
                  if (wordsEnglish == "advanced") {
                    Routemaster.of(context).push('/english-advanced');
                  }
                  if (wordsEnglish == "advancement") {
                    Routemaster.of(context).push('/english-advancement');
                  }
                  if (wordsEnglish == "advantage") {
                    Routemaster.of(context).push('/english-advantage');
                  }
                  if (wordsEnglish == "advantageous") {
                    Routemaster.of(context).push('/english-advantageous');
                  }
                  if (wordsEnglish == "advent") {
                    Routemaster.of(context).push('/english-advent');
                  }
                  if (wordsEnglish == "adventure") {
                    Routemaster.of(context).push('/english-adventure');
                  }
                  if (wordsEnglish == "adventurer") {
                    Routemaster.of(context).push('/english-adventurer');
                  }
                  if (wordsEnglish == "adventurous") {
                    Routemaster.of(context).push('/english-adventurous');
                  }
                  if (wordsEnglish == "adverb") {
                    Routemaster.of(context).push('/english-adverb');
                  }
                  if (wordsEnglish == "adverbial") {
                    Routemaster.of(context).push('/english-adverbial');
                  }
                  if (wordsEnglish == "adversary") {
                    Routemaster.of(context).push('/english-adversary');
                  }
                  if (wordsEnglish == "adverse") {
                    Routemaster.of(context).push('/english-adverse');
                  }
                  if (wordsEnglish == "adversely") {
                    Routemaster.of(context).push('/english-adversely');
                  }
                  if (wordsEnglish == "adversity") {
                    Routemaster.of(context).push('/english-adversity');
                  }
                  if (wordsEnglish == "advert") {
                    Routemaster.of(context).push('/english-advert');
                  }
                  if (wordsEnglish == "advertise") {
                    Routemaster.of(context).push('/english-advertise');
                  }
                  if (wordsEnglish == "advertisement") {
                    Routemaster.of(context).push('/english-advertisement');
                  }
                  if (wordsEnglish == "advertiser") {
                    Routemaster.of(context).push('/english-advertiser');
                  }
                  if (wordsEnglish == "advertising") {
                    Routemaster.of(context).push('/english-advertising');
                  }
                  if (wordsEnglish == "advice") {
                    Routemaster.of(context).push('/english-advice');
                  }
                  if (wordsEnglish == "advisable") {
                    Routemaster.of(context).push('/english-advisable');
                  }
                  if (wordsEnglish == "advise") {
                    Routemaster.of(context).push('/english-advise');
                  }
                  if (wordsEnglish == "adviser") {
                    Routemaster.of(context).push('/english-adviser');
                  }
                  if (wordsEnglish == "advisory") {
                    Routemaster.of(context).push('/english-advisory');
                  }
                  if (wordsEnglish == "advocate") {
                    Routemaster.of(context).push('/english-advocate');
                  }
                  if (wordsEnglish == "aerial") {
                    Routemaster.of(context).push('/english-aerial');
                  }
                  if (wordsEnglish == "aerobatics") {
                    Routemaster.of(context).push('/english-aerobatics');
                  }
                  if (wordsEnglish == "aerobics") {
                    Routemaster.of(context).push('/english-aerobics');
                  }
                  if (wordsEnglish == "aerodynamic") {
                    Routemaster.of(context).push('/english-aerodynamic');
                  }
                  if (wordsEnglish == "aerodynamics") {
                    Routemaster.of(context).push('/english-aerodynamics');
                  }
                  if (wordsEnglish == "aeronautics") {
                    Routemaster.of(context).push('/english-aeronautics');
                  }
                  if (wordsEnglish == "aeroplane") {
                    Routemaster.of(context).push('/english-aeroplane');
                  }
                  if (wordsEnglish == "aerosol") {
                    Routemaster.of(context).push('/english-aerosol');
                  }
                  if (wordsEnglish == "aerospace") {
                    Routemaster.of(context).push('/english-aerospace');
                  }
                  if (wordsEnglish == "aesthetic") {
                    Routemaster.of(context).push('/english-aesthetic');
                  }
                  if (wordsEnglish == "aesthetically") {
                    Routemaster.of(context).push('/english-aesthetically');
                  }
                  if (wordsEnglish == "affable") {
                    Routemaster.of(context).push('/english-affable');
                  }
                  if (wordsEnglish == "affably") {
                    Routemaster.of(context).push('/english-affably');
                  }
                  if (wordsEnglish == "affair") {
                    Routemaster.of(context).push('/english-affair');
                  }
                  if (wordsEnglish == "affect") {
                    Routemaster.of(context).push('/english-affect');
                  }
                  if (wordsEnglish == "affectation") {
                    Routemaster.of(context).push('/english-affectation');
                  }
                  if (wordsEnglish == "affected") {
                    Routemaster.of(context).push('/english-affected');
                  }
                  if (wordsEnglish == "affection") {
                    Routemaster.of(context).push('/english-affection');
                  }
                  if (wordsEnglish == "affectionate") {
                    Routemaster.of(context).push('/english-affectionate');
                  }
                  if (wordsEnglish == "affectionately") {
                    Routemaster.of(context).push('/english-affectionately');
                  }
                  if (wordsEnglish == "affidavit") {
                    Routemaster.of(context).push('/english-affidavit');
                  }
                  if (wordsEnglish == "affiliate") {
                    Routemaster.of(context).push('/english-affiliate');
                  }
                  if (wordsEnglish == "affiliation") {
                    Routemaster.of(context).push('/english-affiliation');
                  }
                  if (wordsEnglish == "affinity") {
                    Routemaster.of(context).push('/english-affinity');
                  }
                  if (wordsEnglish == "affirm") {
                    Routemaster.of(context).push('/english-affirm');
                  }
                  if (wordsEnglish == "affirmation") {
                    Routemaster.of(context).push('/english-affirmation');
                  }
                  if (wordsEnglish == "affirmative") {
                    Routemaster.of(context).push('/english-affirmative');
                  }
                  if (wordsEnglish == "affix") {
                    Routemaster.of(context).push('/english-affix');
                  }
                  if (wordsEnglish == "afflict") {
                    Routemaster.of(context).push('/english-afflict');
                  }
                  if (wordsEnglish == "affliction") {
                    Routemaster.of(context).push('/english-affliction');
                  }
                  if (wordsEnglish == "affluence") {
                    Routemaster.of(context).push('/english-affluence');
                  }
                  if (wordsEnglish == "affluent") {
                    Routemaster.of(context).push('/english-affluent');
                  }
                  if (wordsEnglish == "afford") {
                    Routemaster.of(context).push('/english-afford');
                  }
                  if (wordsEnglish == "affront") {
                    Routemaster.of(context).push('/english-affront');
                  }
                  if (wordsEnglish == "afloat") {
                    Routemaster.of(context).push('/english-afloat');
                  }
                  if (wordsEnglish == "afoot") {
                    Routemaster.of(context).push('/english-afoot');
                  }
                  if (wordsEnglish == "aforementioned") {
                    Routemaster.of(context).push('/english-aforementioned');
                  }
                  if (wordsEnglish == "afraid") {
                    Routemaster.of(context).push('/english-afraid');
                  }
                  if (wordsEnglish == "afresh") {
                    Routemaster.of(context).push('/english-afresh');
                  }
                  if (wordsEnglish == "after") {
                    Routemaster.of(context).push('/english-after');
                  }
                  if (wordsEnglish == "aftereffect") {
                    Routemaster.of(context).push('/english-aftereffect');
                  }
                  if (wordsEnglish == "aftermath") {
                    Routemaster.of(context).push('/english-aftermath');
                  }
                  if (wordsEnglish == "afternoon") {
                    Routemaster.of(context).push('/english-afternoon');
                  }
                  if (wordsEnglish == "afterthought") {
                    Routemaster.of(context).push('/english-afterthought');
                  }
                  if (wordsEnglish == "afterwards") {
                    Routemaster.of(context).push('/english-afterwards');
                  }
                  if (wordsEnglish == "again") {
                    Routemaster.of(context).push('/english-again');
                  }
                  if (wordsEnglish == "against") {
                    Routemaster.of(context).push('/english-against');
                  }
                  if (wordsEnglish == "age") {
                    Routemaster.of(context).push('/english-age');
                  }
                  if (wordsEnglish == "aged") {
                    Routemaster.of(context).push('/english-aged');
                  }
                  if (wordsEnglish == "age group") {
                    Routemaster.of(context).push('/english-age-group');
                  }
                  if (wordsEnglish == "ageing") {
                    Routemaster.of(context).push('/english-ageing');
                  }
                  if (wordsEnglish == "ageism") {
                    Routemaster.of(context).push('/english-ageism');
                  }
                  if (wordsEnglish == "ageist") {
                    Routemaster.of(context).push('/english-ageist');
                  }
                  if (wordsEnglish == "age limit") {
                    Routemaster.of(context).push('/english-age-limit');
                  }
                  if (wordsEnglish == "agency") {
                    Routemaster.of(context).push('/english-agency');
                  }
                  if (wordsEnglish == "agenda") {
                    Routemaster.of(context).push('/english-agenda');
                  }
                  if (wordsEnglish == "agent") {
                    Routemaster.of(context).push('/english-agent');
                  }
                  if (wordsEnglish == "age-old") {
                    Routemaster.of(context).push('/english-age-old');
                  }
                  if (wordsEnglish == "aggravate") {
                    Routemaster.of(context).push('/english-aggravate');
                  }
                  if (wordsEnglish == "aggravation") {
                    Routemaster.of(context).push('/english-aggravation');
                  }
                  if (wordsEnglish == "aggregate") {
                    Routemaster.of(context).push('/english-aggregate');
                  }
                  if (wordsEnglish == "aggression") {
                    Routemaster.of(context).push('/english-aggression');
                  }
                  if (wordsEnglish == "aggressive") {
                    Routemaster.of(context).push('/english-aggressive');
                  }
                  if (wordsEnglish == "aggressively") {
                    Routemaster.of(context).push('/english-aggressively');
                  }
                  if (wordsEnglish == "aggressiveness") {
                    Routemaster.of(context).push('/english-aggressiveness');
                  }
                  if (wordsEnglish == "aggressor") {
                    Routemaster.of(context).push('/english-aggressor');
                  }
                  if (wordsEnglish == "aggrieved") {
                    Routemaster.of(context).push('/english-aggrieved');
                  }
                  if (wordsEnglish == "aghast") {
                    Routemaster.of(context).push('/english-aghast');
                  }
                  if (wordsEnglish == "agile") {
                    Routemaster.of(context).push('/english-agile');
                  }
                  if (wordsEnglish == "agility") {
                    Routemaster.of(context).push('/english-agility');
                  }
                  if (wordsEnglish == "aging") {
                    Routemaster.of(context).push('/english-aging');
                  }
                  if (wordsEnglish == "agitate") {
                    Routemaster.of(context).push('/english-agitate');
                  }
                  if (wordsEnglish == "agitation") {
                    Routemaster.of(context).push('/english-agitation');
                  }
                  if (wordsEnglish == "agitator") {
                    Routemaster.of(context).push('/english-agitator');
                  }
                  if (wordsEnglish == "aglow") {
                    Routemaster.of(context).push('/english-aglow');
                  }
                  if (wordsEnglish == "AGM") {
                    Routemaster.of(context).push('/english-agm');
                  }
                  if (wordsEnglish == "agnostic") {
                    Routemaster.of(context).push('/english-agnostic');
                  }
                  if (wordsEnglish == "agonized") {
                    Routemaster.of(context).push('/english-agonized');
                  }
                  if (wordsEnglish == "agonizing") {
                    Routemaster.of(context).push('/english-agonizing');
                  }
                  if (wordsEnglish == "agony") {
                    Routemaster.of(context).push('/english-agony');
                  }
                  if (wordsEnglish == "agony aunt") {
                    Routemaster.of(context).push('/english-agony-aunt');
                  }
                  if (wordsEnglish == "agoraphobia") {
                    Routemaster.of(context).push('/english-agoraphobia');
                  }
                  if (wordsEnglish == "agoraphobic") {
                    Routemaster.of(context).push('/english-agoraphobic');
                  }
                  if (wordsEnglish == "agrarian") {
                    Routemaster.of(context).push('/english-agrarian');
                  }
                  if (wordsEnglish == "agree") {
                    Routemaster.of(context).push('/english-agree');
                  }
                  if (wordsEnglish == "DOPSUM") {
                    Routemaster.of(context).push('/english-DOPSUM');
                  }
                  if (wordsEnglish == "DOPSUM") {
                    Routemaster.of(context).push('/english-DOPSUM');
                  }
                  if (wordsEnglish == "agreeable") {
                    Routemaster.of(context).push('/english-agreeable');
                  }
                  if (wordsEnglish == "agreeably") {
                    Routemaster.of(context).push('/english-agreeably');
                  }
                  if (wordsEnglish == "agreement") {
                    Routemaster.of(context).push('/english-agreement');
                  }
                  if (wordsEnglish == "agriculture") {
                    Routemaster.of(context).push('/english-agriculture');
                  }
                  if (wordsEnglish == "agricultural") {
                    Routemaster.of(context).push('/english-agricultural');
                  }
                  if (wordsEnglish == "agritourism") {
                    Routemaster.of(context).push('/english-agritourism');
                  }
                  if (wordsEnglish == "agrochemical") {
                    Routemaster.of(context).push('/english-agrochemical');
                  }
                  if (wordsEnglish == "agronomist") {
                    Routemaster.of(context).push('/english-agronomist');
                  }
                  if (wordsEnglish == "agronomy") {
                    Routemaster.of(context).push('/english-agronomy');
                  }
                  if (wordsEnglish == "aground") {
                    Routemaster.of(context).push('/english-aground');
                  }
                  if (wordsEnglish == "ahead") {
                    Routemaster.of(context).push('/english-ahead');
                  }
                  if (wordsEnglish == "ahead of") {
                    Routemaster.of(context).push('/english-ahead-of');
                  }
                  if (wordsEnglish == "AI") {
                    Routemaster.of(context).push('/english-ai');
                  }
                  if (wordsEnglish == "aid") {
                    Routemaster.of(context).push('/english-aid');
                  }
                  if (wordsEnglish == "aide") {
                    Routemaster.of(context).push('/english-aide');
                  }
                  if (wordsEnglish == "AIDS") {
                    Routemaster.of(context).push('/english-aids');
                  }
                  if (wordsEnglish == "ailing") {
                    Routemaster.of(context).push('/english-ailing');
                  }
                  if (wordsEnglish == "ailment") {
                    Routemaster.of(context).push('/english-ailment');
                  }
                  if (wordsEnglish == "aim") {
                    Routemaster.of(context).push('/english-aim');
                  }
                  if (wordsEnglish == "aimless") {
                    Routemaster.of(context).push('/english-aimless');
                  }
                  if (wordsEnglish == "aimlessly") {
                    Routemaster.of(context).push('/english-aimlessly');
                  }
                  if (wordsEnglish == "ain't") {
                    Routemaster.of(context).push("/english-ain't");
                  }
                  if (wordsEnglish == "air") {
                    Routemaster.of(context).push('/english-air');
                  }
                  if (wordsEnglish == "airbag") {
                    Routemaster.of(context).push('/english-airbag');
                  }
                  if (wordsEnglish == "airborne") {
                    Routemaster.of(context).push('/english-airborne');
                  }
                  if (wordsEnglish == "air conditioner") {
                    Routemaster.of(context).push('/english-air-conditioner');
                  }
                  if (wordsEnglish == "air-conditioned") {
                    Routemaster.of(context).push('/english-air-conditioned');
                  }
                  if (wordsEnglish == "aircraft") {
                    Routemaster.of(context).push('/english-aircraft');
                  }
                  if (wordsEnglish == "aircraft carrier") {
                    Routemaster.of(context).push('/english-aircraft-carrier');
                  }
                  if (wordsEnglish == "airfield") {
                    Routemaster.of(context).push('/english-airfield');
                  }
                  if (wordsEnglish == "air force") {
                    Routemaster.of(context).push('/english-air-force');
                  }
                  if (wordsEnglish == "air hostess") {
                    Routemaster.of(context).push('/english-air-hostess');
                  }
                  if (wordsEnglish == "airlift") {
                    Routemaster.of(context).push('/english-airlift');
                  }
                  if (wordsEnglish == "airline") {
                    Routemaster.of(context).push('/english-airline');
                  }
                  if (wordsEnglish == "airliner") {
                    Routemaster.of(context).push('/english-airliner');
                  }
                  if (wordsEnglish == "airmail") {
                    Routemaster.of(context).push('/english-airmail');
                  }
                  if (wordsEnglish == "air marshal") {
                    Routemaster.of(context).push('/english-air-marshal');
                  }
                  if (wordsEnglish == "airplane") {
                    Routemaster.of(context).push('/english-airplane');
                  }
                  if (wordsEnglish == "airport") {
                    Routemaster.of(context).push('/english-airport');
                  }
                  if (wordsEnglish == "air raid") {
                    Routemaster.of(context).push('/english-air-raid');
                  }
                  if (wordsEnglish == "airship") {
                    Routemaster.of(context).push('/english-airship');
                  }
                  if (wordsEnglish == "airspace") {
                    Routemaster.of(context).push('/english-airspace');
                  }
                  if (wordsEnglish == "airstrip") {
                    Routemaster.of(context).push('/english-airstrip');
                  }
                  if (wordsEnglish == "air terminal") {
                    Routemaster.of(context).push('/english-air-terminal');
                  }
                  if (wordsEnglish == "airtight") {
                    Routemaster.of(context).push('/english-airtight');
                  }
                  if (wordsEnglish == "air-to-air") {
                    Routemaster.of(context).push('/english-air-to-air');
                  }
                  if (wordsEnglish == "air traffic controller") {
                    Routemaster.of(context)
                        .push('/english-air-traffic-controller');
                  }
                  if (wordsEnglish == "airway") {
                    Routemaster.of(context).push('/english-airway');
                  }
                  if (wordsEnglish == "airworthy") {
                    Routemaster.of(context).push('/english-airworthy');
                  }
                  if (wordsEnglish == "airing") {
                    Routemaster.of(context).push('/english-airing');
                  }
                  if (wordsEnglish == "airing cupboard") {
                    Routemaster.of(context).push('/english-airing-cupboard');
                  }
                  if (wordsEnglish == "airless") {
                    Routemaster.of(context).push('/english-airless');
                  }
                  if (wordsEnglish == "airy") {
                    Routemaster.of(context).push('/english-airy');
                  }
                  if (wordsEnglish == "airily") {
                    Routemaster.of(context).push('/english-airily');
                  }
                  if (wordsEnglish == "aisle") {
                    Routemaster.of(context).push('/english-aisle');
                  }
                  if (wordsEnglish == "ajar") {
                    Routemaster.of(context).push('/english-ajar');
                  }
                  if (wordsEnglish == "akin") {
                    Routemaster.of(context).push('/english-akin');
                  }
                  if (wordsEnglish == "à la carte") {
                    Routemaster.of(context).push('/english-a-la-carte');
                  }
                  if (wordsEnglish == "alacrity") {
                    Routemaster.of(context).push('/english-alacrity');
                  }
                  if (wordsEnglish == "alarm") {
                    Routemaster.of(context).push('/english-alarm');
                  }
                  if (wordsEnglish == "alarm clock") {
                    Routemaster.of(context).push('/english-alarm-clock');
                  }
                  if (wordsEnglish == "alarming") {
                    Routemaster.of(context).push('/english-alarming');
                  }
                  if (wordsEnglish == "alas") {
                    Routemaster.of(context).push('/english-alas');
                  }
                  if (wordsEnglish == "albatross") {
                    Routemaster.of(context).push('/english-albatross');
                  }
                  if (wordsEnglish == "albeit") {
                    Routemaster.of(context).push('/english-albeit');
                  }
                  if (wordsEnglish == "albino") {
                    Routemaster.of(context).push('/english-albino');
                  }
                  if (wordsEnglish == "album") {
                    Routemaster.of(context).push('/english-album');
                  }
                  if (wordsEnglish == "alcohol") {
                    Routemaster.of(context).push('/english-alcohol');
                  }
                  if (wordsEnglish == "alcoholic") {
                    Routemaster.of(context).push('/english-alcoholic');
                  }
                  if (wordsEnglish == "alcoholism") {
                    Routemaster.of(context).push('/english-alcoholism');
                  }
                  if (wordsEnglish == "alcove") {
                    Routemaster.of(context).push('/english-alcove');
                  }
                  if (wordsEnglish == "ale") {
                    Routemaster.of(context).push('/english-ale');
                  }
                  if (wordsEnglish == "alert") {
                    Routemaster.of(context).push('/english-alert');
                  }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  if (wordsEnglish == "come of age") {
                    Routemaster.of(context).push('/english-come-of-age');
                  }
                  if (wordsEnglish == "far afield") {
                    Routemaster.of(context).push('/english-far-afield');
                  }
                  if (wordsEnglish == "from afar") {
                    Routemaster.of(context).push('/english-from-afar');
                  }
                  if (wordsEnglish == "under age") {
                    Routemaster.of(context).push('/english-under-age');
                  }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
                  //   Routemaster.of(context).push('/english-DOPSUM');
                  // }
                  // if (wordsEnglish == "DOPSUM") {
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
