import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrowd extends StatefulWidget {
  const EnglishEntrycrowd({super.key});

  @override
  State<EnglishEntrycrowd> createState() => _EnglishEntrycrowdState();
}

class _EnglishEntrycrowdState extends State<EnglishEntrycrowd> {
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
    return const EntryTitle(word: "crowd");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crowd");
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
    return const IPAofEnglish(text: "IpaUK: /kraʊd/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowd(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crowd"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrowd("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kraʊd/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowd(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crowd"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrowd("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowds1(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He pushed his way through the crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds2(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A small crowd had gathered outside the church."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds3(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Police had to break up the crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds4(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Crowds of people poured into the street."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds5(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He left the hotel surrounded by crowds of journalists."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds6(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        " The President spoke before a crowd of more than 50 000 in the city's football stadium."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds7(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Bob introduced her to some of the usual crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds8(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were a bit of a motley crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds9(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He got in with the wrong crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds10(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We all like to think we stand out from the crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds11(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He prefers to be one of the crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds12(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Thousands of people crowded the narrow streets."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowds13(String languageCode) async {
    // DOPSUM: CHANGE speakcrowd
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Memories crowded his mind."); // DOPSUM: CHANGE TEXT
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
کوردی: کۆمەڵ، کۆمەڵە، دەستە، کۆڕ، جەماعەت، گەلە، گیڤالە،	گەل، خەڵک، جەماوەر، خەڵکی ڕەمەکی،	ئاپۆرە، چڕەبەندان، جمە، گوردەم، قەرەباڵغی، تێ‌ڕژاوی، گانەگۆڵ، جەنجاڵ، شلوقایی،	بینەران،	ژمارەیەکی زور، گەلێک،	کۆما، لۆدە، کۆڵێ
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ژمارەیەکی زۆر لە خەڵکی کە لە شوێنێک کۆبوونەتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He pushed his way through the crowd."),
                    ExampleSentenceKurdish(
                        text: "ڕێگای خۆی بەناو جەماوەرەکەدا کردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crowd", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds1("en-US"),
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
                        text: "A small crowd had gathered outside the church."),
                    ExampleSentenceKurdish(
                        text: "جەماوەرێکی بچووک لە دەرەوەی کڵێساکە کۆبوونەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds2("en-US"),
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
                                text: "Police had to break up the crowd."),
                            ExampleSentenceKurdish(
                                text: "پۆلیس پێویست بوو خەڵکەکە بڵاوە پێبکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds3("en-US"),
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
                                    "Crowds of people poured into the street."),
                            ExampleSentenceKurdish(
                                text:
                                    "حەشاماتێک لە خەڵکی ڕژانە سەر شەقامەکان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds4("en-US"),
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
                                    "He left the hotel surrounded by crowds of journalists."),
                            ExampleSentenceKurdish(
                                text:
                                    "هوتێلەکەی جێهێشت کە بە ژمارەیەک لە ڕۆژنامەنووس دەوردرابوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds5("en-US"),
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
                                    " The President spoke before a crowd of more than 50 000 in the city's football stadium."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەرۆکەکە لەپێش جەماوەرێکی سەروو ٥٠٠٠٠ کەس لە یاریگای تۆپی‌پێی شارەکە قسەی کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrowds6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrowds6("en-US"),
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
          const DefinitionKurdish(text: "٢. (ناو) گرووپێکی دیاریکراو لە خەڵک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Bob introduced her to some of the usual crowd (= people who often meet each other)."),
                    ExampleSentenceKurdish(
                        text: "بۆب ناساندی بە هەندێک لە کۆمەڵە ئاشناکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds7("en-US"),
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
                        text: "They were a bit of a motley crowd."),
                    ExampleSentenceKurdish(text: "دەستەیەکی هەمەڕەنگ بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds8("en-US"),
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
                        text: "He got in with the wrong crowd."),
                    ExampleSentenceKurdish(text: "چووە ناو گرووپێکی هەڵەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) خەڵکی ئاسایی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We all like to think we stand out from the crowd (= are different from and better than other people)."),
                    ExampleSentenceKurdish(
                        text:
                            "ئێمە هەموومان حەز دەکەین وا بیربکەینەوە کە جیاوازین خەڵکە ڕەجاڵەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds10("en-US"),
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
                        text: "He prefers to be one of the crowd."),
                    ExampleSentenceKurdish(
                        text: "پێی خۆشە یەکێک بێت لە خەڵکە ئاساییەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) پڕکردنی شوێنێک بەشێوەیەک شوێنی جووڵە کەمە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Thousands of people crowded the narrow streets."),
                    ExampleSentenceKurdish(
                        text: "هەزاران کەس شەقامە تەسکەکانیان پڕکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) پڕکردنی مێشکت بۆ ئەوەی بیر لە هیچی دیکە نەکەیتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Memories crowded his mind."),
                    ExampleSentenceKurdish(
                        text: "یادەوەرییەکان مێشکیان جەنجاڵ کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowds13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowds13("en-US"),
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
- Noun: crowd (Derived forms: crowds)
A large number of things or people considered together
"a crowd of insects assembled around the flowers"
 
2. An informal body of friends (= crew, gang, bunch)
"he still hangs out with the same crowd";

- Verb: crowd (Derived forms: crowds, crowding, crowded)
1. Cause to herd, drive, or crowd together (= herd)
"We crowded the children into a spare classroom";
 
2. Fill or occupy to the point of overflowing
"The students crowded the auditorium"
 
3. To gather together in large numbers (= crowd together)
"men in straw boaters and waxed moustaches crowded the verandah";
 
4. Approach a certain age or speed (= push)
"She is crowding fifty";
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
    videoId: 'https://youtu.be/C_B09FZwSbA?t=',
    startSeconds: 73,
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
    videoId: 'https://youtu.be/l31zZHfSUjA?t=',
    startSeconds: 155,
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
    videoId: 'https://youtu.be/Jm6CnP8CsCw?t=',
    startSeconds: 91,
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
    videoId: 'https://youtu.be/HDntl7yzzVI?t=',
    startSeconds: 1485,
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
    videoId: 'https://youtu.be/8HEfIJlcFbs?t=',
    startSeconds: 102,
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
    videoId: 'https://youtu.be/544DTGHIBM0?t=',
    startSeconds: 116,
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
    videoId: 'https://youtu.be/9TugA_z5vQE?t=',
    startSeconds: 1244,
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