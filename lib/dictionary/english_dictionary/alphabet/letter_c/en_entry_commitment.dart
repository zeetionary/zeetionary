import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycommitment extends StatelessWidget {
// blank divider
  EnglishEntrycommitment({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommitment(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("commitment");
  }

  Future<void> speakcommitments1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm not ready to make a long-term commitment.");
  }

  Future<void> speakcommitments2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They have failed to honour their commitments.");
  }

  Future<void> speakcommitments3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He questioned the government's commitment to public services.");
  }

  Future<void> speakcommitments4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We're looking for a firm commitment from both sides.");
  }

  Future<void> speakcommitments5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They reaffirmed their commitment to work for peace.");
  }

  Future<void> speakcommitments6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He has demonstrated exceptional commitment and dedication.");
  }

  Future<void> speakcommitments7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This post demands a high level of commitment.");
  }

  Future<void> speakcommitments8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A career as an actor requires one hundred per cent commitment.");
  }

  Future<void> speakcommitments9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was criticized for her lack of commitment.");
  }

  Future<void> speakcommitments10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He's busy for the next month with filming commitments.");
  }

  Future<void> speakcommitments11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Women very often have to juggle work with their family commitments.");
  }

  Future<void> speakcommitments12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I don't want to take on any more commitments.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: بەڵێنی، خۆبەستەیی، دەربەستی، گفت، سۆز، پەیمان،	بەرپرسایەتی، خستنەئەستۆ، لەمل‌گرتن،	گوناھـکردن، تووش‌بوون (گوناھـ)، دەس‌تیابوون،	سپاردن، پێ‌سپاردن، دانەدەست، بەدەستەوەدان،	تایبەتی‌دان، تەرخان‌دان، تەرخان‌کردن،	بڕیاری دەس‌بەسەری یا گرتن،	کار،	وەفاداری، بەئەمەگی، باوەڕ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) بەڵێنێک کە شتێک بکەیت یان بەشێوەیەکی دیاریکراو مامەڵە بکەیت"),
                          SentencesRow(
                            englishText:
                                "I'm not ready to make a long-term commitment.",
                            kurdishText: "ئامادە نیم پەیمانی درێژخایەن بدەم.",
                            onPressedBritish: () => speakcommitments1("en-GB"),
                            onPressedAmerican: () => speakcommitments1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They have failed to honour their commitments.",
                            kurdishText:
                                "شکستیان ھێناوە پابەندی بەڵێنەکانیان بن.",
                            onPressedBritish: () => speakcommitments2("en-GB"),
                            onPressedAmerican: () => speakcommitments2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "He questioned the government's commitment to public services.",
                                    kurdishText:
                                        "گومانی خستە سەر پابەندی حکومەت بە خزمەتگوزارییە گشتییەکان.",
                                    onPressedBritish: () =>
                                        speakcommitments3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommitments3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We're looking for a firm commitment from both sides.",
                                    kurdishText:
                                        "بە ھیوای پابەندی پتەوین لە ھەردوو لایەنەوە.",
                                    onPressedBritish: () =>
                                        speakcommitments4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommitments4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "They reaffirmed their commitment to work for peace.",
                                    kurdishText:
                                        "پابەندبوونیان بە کارکردن بۆ ئاشتی دووپاتکردەوە.",
                                    onPressedBritish: () =>
                                        speakcommitments5("en-GB"),
                                    onPressedAmerican: () =>
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
                          SentencesRow(
                            englishText:
                                "He has demonstrated exceptional commitment and dedication.",
                            kurdishText:
                                "پابەندی و لەخۆبوردوویی بێ‌وێنەی پیشانداوە بۆ کردنی کارەکە.",
                            onPressedBritish: () => speakcommitments6("en-GB"),
                            onPressedAmerican: () => speakcommitments6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This post demands a high level of commitment.",
                            kurdishText: "ئەم پێگەیە بەرپرسیاریەتی زۆری دەوێت.",
                            onPressedBritish: () => speakcommitments7("en-GB"),
                            onPressedAmerican: () => speakcommitments7("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "A career as an actor requires one hundred per cent commitment.",
                                    kurdishText:
                                        "کارکردن وەک ئەکتەرێک پێویستی بە پابەندی سەد لە سەدە.",
                                    onPressedBritish: () =>
                                        speakcommitments8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommitments8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She was criticized for her lack of commitment.",
                                    kurdishText:
                                        "ڕەخنەی لێ گیردرا بۆ کەمی خۆتەرخانکردنی.",
                                    onPressedBritish: () =>
                                        speakcommitments9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcommitments9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شتێک کە بەڵێنت داوە یان ڕازی بوویت کە بیکەیت، یان ئەوەی دەبێت بیکەیت"),
                          SentencesRow(
                            englishText:
                                "He's busy for the next month with filming commitments.",
                            kurdishText:
                                "بۆ مانگی داھاتوو سەرقاڵە بە کاری وێنەگرتنی فیلمەوە.",
                            onPressedBritish: () => speakcommitments10("en-GB"),
                            onPressedAmerican: () =>
                                speakcommitments10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Women very often have to juggle work with their family commitments.",
                            kurdishText:
                                "ژنان زۆرجار دەبێت مامەڵە لەگەڵ کار و بەرپرسیاریەتی خێزانیدا بکەن.",
                            onPressedBritish: () => speakcommitments11("en-GB"),
                            onPressedAmerican: () =>
                                speakcommitments11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I don't want to take on any more commitments.",
                            kurdishText:
                                "نامەوێت ھیچ بەرپرسیاریەتی دیکە لە ئەستۆ بگرم.",
                            onPressedBritish: () => speakcommitments12("en-GB"),
                            onPressedAmerican: () =>
                                speakcommitments12("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
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
- Noun: commitment (derived forms: commitments)
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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 447;

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

  final String _videoId = 'ztoRMWTsX40';
  final double _startSeconds = 25;

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

  final String _videoId = 'o71He_Z9bQw';
  final double _startSeconds = 473;

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

  final String _videoId = '2-bQnjgUiUs';
  final double _startSeconds = 104;

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

  final String _videoId = 'UeUPILGGIls';
  final double _startSeconds = 1312;

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

  final String _videoId = 'oRg7kCVZ3cc';
  final double _startSeconds = 70;

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

  final String _videoId = 'F0rXPrnC_Ps';
  final double _startSeconds = 236;

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

// end WORD_WEB