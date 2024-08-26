import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconfirm extends StatelessWidget {
// blank divider
  EnglishEntryconfirm({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconfirm(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("confirm");
  }

  Future<void> speakconfirms1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We have yet to confirm the identities of the victims.");
  }

  Future<void> speakconfirms2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She said she could not confirm or deny the allegations.");
  }

  Future<void> speakconfirms3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The authorities refused to confirm any details.");
  }

  Future<void> speakconfirms4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Police sources confirmed that ten people had been arrested at the march.");
  }

  Future<void> speakconfirms5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Has everyone confirmed (that) they’re coming?");
  }

  Future<void> speakconfirms6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It has been confirmed that the meeting will take place next week.");
  }

  Future<void> speakconfirms7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was confirmed as captain for the rest of the season.");
  }

  Future<void> speakconfirms8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The walk in the mountains confirmed his fear of heights.");
  }

  Future<void> speakconfirms9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This latest tragedy merely confirms my view that the law must be tightened.");
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
                            EntryTitle(word: "confirm"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈfɜːm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconfirm("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈfɜːrm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconfirm("en-US"),
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
کوردی: پشت‌ڕاست کردن، قبووڵ کردن، سەلماندن، چەسپاندن، جێگر کردن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) گوتن یان پیشاندانی ئەوەی کە شتێک بەدڵنیاییەوە درووستە، بەتایبەتی بە پیشاندانی بەڵگە"),
                          SentencesRow(
                            englishText:
                                "We have yet to confirm the identities of the victims.",
                            kurdishText:
                                "ھێشتا خەریکین ناسنامەی قوربانییەکان پشت‌ڕاست دەکەینەوە.",
                            onPressedBritish: () => speakconfirms1("en-GB"),
                            onPressedAmerican: () => speakconfirms1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She said she could not confirm or deny the allegations.",
                            kurdishText:
                                "گوتی ناتوانێت تۆمەتەکان پشت‌ڕاست یان ڕەتبکاتەوە.",
                            onPressedBritish: () => speakconfirms2("en-GB"),
                            onPressedAmerican: () => speakconfirms2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The authorities refused to confirm any details.",
                            kurdishText:
                                "بەرپرسان ڕەتیان کردەوە ھیچ وردەکارییەک پشت‌ڕاست بکەنەوە.",
                            onPressedBritish: () => speakconfirms3("en-GB"),
                            onPressedAmerican: () => speakconfirms3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Police sources confirmed that ten people had been arrested at the march.",
                            kurdishText:
                                "سەرچاوەکانی پۆلیس پشتڕاستیان کردەوە ١٠ کەس لە ڕێپێوانەکە دەستگیر کرابوون.",
                            onPressedBritish: () => speakconfirms4("en-GB"),
                            onPressedAmerican: () => speakconfirms4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) بە فەرمیکردن یان دڵنیایی کردنەوە لە بۆچوونێک، ڕێککەوتنێک، ھتد"),
                          SentencesRow(
                            englishText:
                                "Has everyone confirmed (that) they’re coming?",
                            kurdishText: "ھەموان دڵنیاییان کردووە کە دێن؟",
                            onPressedBritish: () => speakconfirms5("en-GB"),
                            onPressedAmerican: () => speakconfirms5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It has been confirmed that the meeting will take place next week.",
                            kurdishText:
                                "پشتڕاستکراوە کە چاوپێکەوتنەکە ھەفتەی داھاتوو دەبێت.",
                            onPressedBritish: () => speakconfirms6("en-GB"),
                            onPressedAmerican: () => speakconfirms6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was confirmed as captain for the rest of the season.",
                            kurdishText:
                                "تا کۆتایی وەرزەکە وەک کاپتن پشتڕاستکرایەوە.",
                            onPressedBritish: () => speakconfirms7("en-GB"),
                            onPressedAmerican: () => speakconfirms7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) واکردن لە کەسێک کە باوەڕی زیاتر بە شتێک بکات"),
                          SentencesRow(
                            englishText:
                                "The walk in the mountains confirmed his fear of heights.",
                            kurdishText:
                                "گەڕان بە چیاکاندا ترسی بەرزایی ئەوەی پشتڕاستکردەوە.",
                            onPressedBritish: () => speakconfirms8("en-GB"),
                            onPressedAmerican: () => speakconfirms8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This latest tragedy merely confirms my view that the law must be tightened.",
                            kurdishText:
                                "ئەم تراژیدیایەی کۆتایی تەنھا ئەوەیە بۆچوونەکانم پشت‌ڕاست دەکاتەوە کە یاساکە دەبێت توندبکرێتەوە.",
                            onPressedBritish: () => speakconfirms9("en-GB"),
                            onPressedAmerican: () => speakconfirms9("en-US"),
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
- Verb: confirm (derived forms: confirming, confirms, confirmed)
1. Establish or strengthen as with new evidence or facts (= corroborate, sustain, substantiate, support, affirm)
"his story confirmed my doubts";
 
2. Strengthen or make more firm (= reassert)
"Confirm thy soul in self-control!"; "The witnesses confirmed the victim's account";
 
3. Support a person for a position
"The Senate confirmed the President's candidate for Secretary of Defense"
 
4. (religion) administer the rite of confirmation to
"the children were confirmed in their mother's faith"
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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1109;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 483;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 1296;

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

  final String _videoId = 'eaeISOjtTVY';
  final double _startSeconds = 173;

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

  final String _videoId = 'uSW5zEWY15c';
  final double _startSeconds = 33;

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

  final String _videoId = 'FgT3GCsJteA';
  final double _startSeconds = 1500;

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

  final String _videoId = '2_XiKIvXVEw';
  final double _startSeconds = 1320;

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