import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycorner extends StatefulWidget {
  const EnglishEntrycorner({super.key});

  @override
  State<EnglishEntrycorner> createState() => _EnglishEntrycornerState();
}

class _EnglishEntrycornerState extends State<EnglishEntrycorner> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "corner");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: corner");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkɔːnə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorner(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corner");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcorner("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkɔːrnər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorner(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corner");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcorner("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorners1(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I hit my knee on the corner of the table.");
  }

  Future<void> speakcorners2(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Write your address in the top right-hand corner of the letter.");
  }

  Future<void> speakcorners3(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A smile lifted the corner of his mouth.");
  }

  Future<void> speakcorners4(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She tucked the ball into the corner of the net.");
  }

  Future<void> speakcorners5(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The captain wore a three-cornered hat as part of his uniform.");
  }

  Future<void> speakcorners6(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A large desk occupies another corner of the room.");
  }

  Future<void> speakcorners7(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They made straight for the table in the corner.");
  }

  Future<void> speakcorners8(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She tucked herself away in a corner and read all day.");
  }

  Future<void> speakcorners9(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The wind hit him as he turned the corner.");
  }

  Future<void> speakcorners10(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was a group of youths standing on the street corner.");
  }

  Future<void> speakcorners11(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bus stop is around the corner, I think.");
  }

  Future<void> speakcorners12(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Turn right at the first corner.");
  }

  Future<void> speakcorners13(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car was taking the corners too fast.");
  }

  Future<void> speakcorners14(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("As they turned the corner all the bags slid to one side.");
  }

  Future<void> speakcorners15(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She lives in a quiet corner of rural Yorkshire.");
  }

  Future<void> speakcorners16(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He knew every corner of the old town.");
  }

  Future<void> speakcorners17(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was used to talking his way out of tight corners.");
  }

  Future<void> speakcorners18(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It is important to avoid being pushed into a corner.");
  }

  Future<void> speakcorners19(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The referee awarded a corner.");
  }

  Future<void> speakcorners20(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Moore took the corner.");
  }

  Future<void> speakcorners21(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The man was finally cornered by police in a garage.");
  }

  Future<void> speakcorners22(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If cornered, the snake will defend itself.");
  }

  Future<void> speakcorners23(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I found myself cornered by her on the stairs.");
  }

  Future<void> speakcorners24(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They've cornered the market in silver.");
  }

  Future<void> speakcorners25(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car corners well.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: گۆشە، سووچ، قوڕنە، قولینچک، قوژبن، چمک، کونجیک، ئانیشکە، ویرنج، سەرپێچ (وەک ھی سەرکۆڵان)، دەرو و کەنار، چوارقوڕنە، چوارلای دنیا، گۆشە و کەنار،	پاوان‌کاری، قۆرخ‌کاری،	گۆشە، سووچ، کۆرنێر (تۆپێن)،	گیروگرفت، تەنگ‌وچەڵەمە، تەنگانە،	(شەڕەمشت و زۆران‌بازی) ھەریەک لە دوو گۆشەی بەرامبەر کە لە نێوان گەڕەکان‌دا ڕکەبەرەکان دەحەسێنەوە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بەشێکی شتێک کە دوو خاڵ یان ھێڵ تێیدا بە یەکدی دەگەن"),
          SentencesRow(
            englishText: "I hit my knee on the corner of the table.",
            kurdishText:
                "لاقم کێشا بە سووچی مێزەکەدا.", // corner", please follow LX instructions
            onPressedBritish: () => speakcorners1("en-GB"),
            onPressedAmerican: () => speakcorners1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Write your address in the top right-hand corner of the letter.",
            kurdishText:
                "ناونیشانەکەت لە سووچی سەرەوەی دەستە ڕاستی نامەکە بنووسە.",
            onPressedBritish: () => speakcorners2("en-GB"),
            onPressedAmerican: () => speakcorners2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A smile lifted the corner of his mouth.",
            kurdishText: "بزەیەک سووچی دەمی بەرزکردەوە.",
            onPressedBritish: () => speakcorners3("en-GB"),
            onPressedAmerican: () => speakcorners3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She tucked the ball into the corner of the net.",
            kurdishText: "تۆپەکەی خستە سووچی تۆڕەکەوە.",
            onPressedBritish: () => speakcorners4("en-GB"),
            onPressedAmerican: () => speakcorners4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ھەبوونی ژمارەیەکی دیاریکراو لە سووچ یان گۆشە"),
          SentencesRow(
            englishText:
                "The captain wore a three-cornered hat as part of his uniform.",
            kurdishText:
                "کاپتنەکە کڵاوێکی سێ سووچەی لەسەر کرد وەک بەشێک لە جلە یەکپۆشییەکەی.",
            onPressedBritish: () => speakcorners5("en-GB"),
            onPressedAmerican: () => speakcorners5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) سووچی ژوورێک یان سندووقێک"),
          SentencesRow(
            englishText: "A large desk occupies another corner of the room.",
            kurdishText: "مێزێکی گەورە لە سووچێکی دیکەی ژوورەکەیە.",
            onPressedBritish: () => speakcorners6("en-GB"),
            onPressedAmerican: () => speakcorners6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They made straight for the table in the corner.",
            kurdishText: "ڕاستەوخۆ ڕۆشتن بۆ مێزی سووچەکە.",
            onPressedBritish: () => speakcorners7("en-GB"),
            onPressedAmerican: () => speakcorners7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She tucked herself away in a corner and read all day.",
            kurdishText:
                "لە قوژبنێکدا خۆی قەتیز کرد و تەواوی ڕۆژەکە خوێندییەوە.",
            onPressedBritish: () => speakcorners8("en-GB"),
            onPressedAmerican: () => speakcorners8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) شوێنێک کە تێیدا دوو ڕێگا یەک دەگرن"),
          SentencesRow(
            englishText: "The wind hit him as he turned the corner.",
            kurdishText: "بایەکە کێشای پێیدا کە گەشتە سەرپێچەکە.",
            onPressedBritish: () => speakcorners9("en-GB"),
            onPressedAmerican: () => speakcorners9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There was a group of youths standing on the street corner.",
            kurdishText: "ژمارەیەک گەنج لەسەر سووچی شەقامەکە وەستابوون.",
            onPressedBritish: () => speakcorners10("en-GB"),
            onPressedAmerican: () => speakcorners10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The bus stop is around the corner, I think.",
            kurdishText: "پێموایە شوێن وەستانی پاسەکە لە سەرپێچەکەیە.",
            onPressedBritish: () => speakcorners11("en-GB"),
            onPressedAmerican: () => speakcorners11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(englishText: "Turn right at the first corner.",
          kurdishText: "لە یەکەم سووچ پێچبکەوە.",
            onPressedBritish: () => speakcorners12("en-GB"),
            onPressedAmerican: () => speakcorners12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) پێچێکی تیژ لە ڕێگایەکدا"),
          SentencesRow(
            englishText: "The car was taking the corners too fast.",
            kurdishText: "ئۆتۆمبێلەکە زۆر بە خێرایی بە پێچەکاندا تێدەپەڕی.",
            onPressedBritish: () => speakcorners13("en-GB"),
            onPressedAmerican: () => speakcorners13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "As they turned the corner all the bags slid to one side.",
            kurdishText: "کە بە پێچەکەدا تێپەڕین ھەموو جانتاکان لایەک خزان.",
            onPressedBritish: () => speakcorners14("en-GB"),
            onPressedAmerican: () => speakcorners14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) ھەرێمێک یان ناوچەیەکی شوێنێک"),
          SentencesRow(
            englishText: "She lives in a quiet corner of rural Yorkshire.",
            kurdishText: "لە ھەرێمێکی بێ‌دەنگی گوندنشینی یۆرکشێر دەژی.",
            onPressedBritish: () => speakcorners15("en-GB"),
            onPressedAmerican: () => speakcorners15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He knew every corner of the old town.",
            kurdishText: "ھەموو سووچێکی شارە کۆنەکەی دەزانی.",
            onPressedBritish: () => speakcorners16("en-GB"),
            onPressedAmerican: () => speakcorners16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) دۆخێکی سەخت"),
          SentencesRow(
            englishText: "He was used to talking his way out of tight corners.",
            kurdishText: "ڕاھاتبوو بە دەربازبوون لە دۆخە سەختەکان.",
            onPressedBritish: () => speakcorners17("en-GB"),
            onPressedAmerican: () => speakcorners17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It is important to avoid being pushed into a corner.",
            kurdishText: "گرنگە دووربکەویتەوە لەوەی بخرێیتە دۆخێکی سەختەوە.",
            onPressedBritish: () => speakcorners18("en-GB"),
            onPressedAmerican: () => speakcorners18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) لێدانێکی ئازاد لە یاری وەرزشیدا کە لە سووچێکی بەشی یاریگای ڕکابەرەکەتەوە لێیدەدەیت"),
          SentencesRow(
            englishText: "The referee awarded a corner.",
            kurdishText: "ناوبژیوانەکە کۆرنەرێکی بەخشی.",
            onPressedBritish: () => speakcorners19("en-GB"),
            onPressedAmerican: () => speakcorners19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(englishText: "Moore took the corner.",
          kurdishText: "موور کۆرنەرەکەی لێدا.",
            onPressedBritish: () => speakcorners20("en-GB"),
            onPressedAmerican: () => speakcorners20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) دانانی کەسێک یان ئاژەڵێک لە شوێنێک یان دۆخێک کە ناتوانن تێیدا ھەڵبێن"),
          SentencesRow(
            englishText: "The man was finally cornered by police in a garage.",
            kurdishText:
                "پیاوەکە لە کۆتاییدا لەلایەن پۆلیسەوە لە گەراجێکدا دەورەدرا.",
            onPressedBritish: () => speakcorners21("en-GB"),
            onPressedAmerican: () => speakcorners21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "If cornered, the snake will defend itself.",
            kurdishText: "ئەگەر دەور بدرێت، مار بەرگری لە خۆی دەکات.",
            onPressedBritish: () => speakcorners22("en-GB"),
            onPressedAmerican: () => speakcorners22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) بە زۆر چوون بۆ لای کەسێک چونکە دەتەوێت قسەیان لەگەڵدا بکەیت"),
          SentencesRow(
            englishText: "I found myself cornered by her on the stairs.",
            kurdishText: "ڕووبەڕووی بوومەوە لەسەر قادرمەکان.",
            onPressedBritish: () => speakcorners23("en-GB"),
            onPressedAmerican: () => speakcorners23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (کردار) قۆرخکردنی بازاڕێک"),
          SentencesRow(englishText: "They've cornered the market in silver.",
          kurdishText: "بازاڕی زیویان قۆرخکردووە.",
            onPressedBritish: () => speakcorners24("en-GB"),
            onPressedAmerican: () => speakcorners24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) پێچکردنەوە"),
          SentencesRow(
            englishText:
                "The car corners well (= it is easy to go around corners in it).",
            kurdishText: "ئۆتۆمبێلەکە باش پێچ دەکاتەوە.",
            onPressedBritish: () => speakcorners25("en-GB"),
            onPressedAmerican: () => speakcorners25("en-US"),
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

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: corner (derived forms: corners)
1. The point where two lines meet or intersect
"the corners of a rectangle"
 
2. An interior angle formed by two meeting walls (= nook)
"a piano was in one corner of the room";
 
3. The intersection of two streets (= street corner, turning point)
"standing on the corner watching all the girls go by";
 
4. A place off to the side of an area
"he tripled to the rightfield corner"; "the southeastern corner of the Mediterranean"
 
5. The point where three areas or surfaces meet or intersect
"the corners of a cube"
 
6. A small concavity (= recess, recession, niche)
 
7. A temporary monopoly on a kind of commercial trade
"a corner on the silver market"
 
8. A predicament from which a skilful or graceful escape is impossible (= box)
"his lying got him into a tight corner";
 
9. A projecting part where two sides or edges meet
"he knocked off the corners"
 
10. A remote area
"in many corners of the world they still practice slavery"
 
11. (architecture) solid exterior angle of a building; especially one formed by a cornerstone (= quoin)
 
12. A free kick from the corner awarded to the other side when a player has sent the ball behind his own goal line (= corner kick)

- Verb: corner (derived forms: cornered, cornering, corners)
1. Gain control over
"corner the gold market"
 
2. Force a person or an animal into a position from which he cannot escape (= tree [N. Amer])
 
3. Turn a corner or drive around a curve
"the car corners"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '4J0xFUyz1nw';
  final double _startSeconds = 19;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 589;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 428;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 3426;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 1267;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '7j5ul4XBjAI';
  final double _startSeconds = 546;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 646;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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