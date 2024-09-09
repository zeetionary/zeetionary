import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycompetition extends StatelessWidget {
  EnglishEntrycompetition({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompetition(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("competition");
  }

  Future<void> speakcompetitions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Hundreds of schools entered the competition.");
  }

  Future<void> speakcompetitions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He won fourth place in the competition.");
  }

  Future<void> speakcompetitions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There will be a painting competition for children of different age groups.");
  }

  Future<void> speakcompetitions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We're going to have a competition to see who can swim the fastest.");
  }

  Future<void> speakcompetitions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The competition is open to all readers of the magazine.");
  }

  Future<void> speakcompetitions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The government said the new laws would enhance competition among banks.");
  }

  Future<void> speakcompetitions7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Public education is run in direct competition with the private sector.");
  }

  Future<void> speakcompetitions8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We are in competition with four other companies for the contract.");
  }

  Future<void> speakcompetitions9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Competition is heating up and sales are shrinking.");
  }

  Future<void> speakcompetitions10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This car consistently outperforms the competition.");
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
                            EntryTitle(word: "competition"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒmpəˈtɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompetition("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˌkɑːmpəˈtɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompetition("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: پێشبڕکێ، پێش‌بەزین، مل‌ملانێ، ھاوملی، زۆرە(ئە)زمێ، ڕکەبەری، بەرامبەرکێ، تەنگەشە، کێبڕکێ، کێ‌بەرکێ، بەربەرەکێ، ھاوچاوی، ڕقەبەرایەتی، بەربەرەکایەتی،	نەیاران، ھەڤرکان، ڕکەبەران
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) بۆنەیەک کە تێیدا خەڵکی ڕکابەری دەکەن بۆ ئەوەی باشترینەکان بزانن"),
                          SentencesRow(
                            englishText:
                                "Hundreds of schools entered the competition.",
                            kurdishText:
                                "سەدان قوتابخانە بەژداری کێبڕکێیەکە بوون.",
                            onPressedBritish: () => speakcompetitions1("en-GB"),
                            onPressedAmerican: () =>
                                speakcompetitions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He won fourth place in the competition.",
                            kurdishText: "چوارەم بوو لە کێبڕکێیەکەدا.",
                            onPressedBritish: () => speakcompetitions2("en-GB"),
                            onPressedAmerican: () =>
                                speakcompetitions2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "There will be a painting competition for children of different age groups.",
                                    kurdishText:
                                        "ڕکابەرییەک دەبێت بۆ منداڵانی تەمەنە جیاوازەکان.",
                                    onPressedBritish: () =>
                                        speakcompetitions3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompetitions3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We're going to have a competition to see who can swim the fastest.",
                                    kurdishText:
                                        "پێشبڕکێیەکمان دەبێت بۆ زانینی ئەوەی کێ خێراترین مەلە دەکات.",
                                    onPressedBritish: () =>
                                        speakcompetitions4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompetitions4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The competition is open to all readers of the magazine.",
                                    kurdishText:
                                        "ڕکابەرییەکە کراوەیە بۆ ھەموو خوێنەرانی گۆڤارەکە.",
                                    onPressedBritish: () =>
                                        speakcompetitions5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompetitions5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) دۆخێک کە خەڵکی یان کۆمەڵێک ڕێکخراو کێبڕکێ لەگەڵ یەکتر دەکەن بۆ شتێک کە ھەموویان ناتوانن ھەیان بێت"),
                          SentencesRow(
                            englishText:
                                "The government said the new laws would enhance competition among banks.",
                            kurdishText:
                                "حکومەت گوتی کە یاسا نوێیەکان ڕکابەری بەھێز دەکات لە نێوان بانکەکاندا.",
                            onPressedBritish: () => speakcompetitions6("en-GB"),
                            onPressedAmerican: () =>
                                speakcompetitions6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Public education is run in direct competition with the private sector.",
                            kurdishText:
                                "خوێندنی گشتی بەڕێوەدەبردرێت لە ڕکابەری ڕاستەوخۆدا لەگەڵ کەرتی تایبەتدا.",
                            onPressedBritish: () => speakcompetitions7("en-GB"),
                            onPressedAmerican: () =>
                                speakcompetitions7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We are in competition with four other companies for the contract.",
                            kurdishText:
                                "لەگەڵ چوار کۆمپانیای دیکەدا لە ڕکابەریداین بۆ گرێبەستەکە.",
                            onPressedBritish: () => speakcompetitions8("en-GB"),
                            onPressedAmerican: () =>
                                speakcompetitions8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Competition is heating up and sales are shrinking.",
                            kurdishText:
                                "ڕکابەری گەرم دەبێت و فرۆشتن دادەبەزێت.",
                            onPressedBritish: () => speakcompetitions9("en-GB"),
                            onPressedAmerican: () =>
                                speakcompetitions9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو کەسانەی ڕکابەری دەکەن لەگەڵ کەسێکدا"),
                          SentencesRow(
                            englishText:
                                "This car consistently outperforms the competition.",
                            kurdishText:
                                "ئەم ئۆتۆمبێلە بەردەوام لەوانی دیکە باشتر دەبێت.",
                            onPressedBritish: () =>
                                speakcompetitions10("en-GB"),
                            onPressedAmerican: () =>
                                speakcompetitions10("en-US"),
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
- Noun: competition (derived forms: competitions)
1. A business relation in which two parties compete to gain customers
"business competition can be fiendish at times"
 
2. An occasion on which a winner is selected from among two or more contestants (= contest)
 
3. The act of competing as for profit or a prize (= contention, rivalry, rivality [archaic])
"the teams were in fierce competition for first place";
 
4. The contestant you hope to defeat (= rival, challenger, competitor, contender)
"he wanted to know what the competition was doing";
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

  final String _videoId = '1I8Rfb-oi54';
  final double _startSeconds = 105;

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

  final String _videoId = 'mxYbJ5uoJFg';
  final double _startSeconds = 446;

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

  final String _videoId = 'iLGn64to7uU';
  final double _startSeconds = 217;

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

  final String _videoId = 'r-Or05EFLUM';
  final double _startSeconds = 186;

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

  final String _videoId = 'rWGfdldxt7g';
  final double _startSeconds = 109;

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

  final String _videoId = 'UeUPILGGIls';
  final double _startSeconds = 0;

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

  final String _videoId = '5bhefS70tgs';
  final double _startSeconds = 123;

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