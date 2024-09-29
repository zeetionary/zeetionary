import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycost extends StatefulWidget {
  const EnglishEntrycost({super.key});

  @override
  State<EnglishEntrycost> createState() => _EnglishEntrycostState();
}

class _EnglishEntrycostState extends State<EnglishEntrycost> {
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
    return const EntryTitle(word: "cost");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cost");
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
    return const IPAofEnglish(text: "IpaUK: /kɒst/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcost(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cost");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcost("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kɔːst/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcost(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cost");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcost("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcosts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A new computer system has been installed at a cost of £80 000.");
  }

  Future<void> speakcosts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You could buy a used car at a fraction of the cost of a new one.");
  }

  Future<void> speakcosts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We did not even make enough money to cover the cost of the food.");
  }

  Future<void> speakcosts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plan had to be abandoned on grounds of cost.");
  }

  Future<void> speakcosts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The total cost to you is £3 000.");
  }

  Future<void> speakcosts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Energy is a major cost for businesses.");
  }

  Future<void> speakcosts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She estimates the cost for this project at £150 000.");
  }

  Future<void> speakcosts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I would put the cost of a new employee at £80 000 a year.");
  }

  Future<void> speakcosts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Now people can access the internet at minimal cost.");
  }

  Future<void> speakcosts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The use of cheap labour helped to keep costs down.");
  }

  Future<void> speakcosts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Reducing costs means we can keep prices as low as possible.");
  }

  Future<void> speakcosts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We have to find new ways of cutting costs.");
  }

  Future<void> speakcosts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She saved him from the fire at the cost of her own life.");
  }

  Future<void> speakcosts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Victory came at a high cost.");
  }

  Future<void> speakcosts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They advanced a few hundred metres, but at a heavy cost in life.");
  }

  Future<void> speakcosts16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He worked non-stop for three months, at considerable cost to his health.");
  }

  Future<void> speakcosts17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The victory was achieved at great cost to the country's infrastructure.");
  }

  Future<void> speakcosts18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do the benefits outweigh the costs?");
  }

  Future<void> speakcosts19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Both sides incurred costs of over £50 000.");
  }

  Future<void> speakcosts20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was ordered to pay £2 000 costs.");
  }

  Future<void> speakcosts21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How much did it cost?");
  }

  Future<void> speakcosts22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I didn't get it because it cost too much.");
  }

  Future<void> speakcosts23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Tickets cost ten dollars each.");
  }

  Future<void> speakcosts24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Don't use too much of it—it cost a lot of money.");
  }

  Future<void> speakcosts25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All these reforms will cost money.");
  }

  Future<void> speakcosts26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Good food need not cost a fortune.");
  }

  Future<void> speakcosts27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The meal cost us about £40.");
  }

  Future<void> speakcosts28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This is costing the taxpayer £10 billion a year.");
  }

  Future<void> speakcosts29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That one mistake almost cost him his life.");
  }

  Future<void> speakcosts30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The allegations cost me my job.");
  }

  Future<void> speakcosts31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A penalty cost United the game.");
  }

  Future<void> speakcosts32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Such behaviour could cost you your place in the team.");
  }

  Future<void> speakcosts33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The closure of the factory is likely to cost 1 000 jobs.");
  }

  Future<void> speakcosts34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The war has cost the lives of countless civilians.");
  }

  Future<void> speakcosts35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The accident cost me a visit to the doctor.");
  }

  Future<void> speakcosts36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Financial worries cost her many sleepless nights.");
  }

  Future<void> speakcosts37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She would never know how much it cost him to tell her.");
  }

  Future<void> speakcosts38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The project needs to be costed in detail.");
  }

  Future<void> speakcosts39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you costed out these proposals yet?");
  }

  Future<void> speakcosts40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A penalty cost United the game.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: خەرج، خەرج‌وبار، تێچوون، بەخت، مەزاخ،	بەھا، نرخ، بایی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بڕی پارەی پێویست بۆ کڕین، درووستکردن، یان کردنی شتێک"),
          SentencesRow(
            englishText:
                "A new computer system has been installed at a cost of £80 000.",
            kurdishText:
                "سیستەمێکی تازەی کۆمپیوتەر بە خەرجی ٨٠٠٠٠ پاوەند دامەزراوە.",
            onPressedBritish: () => speakcosts1("en-GB"),
            onPressedAmerican: () => speakcosts1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "You could buy a used car at a fraction of the cost of a new one.",
                    kurdishText:
                        "دەتوانیت ئۆتۆمبێلێکی بەکارھێنراو بە تێچوویەکی کەمی یەکێکی تازە بکڕیت.",
                    onPressedBritish: () => speakcosts2("en-GB"),
                    onPressedAmerican: () => speakcosts2("en-US"),
                  ),
                  SentencesRow(
                    englishText:
                        "We did not even make enough money to cover the cost of the food.",
                    kurdishText:
                        "تەنانەت ھێندە پارەی پێویستمان پەیدا نەکرد کە تێچووی خۆراک بکەین.",
                    onPressedBritish: () => speakcosts3("en-GB"),
                    onPressedAmerican: () => speakcosts3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The plan had to be abandoned on grounds of cost.",
                    kurdishText:
                        "پلانەکە دەبوو وازی لێبھێنرێت بە ھۆکای تێچووەکەی.",
                    onPressedBritish: () => speakcosts4("en-GB"),
                    onPressedAmerican: () => speakcosts4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The total cost to you (= the amount you have to pay) is £3 000.",
                    kurdishText: "خەرجی گشتیت ٣٠٠٠ پاوەندە.",
                    onPressedBritish: () => speakcosts5("en-GB"),
                    onPressedAmerican: () => speakcosts5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Energy is a major cost for businesses.",
                    kurdishText: "وزە خەرجییەکی گەورەی بازرگانییەکانە.",
                    onPressedBritish: () => speakcosts6("en-GB"),
                    onPressedAmerican: () => speakcosts6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She estimates the cost for this project at £150 000.",
                    kurdishText:
                        "تێچووی ئەم پڕۆژەیە بە ١٥٠٠٠٠ پاوەند دەخەمڵێنێت.",
                    onPressedBritish: () => speakcosts7("en-GB"),
                    onPressedAmerican: () => speakcosts7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "I would put the cost of a new employee at £80 000 a year.",
                    kurdishText:
                        "خەرجی کارمەندێکی تازە بە ٨٠٠٠٠ پاوەند لە ساڵێکدا دادەنێم.",
                    onPressedBritish: () => speakcosts8("en-GB"),
                    onPressedAmerican: () => speakcosts8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Now people can access the internet at minimal cost.",
                    kurdishText:
                        "ئێستا خەڵکی دەتوانن ئینتەرنێت بەکاربێنن بە خەرجییەکی کەم.",
                    onPressedBritish: () => speakcosts9("en-GB"),
                    onPressedAmerican: () => speakcosts9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) تەواوی تێچووی بازرگانییەک"),
          SentencesRow(
            englishText: "The use of cheap labour helped to keep costs down.",
            kurdishText:
                "بەکارھێنانی دەستی کاری ھەرزان یارمەتیدەر بوو لە ھێشتنەوەی نرخەکان بە کەمی.",
            onPressedBritish: () => speakcosts10("en-GB"),
            onPressedAmerican: () => speakcosts10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Reducing costs means we can keep prices as low as possible.",
            kurdishText:
                "کەمکردنەوەی خەرجییەکان واتا دەتوانین نرخەکان تا بکرێت بە نزمی بھێڵینەوە.",
            onPressedBritish: () => speakcosts11("en-GB"),
            onPressedAmerican: () => speakcosts11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We have to find new ways of cutting costs.",
            kurdishText: "دەبێت ڕێگای تازەی کەمکردنەوەی خەرجی بدۆزینەوە.",
            onPressedBritish: () => speakcosts12("en-GB"),
            onPressedAmerican: () => speakcosts12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) ھەوڵدان، لەدەستدان، یان زیان کە پێویستە بۆ بەدەستھێنانی شتێک"),
          SentencesRow(
            englishText:
                "She saved him from the fire at the cost of her own life (= she died).",
            kurdishText: "بە ژیانی خۆی لە ئاگرەکە ڕزگاری کرد.",
            onPressedBritish: () => speakcosts13("en-GB"),
            onPressedAmerican: () => speakcosts13("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "Victory came at a high cost.",
                    kurdishText: "سەرکەوتن بە قوربانییەکی زۆر بەدەستھات.",
                    onPressedBritish: () => speakcosts14("en-GB"),
                    onPressedAmerican: () => speakcosts14("en-US"),
                  ),
                  SentencesRow(
                    englishText:
                        "They advanced a few hundred metres, but at a heavy cost in life.",
                    kurdishText:
                        "چەند سەد ماترێک پێشڕەوییان کرد بەڵام بە تێچوویەکی زۆری ژیان.",
                    kurdishNote: "سەربازی زۆریان لەدەستدا",
                    onPressedBritish: () => speakcosts15("en-GB"),
                    onPressedAmerican: () => speakcosts15("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "He worked non-stop for three months, at considerable cost to his health.",
                    kurdishText:
                        "بێ وەستان بۆ سێ مانگ کاری کرد، بە زیانێکی زۆر بۆ تەندرووستیی.",
                    onPressedBritish: () => speakcosts16("en-GB"),
                    onPressedAmerican: () => speakcosts16("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The victory was achieved at great cost to the country's infrastructure.",
                    kurdishText:
                        "سەرکەوتن بەدەستھێنرا بە تێچوویەکی زۆری ژێرخانی وڵاتەکە.",
                    onPressedBritish: () => speakcosts17("en-GB"),
                    onPressedAmerican: () => speakcosts17("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Do the benefits outweigh the costs?",
                    kurdishText: "سوودەکان لە زیانەکان زیاتر دەبن؟",
                    onPressedBritish: () => speakcosts18("en-GB"),
                    onPressedAmerican: () => speakcosts18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) بڕە پارەیەی کە کەسێک فەرمانی پێدەکرێت بیدات لە کەیسێکی یاساییدا"),
          SentencesRow(
            englishText: "Both sides incurred costs of over £50 000.",
            kurdishText:
                "ھەردوو لایان تێچووی سەروو ٥٠٠٠٠ پاوەندیان کەوتە ئەستۆ.",
            onPressedBritish: () => speakcosts19("en-GB"),
            onPressedAmerican: () => speakcosts19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was ordered to pay £2 000 costs.",
            kurdishText: "فەرمانی پێکرا خەرجی ٢٠٠٠ پاوەند بدات.",
            onPressedBritish: () => speakcosts20("en-GB"),
            onPressedAmerican: () => speakcosts20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) تێچوون"),
          SentencesRow(
            englishText: "How much did it cost?",
            kurdishText: "چەندی تێچوو؟",
            onPressedBritish: () => speakcosts21("en-GB"),
            onPressedAmerican: () => speakcosts21("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "I didn't get it because it cost too much.",
                    kurdishText: "نەمکڕی چونکە تێچووی زۆر بوو.",
                    onPressedBritish: () => speakcosts22("en-GB"),
                    onPressedAmerican: () => speakcosts22("en-US"),
                  ),
                  SentencesRow(
                    englishText: "Tickets cost ten dollars each.",
                    kurdishText: "بلیت ١٠ دۆلاری تێدەچێت.",
                    onPressedBritish: () => speakcosts23("en-GB"),
                    onPressedAmerican: () => speakcosts23("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Don't use too much of it—it cost a lot of money.",
                    kurdishText: "زۆری لێ بەکارمەھێنە، پارەی زۆری تێدەچێت.",
                    onPressedBritish: () => speakcosts24("en-GB"),
                    onPressedAmerican: () => speakcosts24("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "All these reforms will cost money (= be expensive).",
                    kurdishText: "ھەموو چاکسازییانە پارەی تێدەچێت.",
                    onPressedBritish: () => speakcosts25("en-GB"),
                    onPressedAmerican: () => speakcosts25("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Good food need not cost a fortune (= cost a lot of money).",
                    kurdishText: "خواردنی باش نابێت سەروەتێکی تێبچێت.",
                    onPressedBritish: () => speakcosts26("en-GB"),
                    onPressedAmerican: () => speakcosts26("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The meal cost us about £40.",
                    kurdishText: "خواردنەکە نزیکەی ٤٠ پاوەند دەکەوێت لەسەرمان.",
                    onPressedBritish: () => speakcosts27("en-GB"),
                    onPressedAmerican: () => speakcosts27("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "This is costing the taxpayer £10 billion a year.",
                    kurdishText:
                        "ئەمە ١٠ ملیار دۆلار لە ساڵێکدا لەسەر باجدەران دەکەوێت.",
                    onPressedBritish: () => speakcosts28("en-GB"),
                    onPressedAmerican: () => speakcosts28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بوون بە ھۆکاری لەدەستدانی شتێک"),
          SentencesRow(
            englishText: "That one mistake almost cost him his life.",
            kurdishText: "ئەو تاکە ھەڵە بەنزیکەیی ژیانی بسەنێت.",
            onPressedBritish: () => speakcosts29("en-GB"),
            onPressedAmerican: () => speakcosts29("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "The allegations cost me my job.",
                    kurdishText: "تۆمەتەکان کارەکەمی سەند.",
                    onPressedBritish: () => speakcosts30("en-GB"),
                    onPressedAmerican: () => speakcosts30("en-US"),
                  ),
                  SentencesRow(
                    englishText:
                        "A penalty cost United the game (= meant that they did not win the game).",
                    kurdishText:
                        "لێدانێکی سزا یارییەکەی دا بە دەستەوە بۆ یونایتید.",
                    onPressedBritish: () => speakcosts31("en-GB"),
                    onPressedAmerican: () => speakcosts31("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Such behaviour could cost you your place in the team.",
                    kurdishText:
                        "ئەو ھەڵسوکەوتە دەکرێت پێگەت لە تیمەکە کۆتایی پێبھێنێت.",
                    onPressedBritish: () => speakcosts32("en-GB"),
                    onPressedAmerican: () => speakcosts32("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The closure of the factory is likely to cost 1 000 jobs.",
                    kurdishText:
                        "داخرانی کارگەکە ئەگەری ھەیە ١٠٠٠ ھەلی کار لەدەستبدات.",
                    onPressedBritish: () => speakcosts33("en-GB"),
                    onPressedAmerican: () => speakcosts33("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The war has cost the lives of countless civilians..",
                    kurdishText: "جەنگەکە ژیانی ھاوڵاتییانی زۆری تێچووە.",
                    onPressedBritish: () => speakcosts34("en-GB"),
                    onPressedAmerican: () => speakcosts34("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) بوون بەھۆی ھەوڵدانێک یان کردنی شتێکی ناخۆش"),
          SentencesRow(
            englishText: "The accident cost me a visit to the doctor.",
            kurdishText: "ڕووداوەکە بوو بەھۆی سەردانێکم بۆ لای دکتۆر.",
            onPressedBritish: () => speakcosts35("en-GB"),
            onPressedAmerican: () => speakcosts35("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "Financial worries cost her many sleepless nights.",
                    kurdishText: "نیگەرانی دارایی بوو بەھۆی زۆر شەوی بێداریی.",
                    onPressedBritish: () => speakcosts36("en-GB"),
                    onPressedAmerican: () => speakcosts36("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She would never know how much it cost him to tell her.",
                    kurdishText: "ھەرگیز نازانێت چەندی تێدەچێت کە پێی بڵێت.",
                    onPressedBritish: () => speakcosts37("en-GB"),
                    onPressedAmerican: () => speakcosts37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) خەمڵاندنی تێچوون یان نرخی شتێک"),
          SentencesRow(
            englishText: "The project needs to be costed in detail.",
            kurdishText:
                "پڕۆژەکە دەبێت بە وردەکارییەوە تێچوونەکەی لێکبدرێتەوە.",
            onPressedBritish: () => speakcosts38("en-GB"),
            onPressedAmerican: () => speakcosts38("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Have you costed out these proposals yet?",
            kurdishText: "تێچووی ئەم پێشنیارانەت خەمڵاندووە؟",
            onPressedBritish: () => speakcosts39("en-GB"),
            onPressedAmerican: () => speakcosts39("en-US"),
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: cost (derived forms: cost, costs)
1. The total spent for goods or services including money and time and labour
 
2. The property of having material worth (often indicated by the amount of money something would bring if sold) (= monetary value, price)
"he couldn't calculate the cost of the collection";
 
3. Value measured by what must be given, done or undergone to obtain something (= price, toll)
"the cost in human life was enormous";

- Verb: cost (derived forms: cost, costs, costed, costing)
1. Be priced at (= be)
"These shoes cost £100";
 
2. Require to lose, suffer, or sacrifice
"This mistake cost him his job"

3. Calculate the expense or expenses
"the new building is not yet fully costed"
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

  final String _videoId = 't6fIp7mMJ90';
  final double _startSeconds = 116;

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

  final String _videoId = 'lYu1ysDULwA';
  final double _startSeconds = 348;

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

  final String _videoId = 'UuGpm01SPcA';
  final double _startSeconds = 121;

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

  final String _videoId = '043CQXHfx10';
  final double _startSeconds = 583;

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

  final String _videoId = 'BZbChKzedEk';
  final double _startSeconds = 629;

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

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 859;

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

  final String _videoId = '-cPdImejxEQ';
  final double _startSeconds = 158;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'FD5tIIkccHY';
  final double _startSeconds = 89;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'QCdqHswGS5A';
  final double _startSeconds = 22;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'j-zCKl_eda4';
  final double _startSeconds = 53;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'nOOZ5FEA-o0';
  final double _startSeconds = 102;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'lLBmElR0Luw';
  final double _startSeconds = 213;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'smgwK6I57PI';
  final double _startSeconds = 298;

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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'TWg8KL2AXmc';
  final double _startSeconds = 86;

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
        YoutubeEmbeddedseven(),
        YoutubeEmbeddedeight(),
        YoutubeEmbeddednine(),
        YoutubeEmbeddedten(),
        YoutubeEmbeddedeleven(),
        YoutubeEmbeddedtwelve(),
        YoutubeEmbeddedthirteen(),
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