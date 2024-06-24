import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydate extends StatefulWidget {
  const EnglishEntrydate({super.key});

  @override
  State<EnglishEntrydate> createState() => _EnglishEntrydateState();
}

class _EnglishEntrydateState extends State<EnglishEntrydate> {
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
              // TitleOfEntryAlso(),
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
    return const EntryTitle(word: "date");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: date");
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
    return const IPAofEnglish(text: "IpaUK: /deɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdate(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("date");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /deɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdate(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("date");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdates1(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Write today's date at the top of the page.");
  }

  Future<void> speakdates2(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They haven't set a date for the wedding yet.");
  }

  Future<void> speakdates3(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We need to fix a date for the next meeting.");
  }

  Future<void> speakdates4(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can't come on that date.");
  }

  Future<void> speakdates5(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please give your name, address and date of birth.");
  }

  Future<void> speakdates6(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's no date on this letter.");
  }

  Future<void> speakdates7(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("1066 is the most famous date in English history.");
  }

  Future<void> speakdates8(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I hated history at school—I could never remember all those dates.");
  }

  Future<void> speakdates9(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The painting bears the date 1626.");
  }

  Future<void> speakdates10(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The details can be added at a later date.");
  }

  Future<void> speakdates11(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The work will be carried out at a future date.");
  }

  Future<void> speakdates12(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Call me next week and we'll try and make a date.");
  }

  Future<void> speakdates13(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Next Friday? Fine—it's a date!");
  }

  Future<void> speakdates14(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(" I've got a date with Lucy tomorrow night.");
  }

  Future<void> speakdates15(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We agreed to go out on a date.");
  }

  Future<void> speakdates16(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's out on a date with her new boyfriend.");
  }

  Future<void> speakdates17(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My date is meeting me at seven.");
  }

  Future<void> speakdates18(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I need to find a date for Friday.");
  }

  Future<void> speakdates19(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Thank you for your letter dated 24th March.");
  }

  Future<void> speakdates20(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The forms should be dated and signed and sent back immediately.");
  }

  Future<void> speakdates21(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It has not yet been possible to date the paintings accurately.");
  }

  Future<void> speakdates22(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The skeleton has been dated at about 2000 BC.");
  }

  Future<void> speakdates23(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The manuscript has been dated to the sixteenth century.");
  }

  Future<void> speakdates24(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She designs classic clothes which do not date.");
  }

  Future<void> speakdates25(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I remember the 1958 coup—that dates me, doesn't it?");
  }

  Future<void> speakdates26(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's been dating Ron for several months.");
  }

  Future<void> speakdates27(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How long have you two been dating?");
  }

  Future<void> speakdates28(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She bought a box of fresh dates from the market.");
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
کوردی: ڕێکەوت، ھلکەفت، ڕۆژومانگ، مێژوو، ڕۆژکەوت،	سەردەم، سەروبەند، قۆناخ، چەرخ،	بڕیار، بڕیاری یەکتربینین، بەڵێنی (چ لەباری کۆمەڵایەتی یا دڵداری‌یەوە)،	دەزگیران، دۆستی کچ، دۆستی کوڕ، خورما
"""),
          const DefinitionKurdish(
              text: "١. (ناو) بەروار؛ ڕۆژێکی دیاریکراوی مانگ"),
          SentencesRow(
            englishText: "Write today's date at the top of the page.",
            kurdishText: "ڕێکەوتی ئەمڕۆ لە سەرەوەی پەڕەکە بنووسە.", // date
            onPressedBritish: () => speakdates1("en-GB"),
            onPressedAmerican: () => speakdates1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They haven't set a date for the wedding yet.",
            kurdishText:
                "ھێشتا ڕێککەوتێکیان بۆ ئاھەنگی ھاوسەرگیرییەکە دانەناوە.",
            onPressedBritish: () => speakdates2("en-GB"),
            onPressedAmerican: () => speakdates2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "I can't come on that date.",
                    kurdishText: "ناتوانم لەو ڕێکەوتەدا بێم.",
                    onPressedBritish: () => speakdates4("en-GB"),
                    onPressedAmerican: () => speakdates4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "We need to fix a date for the next meeting.",
                    kurdishText: "دەبێت کاتێک دابنێین بۆ کۆبوونەوەی داھاتوو.",
                    onPressedBritish: () => speakdates3("en-GB"),
                    onPressedAmerican: () => speakdates3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Please give your name, address and date of birth.",
                    kurdishText:
                        "تکایە و ناو، ناونیشان و ڕێکەوتی لەدایکبوونتم پێبدە.",
                    onPressedBritish: () => speakdates5("en-GB"),
                    onPressedAmerican: () => speakdates5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "There's no date on this letter.",
                    kurdishText: "ھیچ ڕێکەوتێک لەسەر ئەم نامەیە نییە.",
                    onPressedBritish: () => speakdates6("en-GB"),
                    onPressedAmerican: () => speakdates6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ڕێکەوتێک یان ساڵێکی دیاریکراو کە ڕووداوێک ڕوویداوە یان ڕوودەدات"),
          SentencesRow(
            englishText: "1066 is the most famous date in English history.",
            kurdishText: "١٠٦٦ بەناوبانگترین ساڵە لە مێژووی ئینگلیزدا.",
            onPressedBritish: () => speakdates7("en-GB"),
            onPressedAmerican: () => speakdates7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I hated history at school—I could never remember all those dates.",
            kurdishText:
                "لە قوتابجانە ڕقم لە مێژوو بوو، ھەرگیز نەمدەتوانی ھەموو ئەو ڕێکەوتانەم بیربکەوێتەوە.",
            onPressedBritish: () => speakdates8("en-GB"),
            onPressedAmerican: () => speakdates8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The painting bears the date 1626.",
            kurdishText: "تابلۆکە ساڵی ١٩٢٦ ـی لەسەر نووسراوە.",
            onPressedBritish: () => speakdates9("en-GB"),
            onPressedAmerican: () => speakdates9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) کاتێک لە ڕابردوو یان داھاتوو کە ڕۆژێکی دیاریکراو نییە"),
          SentencesRow(
            englishText: "The details can be added at a later date.",
            kurdishText: "وردەکارییەکان دەکرێت لە کاتێکی دواتردا زیاد بکرێت.",
            onPressedBritish: () => speakdates10("en-GB"),
            onPressedAmerican: () => speakdates10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The work will be carried out at a future date.",
            kurdishText: "کارەکە لە کاتێکدا لە داھاتوودا دەکرێت.",
            onPressedBritish: () => speakdates11("en-GB"),
            onPressedAmerican: () => speakdates11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) ڕێککەوتنێک بۆ بینینی کەسێک لە کاتێکی دیاریکراودا"),
          SentencesRow(
            englishText: "Call me next week and we'll try and make a date.",
            kurdishText:
                "ھەفتەی داھاتوو پەیوەندیم پێوە بکە و ھەوڵ دەدەین و ڕێکەوتێک دادەنێین.",
            onPressedBritish: () => speakdates12("en-GB"),
            onPressedAmerican: () => speakdates12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Next Friday? Fine—it's a date!",
            kurdishText: "ھەفتەی داھاتوو؟ تەواوە ـ ڕێکەوتمانە.",
            onPressedBritish: () => speakdates13("en-GB"),
            onPressedAmerican: () => speakdates13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) ژوانێک لە نێوان دوو دڵداردا"),
          SentencesRow(
            englishText: " I've got a date with Lucy tomorrow night.",
            kurdishText: "سبەی شەو ژوانێکم ھەیە لەگەڵ لوسیدا.",
            onPressedBritish: () => speakdates14("en-GB"),
            onPressedAmerican: () => speakdates14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We agreed to go out on a date.",
            kurdishText: "ڕازی بووین بچینە ژوانێک.",
            onPressedBritish: () => speakdates15("en-GB"),
            onPressedAmerican: () => speakdates15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's out on a date with her new boyfriend.",
            kurdishText: "لەگەڵ دۆستە کوڕە تازەکەیدا لە ژوانە.",
            onPressedBritish: () => speakdates16("en-GB"),
            onPressedAmerican: () => speakdates16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) دۆستێکی کوڕ یان کچ کە لەگەڵیدا لە ژوانی"),
          SentencesRow(
            englishText: "My date is meeting me at seven.",
            kurdishText: "دۆستەکەم لە حەوت دێتە لام.",
            onPressedBritish: () => speakdates17("en-GB"),
            onPressedAmerican: () => speakdates17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I need to find a date for Friday.",
            kurdishText: "دەبێت دۆستێک بۆ ھەینی بدۆزمەوە.",
            onPressedBritish: () => speakdates18("en-GB"),
            onPressedAmerican: () => speakdates18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) خورما"),
          SentencesRow(
            englishText: "She bought a box of fresh dates from the market.",
            kurdishText: "پاکەتێک خورمای تازەی لە مارکێتەکە کڕی.",
            onPressedBritish: () => speakdates28("en-GB"),
            onPressedAmerican: () => speakdates28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) نووسینی ڕێکەوت لەسەر شتێک"),
          SentencesRow(
            englishText: "Thank you for your letter dated 24th March.",
            kurdishText: "سوپاس بۆ نامەکەت کە ٢٤ ـی ئاداری لێ نووسراوە.",
            onPressedBritish: () => speakdates19("en-GB"),
            onPressedAmerican: () => speakdates19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The forms should be dated and signed and sent back immediately.",
            kurdishText:
                "فۆرمەکان دەبێت ڕێکەوت و واژۆیان لێ بدرێت و دەستبەجێ بگەڕێندرێنەوە.",
            onPressedBritish: () => speakdates20("en-GB"),
            onPressedAmerican: () => speakdates20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (کردار) دەستنیشانکردنی تەمەنی شتێک"),
          SentencesRow(
            englishText:
                "It has not yet been possible to date the paintings accurately.",
            kurdishText:
                "نەگونجاوە کە بە درووستی تەمەنی تابلۆکان دەستنیشان بکرێت.",
            onPressedBritish: () => speakdates21("en-GB"),
            onPressedAmerican: () => speakdates21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The skeleton has been dated at about 2000 BC.",
            kurdishText:
                "تەمەنی ئێسکە پەیکەرەکە بۆ نزیکەی ٢٠٠٠ پ.ز دەستنیشان کراوە.",
            onPressedBritish: () => speakdates22("en-GB"),
            onPressedAmerican: () => speakdates22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The manuscript has been dated to the sixteenth century.",
            kurdishText: "بەڵگەنامەکە بۆ سەدەی شازدە گەڕێندراوەتەوە.",
            onPressedBritish: () => speakdates23("en-GB"),
            onPressedAmerican: () => speakdates23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) کۆن بوون بەشێوەیەک چی دیکە باو نییە"),
          SentencesRow(
            englishText: "She designs classic clothes which do not date.",
            kurdishText: "کە جلە کلاسیکییانە دیزاین دەکات کە کۆنەباو نابن.",
            onPressedBritish: () => speakdates24("en-GB"),
            onPressedAmerican: () => speakdates24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) شتێک کە ئەوە دەردەخات کە بەتەمەنیت یان بەتەمەنتریت لە دەرووبەرت"),
          SentencesRow(
            englishText: "I remember the 1958 coup—that dates me, doesn't it?",
            kurdishText:
                "کودەتاکەی ١٩٥٨ بیرم دێت ـ ئەوە بەتەمەنم دەکات، وانییە؟",
            onPressedBritish: () => speakdates25("en-GB"),
            onPressedAmerican: () => speakdates25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) ھەبوونی پەیوەندی سۆزداری لەگەڵ کەسێکدا"),
          SentencesRow(
            englishText: "She's been dating Ron for several months.",
            kurdishText: "بۆ چەند مانگێکە پەیوەندی لەگەڵ ڕۆن ھەیە.",
            onPressedBritish: () => speakdates26("en-GB"),
            onPressedAmerican: () => speakdates26("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "How long have you two been dating?",
            kurdishText: "چەند دەبێت ئەو دووانەتان پەیوەندیتان ھەیە؟",
            onPressedBritish: () => speakdates27("en-GB"),
            onPressedAmerican: () => speakdates27("en-US"),
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
- Noun: date (derived forms: dates)
1. The specified day of the month (= day of the month)
"what is the date today?";
 
2. A meeting arranged in advance (= appointment, engagement)
"she asked how to avoid kissing at the end of a date";
 
3. A participant in a date (= escort)
"his date never stopped talking";
 
4. The present
"they are up to date"; "we haven't heard from them to date"
 
5. The particular day, month, or year (usually according to the Gregorian calendar) that an event occurred
"he tried to memorizes all the dates for his history class"
 
6. A particular day specified as the time something happens
"the date of the election is set by law"; "we hope to get together at an early date"; "Mother's Day is always on the same date"
 
7. Sweet edible fruit of the date palm with a single long woody seed

- Verb: date (derived forms: dating, dates, dated)
1. Meet with a lover or potential lover
"Tonight she is dating a former high school sweetheart"
 
2. Stamp with a date (= date stamp)
"The package is dated November 24";
 
3. Assign a date to; determine the (probable) date of
"Scientists often cannot date precisely archeological or prehistorical findings"
 
4. Date regularly; have a steady relationship with (= go steady, go out, see)
"He is dating his former wife again!";
 
5. Provide with a dateline; mark with a date
"She wrote the letter on Monday but she dated it Saturday so as not to reveal that she procrastinated"
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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 194;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'j1BfO7VlIw4';
  final double _startSeconds = 344;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'QtrRtGC3G_I';
  final double _startSeconds = 28;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'QtrRtGC3G_I';
  final double _startSeconds = 33;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'OjsQ78t_0_M';
  final double _startSeconds = 30;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 1274;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 1272;

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