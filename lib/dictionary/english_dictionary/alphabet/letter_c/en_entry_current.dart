import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycurrent extends StatefulWidget {
  const EnglishEntrycurrent({super.key});

  @override
  State<EnglishEntrycurrent> createState() => _EnglishEntrycurrentState();
}

class _EnglishEntrycurrentState extends State<EnglishEntrycurrent> {
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
    return const EntryTitle(word: "current");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: current");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkʌrənt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurrent(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("current"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcurrent("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkɜːrənt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurrent(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("current"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcurrent("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurrents1(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Oil prices are expected to remain at current levels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents2(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What's the budget for the current year?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents3(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Under the current system, the entire process takes about two weeks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents4(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our current financial situation is not good."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents5(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What are the current unemployment figures?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents6(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "\"Thou\" and \"thee\" are examples of words that are no longer current in modern English."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents7(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's easier to go with the current."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents8(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Birds use warm air currents to help their flight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents9(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was swimming against the current."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents10(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was swept away by the treacherous currents."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents11(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Check all your wiring before switching on the current."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents12(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Measure the current flowing in the wire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents13(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The current failure lasted three hours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents14(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ministers are worried by this current of anti-government feeling."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents15(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcurrents1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcurrents16(String languageCode) async {
    // DOPSUM: CHANGE speakcurrent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcurrents1600"); // DOPSUM: CHANGE TEXT
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
کوردی: برەو، باو، داب،	هەنووکە، (کاتی) ئێستا، ڕۆژانە، ڕۆژ، ڕۆژەڤ ، ئێستاکانێ،	لەگەڕ(دابوون)، دەساودەس‌کردوو، ڕەوندە، دەس‌کردوو (پارە)،	ڕەوندی، ڕۆین، ڕەوەن، ڕەوندە، خوڕ، ڕەوان،	ڕۆین یان ڕۆیشتنی ئاو، لێشاو،	کۆڕان، تەوژم،	تەزوو (با، ئێلیکتریسیتە)،	ڕەوت، ڕەوڕەوە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) ڕوودان لە ئێستادا؛ پەیوەندیدار بە ئێستا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Oil prices are expected to remain at current levels."),
                    ExampleSentenceKurdish(
                        text:
                            "نرخی نەوت پێشبینی دەکرێت لە ئاستی ئێستادا بمێنێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "current", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents1("en-US"),
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
                        text: "What's the budget for the current year?"),
                    ExampleSentenceKurdish(text: "بودجەی ئەمساڵە چەندە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Under the current system, the entire process takes about two weeks."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەم سیستەمەی ئێستا، تەواوی پڕۆسەکە نزیکەی دوو هەفتەی پێدەچێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcurrents3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcurrents3("en-US"),
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
                                    "Our current financial situation is not good."),
                            ExampleSentenceKurdish(
                                text: "دۆخی دارایی ئێستامان باش نییە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcurrents4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcurrents4("en-US"),
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
                                    "What are the current unemployment figures?"),
                            ExampleSentenceKurdish(
                                text: "ئامارەکانی ئێستای بێکاری چۆنن؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcurrents5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcurrents5("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) کە لەلایەن زۆرینەی خەڵکییەوە بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "\"Thou\" and \"thee\" are examples of words that are no longer current in modern English."),
                    ExampleSentenceKurdish(
                        text:
                            "\"Thou\" و \"thee\" نموونەی ئەو وشانەن کە چ دیکە لە بەکارهێناندا نین لە ئینگلیزی سەرمدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) جوڵەی ئاو لە دەریا یان ڕووباردا؛ جوڵەی با بە ئاراستەیەکی دیاریکراودا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It's easier to go with the current."),
                    ExampleSentenceKurdish(
                        text: "ئاسانترە لەگەڵ شەپۆلەکەدا بچیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents7("en-US"),
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
                            "Birds use warm air currents to help their flight."),
                    ExampleSentenceKurdish(
                        text:
                            "باڵندە ڕەوتی هەوای گەرم بەکاردێنن بۆ یارمەتیدانیان لە گەشتەکانیاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents8("en-US"),
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
                        text: "He was swimming against the current."),
                    ExampleSentenceKurdish(text: "دژ بە شەپۆلەکە مەلەی دەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents9("en-US"),
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
                            "She was swept away by the treacherous currents."),
                    ExampleSentenceKurdish(text: "تەوژنە بەهێزەکە ڕایماڵی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) جوڵەی تەزووی کارەبا بە وایەر، هتد ـدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Check all your wiring before switching on the current."),
                    ExampleSentenceKurdish(
                        text:
                            "تەواوی وایەردانانەکان بپشکنە پێش داگیرساندنی سویچی تەزووەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents11("en-US"),
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
                        text: "Measure the current flowing in the wire."),
                    ExampleSentenceKurdish(
                        text: "جوڵەی تەزووی وایەرەکە بپێوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) (ئینگلیزی هیندی) بڕی کارەبای بەردەست"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The current failure lasted three hours."),
                    ExampleSentenceKurdish(
                        text: "نەبوونی کارەبا سێ کاتژمێری خایاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) بوونی باوەڕ و هەست لەناو گرووپێک لە خەڵکیدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Ministers are worried by this current of anti-government feeling."),
                    ExampleSentenceKurdish(
                        text:
                            "وەزیرەکان نیگەرانن سەبارەت بەم ڕەوتەی هەستی دژ بە حکومەت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcurrents14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcurrents14("en-US"),
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
- Noun: current (Derived forms: currents)
1. A flow of electricity through a conductor (= electric current)
"the current was measured in amperes";
 
2. A steady flow of a fluid (usually from natural causes) (= stream)
"the raft floated downstream on the current";
 
3. Dominant course (suggestive of running water) of successive events or ideas (= stream, flow)
"the current of history";

- Adjective: current 
1. Occurring in or belonging to the present time
"current events"; "the current topic"; "current negotiations"; "current psychoanalytic theories"; "the ship's current position"
 
2. Generally accepted or used at the moment
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
    videoId: 'https://youtu.be/a_TSR_v07m0?t=',
    startSeconds: 318,
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
    videoId: 'https://youtu.be/hS2x1zl4rn0?t=',
    startSeconds: 438,
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
    startSeconds: 79,
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
    videoId: 'https://youtu.be/_GFkHA5EZdE?t=',
    startSeconds: 20,
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
    videoId: 'https://youtu.be/lsFPbgK1v9I?t=',
    startSeconds: 143,
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
    videoId: 'https://youtu.be/ewLpXw6uN28?t=',
    startSeconds: 790,
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
    startSeconds: 213,
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