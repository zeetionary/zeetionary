import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

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
    await flutterTts.speak("design"); // DOPSUM: CHANGE TEXT
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
    await flutterTts.speak("design"); // DOPSUM: CHANGE TEXT
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
    await flutterTts.speak("The basic design of the car is very similar to that of earlier models."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns2(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The system has a fundamental design flaw."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns3(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The magazine will appear in a new design from next month."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns4(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The machine's unique design prevents it from overheating."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns5(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("One of our main design goals was to make the product easy to use."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns6(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm doing a course in art and design."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns7(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Digital design tools are essential."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns8(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car wouldn't win any design awards, but it's very reliable."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns9(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's done some design work for us in the past."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns10(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has created some new and original designs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns11(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The original designs were stolen."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns12(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There are several laws protecting the ownership of industrial designs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns13(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The tiles come in a huge range of colours and designs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns14(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The building has intricate geometric designs on several of the walls."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns15(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is all part of his grand design."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns16(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It happened—whether by accident or design—that the two of them were left alone after all the others had gone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns17(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Had it happened by accident or by design?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns18(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He designed and built his own house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns19(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The blocks were specially designed and manufactured in Italy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns20(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could you design us a poster?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns21(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The method is specifically designed for use in small groups."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns22(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The museum is Missouri's first museum designed specifically for contemporary art."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesigns23(String languageCode) async {
    // DOPSUM: CHANGE speakdesign
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The system is designed to alert drivers to traffic jams ahead."); // DOPSUM: CHANGE TEXT
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
          const DefinitionKurdish(text: "١. (ناو) شێوازی دانانی شتێک کە بە شێوەیەک دانراوە کە جوان دەربکەوێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The basic design of the car is very similar to that of earlier models."),
                    ExampleSentenceKurdish(text: "دیزاینی سەرەکیی ئۆتۆمبێلەکە زۆر لێکچووە لەگەڵ مۆدێلەکانی پێشتردا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "design", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The system has a fundamental design flaw."),
                    ExampleSentenceKurdish(text: "سیستەمەکە هەڵەیەکی سەرەکیی دیزاینی تێدایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The magazine will appear in a new design from next month."),
                    ExampleSentenceKurdish(text: "گۆڤارەکە لە مانگی داهاتووەوە بە دیزاینێکی تازەوە بڵاودەبێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The machine's unique design prevents it from overheating."),
                    ExampleSentenceKurdish(text: "دیزاینی ناوازەی ئامێرەکە لە گەرمبوون دەیپارێزێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "One of our main design goals was to make the product easy to use."),
                    ExampleSentenceKurdish(text: "یەکێک لە ئامانجە سەرەکییەکانی دیزاینمان ئەوە بوو کە بەرهەمەکە ئاسان بکەین بۆ بەکارهێنان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) هونەر یان پڕۆسەی کاری دیزاین"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I'm doing a course in art and design."),
                    ExampleSentenceKurdish(text: "کۆرسێک لەسەر هونەر و دیزاین ئەنجام دەدەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Digital design tools are essential."),
                    ExampleSentenceKurdish(text: "ئامرازەکانی دیزاینی دیجیتاڵ زۆر گرنگن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The car wouldn't win any design awards, but it's very reliable."),
                    ExampleSentenceKurdish(text: "ئۆۆتمبێلەکە هیچ خەڵاتێکی دیزیان ناباتەوە، بەڵام تەواو پشت‌پێ‌بەستراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She's done some design work for us in the past."),
                    ExampleSentenceKurdish(text: "لە ڕابردوودا هەندێک کاری دیزاینی بۆمان کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) پلانێک یان وێنەیەکی کێشراو کە لێیەوە دەکرێت هەندێک دیزاین درووست بکرێت"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He has created some new and original designs."),
                    ExampleSentenceKurdish(text: "هەندێک دیزاینی تازە و ڕەسەنی درووستکردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The original designs were stolen."),
                    ExampleSentenceKurdish(text: "دیزاینە ڕەسەنەکان دزران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "There are several laws protecting the ownership of industrial designs."),
                    ExampleSentenceKurdish(text: "ژمارەیەک یاسا هەن بۆ پاراستنی خاوەندارێتی دیزاینی پیشەسازی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) شێوە دیزاینێک"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The tiles come in a huge range of colours and designs."),
                    ExampleSentenceKurdish(text: "کاشییەکان بە ژمارەیەکی زۆر ڕەنگ و دیزاین هەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The building has intricate geometric designs on several of the walls."),
                    ExampleSentenceKurdish(text: "بیناکە ژمارەیەک دیزاینی ئەندازەیی ئاڵۆزی هەیە لە هەندێک لاوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) پلان یان مەبەست"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "It is all part of his grand design."),
                    ExampleSentenceKurdish(text: "هەمووی بەشێکن لە پلانە گەورەکەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "It happened—whether by accident or design—that the two of them were left alone after all the others had gone."),
                    ExampleSentenceKurdish(text: "چی بە ڕێکەوت یان پلان، ئەوە ڕوویدا کە هەردووکاین مانەوە بە تەنهایی لە دوای ئەوەی هەموو ئەوانی دیکە ڕۆشتبوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Had it happened by accident or by design?"),
                    ExampleSentenceKurdish(text: "بە ڕێکەوت یان مەبەست ڕوویدا؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) دیزاینکردنی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He designed and built his own house."),
                    ExampleSentenceKurdish(text: "ماڵەکەی خۆی دیزاین کرد و بنیاتی نا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The blocks were specially designed and manufactured in Italy."),
                    ExampleSentenceKurdish(text: "بلۆکەکان بە تایبەتی لە ئیتالیا دیزاین و درووستکرابوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Could you design us a poster?"),
                    ExampleSentenceKurdish(text: "دەتوانیت پۆستەرێکمان بۆ دیزاین بکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) بیرکردنەوە لە پلانێک، سیستەمێک، شێوازی کردنی شتێک، هتد زۆرجار بۆ مەبەستێک، بەکارهێنانێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The method is specifically designed for use in small groups."),
                    ExampleSentenceKurdish(text: "ڕێگاکە بەتایبەتی دیزاین کراوە بۆ بەکارهێنان لە گرووپی بچووکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The museum is Missouri's first museum designed specifically for contemporary art."),
                    ExampleSentenceKurdish(text: "مۆزەخانەکە یەکەم مۆزەخانەی میزۆرییە بەتایبەت دیزاین کراوە بۆ هونەری سەردەمیانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The system is designed to alert drivers to traffic jams ahead."),
                    ExampleSentenceKurdish(text: "سیستەمەکە دیزاین کراوە بە ئاگادارکردنەوەی شۆفێران لە قەرەباڵغی هاتووچۆ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesigns23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesigns23("en-US"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
- Verb: design (Derived forms: designs, designing, designed)
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

- Noun: design (Derived forms: designs)
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
          // Using the EnglishButtonTTS class
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
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/0SYKA00eFWY?t=',
    startSeconds: 125,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/r5cqa9V0mUo?t=',
    startSeconds: 870,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ldBUUKRQR9M',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/7RdH38CoT_E?t=',
    startSeconds: 39,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/CtD3pwzfFFI',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ZNo-M1ldPZ8?t=',
    startSeconds: 11,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/NuL6TMYVuDs?t=',
    startSeconds: 14,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
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
    return YouTubeScroller(
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