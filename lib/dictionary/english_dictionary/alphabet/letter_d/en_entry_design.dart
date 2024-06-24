import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydesign extends StatefulWidget {
  const EnglishEntrydesign({super.key});

  @override
  State<EnglishEntrydesign> createState() => _EnglishEntrydesignState();
}

class _EnglishEntrydesignState extends State<EnglishEntrydesign> {
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
    return const EntryTitle(word: "design");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: design");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈzaɪn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesign(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("design");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdesign("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈzaɪn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesign(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("design");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdesign("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesigns1(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The basic design of the car is very similar to that of earlier models.");
  }

  Future<void> speakdesigns2(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The system has a fundamental design flaw.");
  }

  Future<void> speakdesigns3(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The magazine will appear in a new design from next month.");
  }

  Future<void> speakdesigns4(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The machine's unique design prevents it from overheating.");
  }

  Future<void> speakdesigns5(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "One of our main design goals was to make the product easy to use.");
  }

  Future<void> speakdesigns6(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm doing a course in art and design.");
  }

  Future<void> speakdesigns7(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Digital design tools are essential.");
  }

  Future<void> speakdesigns8(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car wouldn't win any design awards, but it's very reliable.");
  }

  Future<void> speakdesigns9(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's done some design work for us in the past.");
  }

  Future<void> speakdesigns10(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has created some new and original designs.");
  }

  Future<void> speakdesigns11(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The original designs were stolen.");
  }

  Future<void> speakdesigns12(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are several laws protecting the ownership of industrial designs.");
  }

  Future<void> speakdesigns13(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The tiles come in a huge range of colours and designs.");
  }

  Future<void> speakdesigns14(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The building has intricate geometric designs on several of the walls.");
  }

  Future<void> speakdesigns15(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is all part of his grand design.");
  }

  Future<void> speakdesigns16(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It happened—whether by accident or design—that the two of them were left alone after all the others had gone.");
  }

  Future<void> speakdesigns17(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Had it happened by accident or by design?");
  }

  Future<void> speakdesigns18(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He designed and built his own house.");
  }

  Future<void> speakdesigns19(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The blocks were specially designed and manufactured in Italy.");
  }

  Future<void> speakdesigns20(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could you design us a poster?");
  }

  Future<void> speakdesigns21(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The method is specifically designed for use in small groups.");
  }

  Future<void> speakdesigns22(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The museum is Missouri's first museum designed specifically for contemporary art.");
  }

  Future<void> speakdesigns23(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The system is designed to alert drivers to traffic jams ahead.");
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
کوردی: دیزاین، نەخش، نەخش‌کێشی،	پلان، گەڵاڵە، نەخشە، تەگبیر،	نیاز، خەیاڵ، مەبەست،	نەخشی جوانی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) شێوازی دانانی شتێک کە بە شێوەیەک دانراوە کە جوان دەربکەوێت"),
          SentencesRow(
            englishText:
                "The basic design of the car is very similar to that of earlier models.",
            kurdishText:
                "دیزاینی سەرەکیی ئۆتۆمبێلەکە زۆر لێکچووە لەگەڵ مۆدێلەکانی پێشتردا.", // design
            onPressedBritish: () => speakdesigns1("en-GB"),
            onPressedAmerican: () => speakdesigns1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "The system has a fundamental design flaw.",
            kurdishText: "سیستەمەکە ھەڵەیەکی سەرەکیی دیزاینی تێدایە.",
            onPressedBritish: () => speakdesigns2("en-GB"),
            onPressedAmerican: () => speakdesigns2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The magazine will appear in a new design from next month.",
            kurdishText:
                "گۆڤارەکە لە مانگی داھاتووەوە بە دیزاینێکی تازەوە بڵاودەبێتەوە.",
            onPressedBritish: () => speakdesigns3("en-GB"),
            onPressedAmerican: () => speakdesigns3("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The machine's unique design prevents it from overheating.",
            kurdishText: "دیزاینی ناوازەی ئامێرەکە لە گەرمبوون دەیپارێزێت.",
            onPressedBritish: () => speakdesigns4("en-GB"),
            onPressedAmerican: () => speakdesigns4("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "One of our main design goals was to make the product easy to use.",
            kurdishText:
                "یەکێک لە ئامانجە سەرەکییەکانی دیزاینمان ئەوە بوو کە بەرھەمەکە ئاسان بکەین بۆ بەکارھێنان.",
            onPressedBritish: () => speakdesigns5("en-GB"),
            onPressedAmerican: () => speakdesigns5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ھونەر یان پڕۆسەی کاری دیزاین"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I'm doing a course in art and design.",
            kurdishText: "کۆرسێک لەسەر ھونەر و دیزاین ئەنجام دەدەم.",
            onPressedBritish: () => speakdesigns6("en-GB"),
            onPressedAmerican: () => speakdesigns6("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "Digital design tools are essential.",
            kurdishText: "ئامرازەکانی دیزاینی دیجیتاڵ زۆر گرنگن.",
            onPressedBritish: () => speakdesigns7("en-GB"),
            onPressedAmerican: () => speakdesigns7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The car wouldn't win any design awards, but it's very reliable.",
            kurdishText:
                "ئۆۆتمبێلەکە ھیچ خەڵاتێکی دیزیان ناباتەوە، بەڵام تەواو پشت‌پێ‌بەستراوە.",
            onPressedBritish: () => speakdesigns8("en-GB"),
            onPressedAmerican: () => speakdesigns8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's done some design work for us in the past.",
            kurdishText: "لە ڕابردوودا ھەندێک کاری دیزاینی بۆمان کردووە.",
            onPressedBritish: () => speakdesigns9("en-GB"),
            onPressedAmerican: () => speakdesigns9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) پلانێک یان وێنەیەکی کێشراو کە لێیەوە دەکرێت ھەندێک دیزاین درووست بکرێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He has created some new and original designs.",
            kurdishText: "ھەندێک دیزاینی تازە و ڕەسەنی درووستکردووە.",
            onPressedBritish: () => speakdesigns10("en-GB"),
            onPressedAmerican: () => speakdesigns10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The original designs were stolen.",
            kurdishText: "دیزاینە ڕەسەنەکان دزران.",
            onPressedBritish: () => speakdesigns11("en-GB"),
            onPressedAmerican: () => speakdesigns11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There are several laws protecting the ownership of industrial designs.",
            kurdishText:
                "ژمارەیەک یاسا ھەن بۆ پاراستنی خاوەندارێتی دیزاینی پیشەسازی.",
            onPressedBritish: () => speakdesigns12("en-GB"),
            onPressedAmerican: () => speakdesigns12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) شێوە دیزاینێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The tiles come in a huge range of colours and designs.",
            kurdishText: "کاشییەکان بە ژمارەیەکی زۆر ڕەنگ و دیزاین ھەن.",
            onPressedBritish: () => speakdesigns13("en-GB"),
            onPressedAmerican: () => speakdesigns13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The building has intricate geometric designs on several of the walls.",
            kurdishText:
                "بیناکە ژمارەیەک دیزاینی ئەندازەیی ئاڵۆزی ھەیە لە ھەندێک لاوە.",
            onPressedBritish: () => speakdesigns14("en-GB"),
            onPressedAmerican: () => speakdesigns14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) پلان یان مەبەست"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "It is all part of his grand design.",
            kurdishText: "ھەمووی بەشێکن لە پلانە گەورەکەی.",
            onPressedBritish: () => speakdesigns15("en-GB"),
            onPressedAmerican: () => speakdesigns15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It happened—whether by accident or design—that the two of them were left alone after all the others had gone.",
            kurdishText:
                "چی بە ڕێکەوت یان پلان، ئەوە ڕوویدا کە ھەردووکاین مانەوە بە تەنھایی لە دوای ئەوەی ھەموو ئەوانی دیکە ڕۆشتبوون.",
            onPressedBritish: () => speakdesigns16("en-GB"),
            onPressedAmerican: () => speakdesigns16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Had it happened by accident or by design?",
            kurdishText: "بە ڕێکەوت یان مەبەست ڕوویدا؟",
            onPressedBritish: () => speakdesigns17("en-GB"),
            onPressedAmerican: () => speakdesigns17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) دیزاینکردنی شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He designed and built his own house.",
            kurdishText: "ماڵەکەی خۆی دیزاین کرد و بنیاتی نا.",
            onPressedBritish: () => speakdesigns18("en-GB"),
            onPressedAmerican: () => speakdesigns18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The blocks were specially designed and manufactured in Italy.",
            kurdishText:
                "بلۆکەکان بە تایبەتی لە ئیتالیا دیزاین و درووستکرابوون.",
            onPressedBritish: () => speakdesigns19("en-GB"),
            onPressedAmerican: () => speakdesigns19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Could you design us a poster?",
            kurdishText: "دەتوانیت پۆستەرێکمان بۆ دیزاین بکەیت؟",
            onPressedBritish: () => speakdesigns20("en-GB"),
            onPressedAmerican: () => speakdesigns20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) بیرکردنەوە لە پلانێک، سیستەمێک، شێوازی کردنی شتێک، ھتد زۆرجار بۆ مەبەستێک، بەکارھێنانێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The method is specifically designed for use in small groups.",
            kurdishText:
                "ڕێگاکە بەتایبەتی دیزاین کراوە بۆ بەکارھێنان لە گرووپی بچووکدا.",
            onPressedBritish: () => speakdesigns21("en-GB"),
            onPressedAmerican: () => speakdesigns21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The museum is Missouri's first museum designed specifically for contemporary art.",
            kurdishText:
                "مۆزەخانەکە یەکەم مۆزەخانەی میزۆرییە بەتایبەت دیزاین کراوە بۆ ھونەری سەردەمیانە.",
            onPressedBritish: () => speakdesigns22("en-GB"),
            onPressedAmerican: () => speakdesigns22("en-US"),
          ),
          SentencesRow(
            englishText:
                "The system is designed to alert drivers to traffic jams ahead.",
            kurdishText:
                "سیستەمەکە دیزاین کراوە بە ئاگادارکردنەوەی شۆفێران لە قەرەباڵغی ھاتووچۆ.",
            onPressedBritish: () => speakdesigns23("en-GB"),
            onPressedAmerican: () => speakdesigns23("en-US"),
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
- Verb: design (derived forms: designs, designing, designed)
1. Make or work out a plan for; devise (= plan, project, contrive)
"design a new sales strategy";
 
2. Plan something for a specific role, purpose or effect
"This room is not designed for work"
 
3. Create the design for; create or execute in an artistic or highly skilled manner
"Chanel designed the famous suit"
 
4. Make a design of in systematic, often graphic form (= plan)
"design a better mousetrap";
 
5. Create designs
"Dupont designs for the house of Chanel"
 
6. Conceive or fashion in the mind; invent
"She designed a good excuse for not attending classes that day"
 
7. Intend or have as a purpose
"She designed to go far in the world of business"

- Noun: design (derived forms: designs)
1. The act of working out the form of something (as by making a sketch, outline or plan) (= designing)
"he contributed to the design of a new instrument";
 
2. An arrangement scheme (= plan)
"the awkward design of the keyboard made operation difficult"; "it was an excellent design for living";
 
3. Something intended as a guide for making something else (= blueprint, pattern)
"a design for a house";
 
4. A decorative or artistic work (= pattern, figure)
"the coach had a design on the doors";
 
5. An anticipated outcome that is intended or that guides your planned actions (= purpose, intent, intention, aim)
"he made no secret of his designs";
 
6. A preliminary sketch indicating the plan for something
"the design of a building"
 
7. The creation of something in the mind (= invention, innovation, excogitation, conception, fiction)
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

  final String _videoId = '0SYKA00eFWY';
  final double _startSeconds = 125;

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

  final String _videoId = 'r5cqa9V0mUo';
  final double _startSeconds = 870;

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

  final String _videoId = 'ldBUUKRQR9M';
  final double _startSeconds = 0;

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

  final String _videoId = '7RdH38CoT_E';
  final double _startSeconds = 39;

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

  final String _videoId = 'CtD3pwzfFFI';
  final double _startSeconds = 0;

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

  final String _videoId = 'ZNo-M1ldPZ8';
  final double _startSeconds = 11;

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

  final String _videoId = 'NuL6TMYVuDs';
  final double _startSeconds = 14;

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