import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconsistent extends StatelessWidget {
// blank divider
  EnglishEntryconsistent({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconsistent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("consistent");
  }

  Future<void> speakconsistents1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He has been Milan's most consistent player this season.");
  }

  Future<void> speakconsistents2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She's not very consistent in the way she treats her children.");
  }

  Future<void> speakconsistents3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We must be consistent in applying the rules.");
  }

  Future<void> speakconsistents4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We have had enough of the party's consistent failure to come up with any new policies.");
  }

  Future<void> speakconsistents5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There has been a pattern of consistent growth in the economy.");
  }

  Future<void> speakconsistents6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Defence spending levels have remained consistent.");
  }

  Future<void> speakconsistents7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The results are entirely consistent with our earlier research.");
  }

  Future<void> speakconsistents8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These findings are consistent with other studies.");
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
                            EntryTitle(word: "consistent"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈsɪstənt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconsistent("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈsɪstənt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconsistent("en-US"),
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
کوردی: سازاو، گونجاو، یەکان‌گیر، یەک‌گرەوە، جۆر، یەک‌کەوتوو، یەک‌ڕەنگ، ھاوڕێک، یەک‌جۆر، پتەو، تۆکمە، سەقامگیر، چەسپیو، ڕەگ‌داکوتاو، جێگیر، خۆگرتوو، نەگۆڕ، توندوتۆڵ،	لۆژیکی، ژیرانە،	ھەمیشەیی، یەکبینە، بەردەوام
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) ھەمیشە ڕەفتارکردن بە ھەمان شێوە، یان ھەبوونی ھەمان ئاست، بۆچوون، ھتد"),
                          SentencesRow(
                            englishText:
                                "He has been Milan's most consistent player (= who plays well most often) this season.",
                            kurdishText:
                                "ئەم وەرزە یاریزانی نەگۆڕی میلانی بووە.",
                            onPressedBritish: () => speakconsistents1("en-GB"),
                            onPressedAmerican: () => speakconsistents1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She's not very consistent in the way she treats her children.",
                            kurdishText:
                                "یەک‌جۆر نییە لە شێوازی مامەڵەکردنی لەگەڵ منداڵەکانی.",
                            onPressedBritish: () => speakconsistents2("en-GB"),
                            onPressedAmerican: () => speakconsistents2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We must be consistent in applying the rules.",
                            kurdishText:
                                "دەبێت یەک‌ڕەنگ بین لە چەسپاندنی یاساکاندا.",
                            onPressedBritish: () => speakconsistents3("en-GB"),
                            onPressedAmerican: () => speakconsistents3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) ڕوودان بە ھەمان شێوە و بەردەوام بوون بۆ ماوەیەکی درێژ"),
                          SentencesRow(
                            englishText:
                                "We have had enough of the party's consistent failure to come up with any new policies.",
                            kurdishText:
                                "بەشی پێویست لە شکستی بەردەوامی پارەکەمان ھەبووە بۆ دۆزینەوەی سیاسەتی تازەوە.",
                            onPressedBritish: () => speakconsistents4("en-GB"),
                            onPressedAmerican: () => speakconsistents4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There has been a pattern of consistent growth in the economy.",
                            kurdishText:
                                "شێوازێک لە گەشەی بەردەوامی ئابووری ھەبووە.",
                            onPressedBritish: () => speakconsistents5("en-GB"),
                            onPressedAmerican: () => speakconsistents5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Defence spending levels have remained consistent.",
                            kurdishText:
                                "ئاستی خەرجی بەرگری بە نەگۆڕی ماوەتەوە.",
                            onPressedBritish: () => speakconsistents6("en-GB"),
                            onPressedAmerican: () => speakconsistents6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) سازاو لەگەڵ شتێکدا"),
                          SentencesRow(
                            englishText:
                                "The results are entirely consistent with our earlier research.",
                            kurdishText:
                                "ئەنجامەکان بە تەواوی یەکان‌گیرن لەگەڵ لێکۆڵینەوەی پێشووترمان.",
                            onPressedBritish: () => speakconsistents7("en-GB"),
                            onPressedAmerican: () => speakconsistents7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "These findings are consistent with other studies.",
                            kurdishText:
                                "ئەم دۆزینەوانە یەکگرتوون لەگەڵ توێژینەوەکانی دیکەدا.",
                            onPressedBritish: () => speakconsistents8("en-GB"),
                            onPressedAmerican: () => speakconsistents8("en-US"),
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
- Adjective: consistent 
1. (sometimes followed by 'with') in agreement with what is already known; compatible with something else
"testimony consistent with the known facts"; "I have decided that the course of conduct which I am following is consistent with my sense of responsibility as president in time of war"
 
2. The same throughout in structure or composition (= uniform)
"bituminous coal is often treated as a consistent and homogeneous product";
 
3. Capable of being reproduced (= reproducible)
"astonishingly consistent results can be obtained";
 
4. Marked by an orderly, logical, and aesthetically consistent relation of parts (= coherent, logical, ordered)
"a consistent argument";
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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 518;

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

  final String _videoId = 'VvJm4pQZ04s';
  final double _startSeconds = 268;

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

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 598;

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

  final String _videoId = '0SYKA00eFWY';
  final double _startSeconds = 227;

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

  final String _videoId = 'D5mAhrkaMds';
  final double _startSeconds = 296;

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

  final String _videoId = 'TRPPi_zpTvE';
  final double _startSeconds = 721;

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

  final String _videoId = 'NDpAHCMZ6HA';
  final double _startSeconds = 136;

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