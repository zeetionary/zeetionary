import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommitment extends StatelessWidget {
// blank divider
  EnglishEntrycommitment({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommitment(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("commitment"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments1(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm not ready to make a long-term commitment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments2(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They have failed to honour their commitments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments3(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He questioned the government's commitment to public services."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments4(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We're looking for a firm commitment from both sides."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments5(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They reaffirmed their commitment to work for peace."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments6(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has demonstrated exceptional commitment and dedication."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments7(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This post demands a high level of commitment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments8(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A career as an actor requires one hundred per cent commitment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments9(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was criticized for her lack of commitment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments10(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's busy for the next month with filming commitments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments11(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Women very often have to juggle work with their family commitments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments12(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't want to take on any more commitments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommitments13(String languageCode) async {
    // DOPSUM: CHANGE speakcommitment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommitments1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "commitment"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmɪtmənt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommitment("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmɪtmənt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommitment("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: بەڵێنی، خۆبەستەیی، دەربەستی، گفت، سۆز، پەیمان،	بەرپرسایەتی، خستنەئەستۆ، لەمل‌گرتن،	گوناهـکردن، تووش‌بوون (گوناهـ)، دەس‌تیابوون،	سپاردن، پێ‌سپاردن، دانەدەست، بەدەستەوەدان،	تایبەتی‌دان، تەرخان‌دان، تەرخان‌کردن،	بڕیاری دەس‌بەسەری یا گرتن،	کار،	وەفاداری، بەئەمەگی، باوەڕ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) بەڵێنێک کە شتێک بکەیت یان بەشێوەیەکی دیاریکراو مامەڵە بکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'm not ready to make a long-term commitment."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئامادە نیم پەیمانی درێژخایەن بدەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "commitment", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommitments1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommitments1("en-US"),
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
                                            "They have failed to honour their commitments."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شکستیان هێناوە پابەندی بەڵێنەکانیان بن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommitments2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommitments2("en-US"),
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
                                                    "He questioned the government's commitment to public services."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گومانی خستە سەر پابەندی حکومەت بە خزمەتگوزارییە گشتییەکان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommitments3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommitments3("en-US"),
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
                                                    "We're looking for a firm commitment from both sides."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە هیوای پابەندی پتەوین لە هەردوو لایەنەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommitments4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommitments4("en-US"),
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
                                                    "They reaffirmed their commitment to work for peace."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پابەندبوونیان بە کارکردن بۆ ئاشتی دووپاتکردەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommitments5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommitments5("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text:
                                          "٢. (ناو) ویستی کارکردن بە سەختی و پێدانی وزە و کاتت بۆ کردنی کارێک یان چالاکییەک"),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "He has demonstrated exceptional commitment and dedication."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پابەندی و لەخۆبوردوویی بێ‌وێنەی پیشانداوە بۆ کردنی کارەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommitments6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommitments6("en-US"),
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
                                                    "This post demands a high level of commitment."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەم پێگەیە بەرپرسیاریەتی زۆری دەوێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommitments7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommitments7("en-US"),
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
                                                            "A career as an actor requires one hundred per cent commitment."),
                                                    ExampleSentenceKurdish(
                                                        text:
                                                            "کارکردن وەک ئەکتەرێک پێویستی بە پابەندی سەد لە سەدە."),
                                                  ],
                                                ),
                                              ),
                                              const CustomSizedBoxForTTS(),
                                              Column(
                                                children: [
                                                  CustomIconButtonBritish(
                                                    onPressed: () =>
                                                        speakcommitments8(
                                                            "en-GB"),
                                                  ),
                                                  CustomIconButtonAmerican(
                                                    onPressed: () =>
                                                        speakcommitments8(
                                                            "en-US"),
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
                                                            "She was criticized for her lack of commitment."),
                                                    ExampleSentenceKurdish(
                                                        text:
                                                            "ڕەخنەی لێ گیردرا بۆ کەمی خۆتەرخانکردنی."),
                                                  ],
                                                ),
                                              ),
                                              const CustomSizedBoxForTTS(),
                                              Column(
                                                children: [
                                                  CustomIconButtonBritish(
                                                    onPressed: () =>
                                                        speakcommitments9(
                                                            "en-GB"),
                                                  ),
                                                  CustomIconButtonAmerican(
                                                    onPressed: () =>
                                                        speakcommitments9(
                                                            "en-US"),
                                                  ),
                                                ],
                                              ),
                                            ],
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
                              text:
                                  "٤. (ناو) شتێک کە بەڵێنت داوە یان ڕازی بوویت کە بیکەیت، یان ئەوەی دەبێت بیکەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He's busy for the next month with filming commitments."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆ مانگی داهاتوو سەرقاڵە بە کاری وێنەگرتنی فیلمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommitments10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommitments10("en-US"),
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
                                            "Women very often have to juggle work with their family commitments."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ژنان زۆرجار دەبێت مامەڵە لەگەڵ کار و بەرپرسیاریەتی خێزانیدا بکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommitments11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommitments11("en-US"),
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
                                            "I don't want to take on any more commitments."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نامەوێت هیچ بەرپرسیاریەتی دیکە لە ئەستۆ بگرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommitments12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommitments12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
- Noun: commitment (Derived forms: commitments)
1. The trait of sincere and steadfast fixity of purpose (= committedness)
"a man of energy and commitment";
 
2. The act of binding yourself (intellectually or emotionally) to a course of action (= allegiance, loyalty, dedication)
"his long commitment to public service";
 
3. An engagement by contract involving financial obligation
"his business commitments took him to London"
 
4. A message that makes a pledge (= dedication)
 
5. The official act of consigning a person to confinement (as in a prison or mental hospital) (= committal, consignment)
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
    videoId: 'MGO4_8YRKro',
    startSeconds: 447,
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
    videoId: 'ztoRMWTsX40',
    startSeconds: 25,
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
    videoId: 'o71He_Z9bQw',
    startSeconds: 473,
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
    videoId: '2-bQnjgUiUs',
    startSeconds: 104,
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
    videoId: 'UeUPILGGIls',
    startSeconds: 1312,
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
    videoId: 'oRg7kCVZ3cc',
    startSeconds: 70,
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
    videoId: 'F0rXPrnC_Ps',
    startSeconds: 236,
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

// end WORD_WEB