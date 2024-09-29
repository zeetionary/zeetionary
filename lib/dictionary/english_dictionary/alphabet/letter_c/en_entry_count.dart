import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycount extends StatefulWidget {
  const EnglishEntrycount({super.key});

  @override
  State<EnglishEntrycount> createState() => _EnglishEntrycountState();
}

class _EnglishEntrycountState extends State<EnglishEntrycount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                bottom: CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "count");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: count");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /kaʊnt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcount(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("count");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcount("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /kaʊnt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcount(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("count");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcount("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She can count up to 10 in Italian.");
  }

  Future<void> speakcounts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He can now count from one to twenty.");
  }

  Future<void> speakcounts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We counted up to fifty, then set off to look for our friends.");
  }

  Future<void> speakcounts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They're still counting votes in Texas.");
  }

  Future<void> speakcounts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I can't count the number of times I've eaten there.");
  }

  Future<void> speakcounts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She began to count up how many guests they had to invite.");
  }

  Future<void> speakcounts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We have invited 50 people, not counting the children.");
  }

  Future<void> speakcounts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The tour guide was sure one person was missing from the group until she realized she had forgotten to count herself.");
  }

  Future<void> speakcounts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It is going to be a close election, so every vote counts.");
  }

  Future<void> speakcounts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Every point in this game counts.");
  }

  Future<void> speakcounts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The fact that she had apologized counted for nothing with him.");
  }

  Future<void> speakcounts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Don't go over that line or your throw won't count.");
  }

  Future<void> speakcounts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Applications received after 1 July will not be counted.");
  }

  Future<void> speakcounts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I count him among my closest friends.");
  }

  Future<void> speakcounts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I count myself lucky to have known him.");
  }

  Future<void> speakcounts16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I count it a privilege to have served alongside her.");
  }

  Future<void> speakcounts17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "If the election result is close, there will be a second count.");
  }

  Future<void> speakcounts18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The bus driver did a quick count of the empty seats.");
  }

  Future<void> speakcounts19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "By my count there are eight tracks here that aren't on the band's three albums.");
  }

  Future<void> speakcounts20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Raise your leg and hold for a count of ten.");
  }

  Future<void> speakcounts21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("On the count of three, take one step forward.");
  }

  Future<void> speakcounts22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her white cell count has gone down again.");
  }

  Future<void> speakcounts23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were found guilty on all counts.");
  }

  Future<void> speakcounts24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I disagree with you on both counts.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ژماردن، ھێژمارتن، حساب‌کردن، ژمارە، ڕەنووس، حساب، حسێب،	کێشە، دۆز،	بابەت، بڕگە، بابەتی تاوانباری،	لایەن، ئالی، لا، بوار
"""),
          const DefinitionKurdish(text: "١. (کردار) ژماردن بە ڕیزبەندی"),
          SentencesRow(
            englishText: "She can count up to 10 in Italian.",
            kurdishText: "دەتوانێت تاوەکو ١٠ بە ئیتالی بژمێرێت.",
            onPressedBritish: () => speakcounts1("en-GB"),
            onPressedAmerican: () => speakcounts1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He can now count from one to twenty.",
            kurdishText: "ئێستا دەتوانێت لە یەک تاوەکو بیست بژمێرێت.",
            onPressedBritish: () => speakcounts2("en-GB"),
            onPressedAmerican: () => speakcounts2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We counted up to fifty, then set off to look for our friends.",
            kurdishText:
                "تاوەکو چلمان ژمارد و دواتر چووین بۆ گەڕان بۆ ھاوڕێکانمان.",
            onPressedBritish: () => speakcounts3("en-GB"),
            onPressedAmerican: () => speakcounts3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) دۆزینەوەی ژمارەی تەواوی خەڵکی، شت، ھتد لە گرووپێکدا"),
          SentencesRow(
            englishText: "They're still counting votes in Texas.",
            kurdishText: "ھێشتا دەنگەکان دەژمێرن لە تێکساس.",
            onPressedBritish: () => speakcounts4("en-GB"),
            onPressedAmerican: () => speakcounts4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I can't count the number of times I've eaten there (= I've eaten there very many times).",
            kurdishText:
                "ناتوانم ژمارەی ئەو جارانە بژمێرن کە لەوێ نانم خواردووە.",
            onPressedBritish: () => speakcounts5("en-GB"),
            onPressedAmerican: () => speakcounts5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She began to count up how many guests they had to invite.",
            kurdishText:
                "دەستیکرد بە ژماردنی ئەوەی چەند میوان پێویست بوو بانگ بکەن.",
            onPressedBritish: () => speakcounts6("en-GB"),
            onPressedAmerican: () => speakcounts6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) لەخۆگرتنی کەسێک یان شتێک کە کۆی گشتی دەردەکەیت"),
          SentencesRow(
            englishText:
                "We have invited 50 people, not counting the children.",
            kurdishText: "٥٠ کەسمان بانگھێشت کردووە، بەبێ حسابکردنی منداڵەکان.",
            onPressedBritish: () => speakcounts7("en-GB"),
            onPressedAmerican: () => speakcounts7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The tour guide was sure one person was missing from the group until she realized she had forgotten to count herself.",
            kurdishText:
                "ڕێبەری گەشتەکە دڵنیابوو لەوەی کەسێک لە گرووپەکە نەبوو تاوەکو زانی کە بیری چووبوو خۆی حساب بکات.",
            onPressedBritish: () => speakcounts8("en-GB"),
            onPressedAmerican: () => speakcounts8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) گرنگبوون، حساب بوون"),
          SentencesRow(
            englishText:
                "It is going to be a close election, so every vote counts.",
            kurdishText: "ھەڵبژاردنێکی داخراو دەبێت، بۆیە ھەموو دەنگێک حسابە.",
            onPressedBritish: () => speakcounts9("en-GB"),
            onPressedAmerican: () => speakcounts9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Every point in this game counts.",
            kurdishText: "ھەموو خاڵێک لەم یارییەدا گرنگە.",
            onPressedBritish: () => speakcounts10("en-GB"),
            onPressedAmerican: () => speakcounts10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The fact that she had apologized counted for nothing with him.",
            kurdishText: "ئەوەی کە داوای لێبووردنی کرد ھیچ لای گرنگ نەبوو.",
            onPressedBritish: () => speakcounts11("en-GB"),
            onPressedAmerican: () => speakcounts11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) بە فەرمی پەسەندکردن"),
          SentencesRow(
            englishText: "Don't go over that line or your throw won't count.",
            kurdishText: "بەسەر ئەو ھێڵەدا مەچۆ ئەگەرنا ھەڵدانەکەت حساب نابێت.",
            onPressedBritish: () => speakcounts12("en-GB"),
            onPressedAmerican: () => speakcounts12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Applications received after 1 July will not be counted.",
            kurdishText:
                "داخوازینامەی وەرگیراو لە دوای ١ ـی تەممووز حساب نابێت.",
            onPressedBritish: () => speakcounts13("en-GB"),
            onPressedAmerican: () => speakcounts13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بیرکردنەوە لە شتێک بە شێوەیەکی دیاریکراو"),
          SentencesRow(
            englishText: "I count him among my closest friends.",
            kurdishText: "وەک باشترین ھاوڕێکانم سەیری ئەکەم.",
            onPressedBritish: () => speakcounts14("en-GB"),
            onPressedAmerican: () => speakcounts14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I count myself lucky to have known him.",
            kurdishText: "خۆم بە بەبەخت دادەنێم کە ناسیومە.",
            onPressedBritish: () => speakcounts15("en-GB"),
            onPressedAmerican: () => speakcounts15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I count it a privilege to have served alongside her.",
            kurdishText:
                "وەک شانازییەک سەیری دەکەم کە شان‌بەشانی ئەو خزمەتم کردووە.",
            onPressedBritish: () => speakcounts16("en-GB"),
            onPressedAmerican: () => speakcounts16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) دۆزینەوەی کۆی گشتی"),
          SentencesRow(
            englishText:
                "If the election result is close, there will be a second count.",
            kurdishText:
                "ئەگەر ئەنجامی ھەڵبژاردنەکە نزیک بێت، ژماردنەوەیەکی دیکە دەبێت.",
            onPressedBritish: () => speakcounts17("en-GB"),
            onPressedAmerican: () => speakcounts17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The bus driver did a quick count of the empty seats.",
            kurdishText:
                "شۆفێری پاسەکە ژماردنێکی خێرای کورسییە بەتاڵەکانی کرد.",
            onPressedBritish: () => speakcounts18("en-GB"),
            onPressedAmerican: () => speakcounts18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "By my count there are eight tracks here that aren't on the band's three albums.",
            kurdishText:
                "بە ژماردن من، ھەشت گۆرانی لێرەن کە لە سێ ئەلبوومی باندەکە نین.",
            onPressedBritish: () => speakcounts19("en-GB"),
            onPressedAmerican: () => speakcounts19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (ناو) ژماردن بە دەستپێکردن لە یەکەوە"),
          SentencesRow(
            englishText: "Raise your leg and hold for a count of ten.",
            kurdishText: "لاقت بەرزبکەوە و ڕایبگرە بە ژماردن تاوەکو دە.",
            onPressedBritish: () => speakcounts20("en-GB"),
            onPressedAmerican: () => speakcounts20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "On the count of three, take one step forward.",
            kurdishText: "بە ژماردن تاوەکو سێ، ھەنگاوێک بۆ پێشەوە بنێ.",
            onPressedBritish: () => speakcounts21("en-GB"),
            onPressedAmerican: () => speakcounts21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ناو) پێوانی ڕێژەی شتێک کە لە ناوچەیەک یان شتێکە"),
          SentencesRow(
            englishText: "Her white cell count has gone down again.",
            kurdishText: "ڕێژەی خڕۆکە سپییەکانی دووبارە دابەزیون.",
            onPressedBritish: () => speakcounts22("en-GB"),
            onPressedAmerican: () => speakcounts22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (ناو) تاوانێک کە کەسێک بە ئەنجامدانی تاوانبار کراوە"),
          SentencesRow(
            englishText: "They were found guilty on all counts.",
            kurdishText: "بە تاوانباری ھەموو تاوانەکان دانران.",
            onPressedBritish: () => speakcounts23("en-GB"),
            onPressedAmerican: () => speakcounts23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (ناو) خاڵێک لە گفتوگۆیەک یان مشتومڕێک"),
          SentencesRow(
            englishText: "I disagree with you on both counts.",
            kurdishText: "لە ھەردوو خاڵەکەدا لەگەڵت ناکۆکم.",
            onPressedBritish: () => speakcounts24("en-GB"),
            onPressedAmerican: () => speakcounts24("en-US"),
          ),
        ],
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: count (derived forms: counting, counted, counts)
1. Determine the number or amount of (= number, enumerate, numerate)
"Count your change"; "Can you count the books on your shelf?";
 
2. Have weight; have import, carry weight (= matter, weigh)
 
3. Show consideration for; take into account (= consider, weigh)
"You must count her age";
 
4. Name or recite the numbers in ascending order
"The toddler could count to 100"
 
5. Put into a group (= number)
"The academy counts several Nobel Prize winners among its members";

6. Include as if by counting
"I can count my colleagues in the opposition"
 
7. Have a certain value or carry a certain weight
"each answer counts as three points"
 
8. Have faith or confidence in (= bet, depend, swear, rely, bank, look, calculate, reckon)
"you can count on me to help you any time";
 
9. Take account of (= reckon)
"Count on the monsoon";

- Noun: count (derived forms: counts)
1. The total number counted
"a blood count"
 
2. The act of counting; reciting numbers in ascending order (= counting, numeration, enumeration, reckoning, tally)
"the count continued for several hours";
 
3. A nobleman (in various countries) having rank equal to a British earl
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'fZ9WiuJPnNA';
  final double _startSeconds = 20;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 2750;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'bRVueBoZjEA';
  final double _startSeconds = 124;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'BNPPMs9CvDQ';
  final double _startSeconds = 126;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'b7ITL2VDH5Q';
  final double _startSeconds = 150;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'QY7BWZ_aSc4';
  final double _startSeconds = 26;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'ltU3ms9rt5w';
  final double _startSeconds = 56;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
        // YoutubeEmbeddedseven(),
        // YoutubeEmbeddedeight(),
        // YoutubeEmbeddednine(),
        // YoutubeEmbeddedten(),
        // YoutubeEmbeddedeleven(),
        // YoutubeEmbeddedtwelve(),
        // YoutubeEmbeddedthirteen(),
        // YoutubeEmbeddeddfourteen(),
        // YoutubeEmbeddedfifteen(),
        // YoutubeEmbeddeddsixteen(),
        // YoutubeEmbeddeddseventeen(),
        // YoutubeEmbeddeddeighteen(),
        // YoutubeEmbeddeddnineteen(),
        // YoutubeEmbeddedtwenty(),
        // YoutubeEmbeddedmulti(),
        YoutubeEmbeddedend(),
      ],
    );
  }
}

// end WORD_WEB