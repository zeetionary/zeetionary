import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydegree extends StatefulWidget {
  const EnglishEntrydegree({super.key});

  @override
  State<EnglishEntrydegree> createState() => _EnglishEntrydegreeState();
}

class _EnglishEntrydegreeState extends State<EnglishEntrydegree> {
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
    return const EntryTitle(word: "degree");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: degree");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈɡriː/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdegree(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("degree"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdegree("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈɡriː/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdegree(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("degree"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdegree("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdegrees1(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Water freezes at 32 degrees Fahrenheit or zero/nought degrees Celsius."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees2(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Temperatures are expected to drop below 2 degrees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees3(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Last weekend temperatures reached 40 degrees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees4(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I turned the wheel 90 degrees,"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees5(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Place the shelf at a 90 degree angle to the wall."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees6(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car had spun through 180 degrees on impact."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees7(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her job demands a high degree of skill."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees8(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I agree with you to a certain degree."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees9(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The reaction to his decision has been, to some degree, predictable."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees10(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These criticisms are, to a degree, well founded."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees11(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My brother has a master's degree from Harvard."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees12(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's pursuing a degree in biochemistry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees13(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She earned a joint degree in Spanish and Psychology."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees14(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm hoping to do a chemistry degree."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees15(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He took a degree in law then joined a law firm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees16(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdegrees1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees17(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdegrees1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees18(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdegrees1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees19(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdegrees1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees20(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Temperatures are expected to drop below 2 degrees.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees21(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdegrees2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdegrees22(String languageCode) async {
    // DOPSUM: CHANGE speakdegree
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdegrees2200"); // DOPSUM: CHANGE TEXT
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
کوردی: پلە (بە نیشانەی °)،	ڕێژە، ڕادە، دانگ، ئەندازە، ئاڤەند، ئاست، دۆخ، پەرەسە،	پلەوپایە، پایە، پۆست،	کۆن بایەخ یان پێگەی کۆمەڵایەتی،	بڕوانامە (ی زانکۆیی)،	(موسیقا)، پلە،	(ڕێزمان) پلە
"""),
          const DefinitionKurdish(text: "١. (ناو) یەکەی پێوانی گەرمی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Water freezes at 32 degrees Fahrenheit (32°F) or zero/nought degrees Celsius (0°C)."),
                    ExampleSentenceKurdish(
                        text:
                            "ئاو لە پلەی ٣٢ پلەی فەهرنایت یان سفری سیلیزی دەیبەستێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "degree", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees1("en-US"),
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
                    ExampleSentenceEnglish(
                        text:
                            "Temperatures are expected to drop below 2 degrees."),
                    ExampleSentenceKurdish(
                        text:
                            "پلەکانی گەرمی پێشبینی دەکرێن دابەزن بۆ خوار ٢ پلە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees2("en-US"),
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
                    ExampleSentenceEnglish(
                        text: "Last weekend temperatures reached 40 degrees."),
                    ExampleSentenceKurdish(
                        text: "پلەکانی گەرمی هەفتەی پێشوو گەشتن بە ٤٠ پلە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) یەکەی پێوانی گۆشە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I turned the wheel 90 degrees,"),
                    ExampleSentenceKurdish(text: "ویلەکەم بە ٩٠ پلە بادایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees4("en-US"),
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
                    ExampleSentenceEnglish(
                        text:
                            "Place the shelf at a 90 degree angle to the wall."),
                    ExampleSentenceKurdish(
                        text: "ڕەفەکە بە ٩٠ پلە لەگەڵ دیوارەکە دابنێ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees5("en-US"),
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
                    ExampleSentenceEnglish(
                        text:
                            "The car had spun through 180 degrees on impact."),
                    ExampleSentenceKurdish(
                        text:
                            "ئۆۆتمبێلەکە ١٨٠ پلە خولابوویەوە لەگەڵ بەرکەوتندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) بڕ یان ئاستی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her job demands a high degree of skill."),
                    ExampleSentenceKurdish(
                        text: "کارەکەی پێویستی بە ئاستێکی زۆری شارەزایی هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees7("en-US"),
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
                    ExampleSentenceEnglish(
                        text: "I agree with you to a certain degree."),
                    ExampleSentenceKurdish(
                        text: "بە ئاستی جیاواز لەگەڵت هاوڕام."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees8("en-US"),
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
                    ExampleSentenceEnglish(
                        text:
                            "The reaction to his decision has been, to some degree, predictable."),
                    ExampleSentenceKurdish(
                        text:
                            "کاردانەوە بۆ بڕیارەکەی تا ئاستێک پێشبینیکراو بووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees9("en-US"),
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
                    ExampleSentenceEnglish(
                        text:
                            "These criticisms are, to a degree (= to some extent), well founded."),
                    ExampleSentenceKurdish(
                        text: "ئەم ڕەخنانە تا ئاستێک لە جێگای خۆیاندان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) بڕوانامەی خوێندکار لەکاتی تەواوکردنی زانکۆ یان کۆرسێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "My brother has a master's degree from Harvard."),
                    ExampleSentenceKurdish(
                        text: "براکەم بڕوانامەی ماستەری هەیە لە هارڤارد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees11("en-US"),
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
                    ExampleSentenceEnglish(
                        text: "She's pursuing a degree in biochemistry."),
                    ExampleSentenceKurdish(
                        text: "هەوڵ بۆ بڕوانامەیەک دەدات لە زیندە کیمیادا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees12("en-US"),
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
                    ExampleSentenceEnglish(
                        text:
                            "She earned a joint degree in Spanish and Psychology."),
                    ExampleSentenceKurdish(
                        text:
                            "بڕوانامەیەکی هاوبەشی لە ئیسپانی و دەروونناسی هێنا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) کۆرسێکی کۆلێژ یان زانکۆ کە زۆرجار سێ ساڵ یان زیاتر دەخایەنێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I'm hoping to do a chemistry degree."),
                    ExampleSentenceKurdish(
                        text: "هیوادارم کۆرسێکی کیمیا بخوێنم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees14("en-US"),
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
                    ExampleSentenceEnglish(
                        text:
                            "He took a degree in law then joined a law firm."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆرسێکی لە یاسا ئەنجامدا و دواتر چووە کۆمپانیایەکی یاساییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdegrees15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdegrees15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdegrees1600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdegrees16("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdegrees16("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdegrees1700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdegrees17("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdegrees17("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdegrees1800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdegrees18("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdegrees18("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdegrees1900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdegrees19("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdegrees19("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "Temperatures are expected to drop below 2 degrees.0"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdegrees20("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdegrees20("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdegrees2100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdegrees21("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdegrees21("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdegrees2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdegrees22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdegrees22("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
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
- Noun: degree (Derived forms: degrees)
1. A position on a scale of intensity, amount or quality (= grade, level)
"it is all a matter of degree";
 
2. A specific identifiable position in a continuum, series or especially in a process (= level, stage, point, phase, phasis)
"a remarkable degree of frankness";
 
3. An award conferred by a college or university signifying that the recipient has satisfactorily completed a course of study (= academic degree)
"he earned his degree at Princeton summa cum laude";
 
4. A measure for arcs and angles (= arcdegree)
"there are 360 degrees in a circle";
 
5. The highest power of a term or variable
 
6. A unit of temperature on a specified scale
"the game was played in spite of the 40-degree temperature"
 
7. The seriousness of something (e.g., a burn or crime)
"murder in the second degree"; "a second degree burn"
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
    videoId: 'https://youtu.be/hS2x1zl4rn0?t=',
    startSeconds: 425,
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
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 382,
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
    videoId: 'https://youtu.be/Kou7ur5xt_4?t=',
    startSeconds: 127,
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
    videoId: 'https://youtu.be/h4CyhQqAPpk?t=',
    startSeconds: 321,
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
    videoId: 'https://youtu.be/544DTGHIBM0?t=',
    startSeconds: 33,
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
    videoId: 'https://youtu.be/z4L2E6_Gmkk?t=',
    startSeconds: 315,
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
    videoId: 'https://youtu.be/AF8d72mA41M?t=',
    startSeconds: 1207,
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