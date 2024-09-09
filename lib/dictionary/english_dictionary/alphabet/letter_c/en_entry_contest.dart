import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontest extends StatelessWidget {
  EnglishEntrycontest({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontest(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("contest");
  }

  Future<void> speakcontests1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was awarded the first prize in an essay contest .");
  }

  Future<void> speakcontests2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He said he had enjoyed the contest with his rival for the title .");
  }

  Future<void> speakcontests3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Jackson has injured his knee and is now out of the contest.");
  }

  Future<void> speakcontests4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The New Zealanders are looking forward to future contests with South Africa.");
  }

  Future<void> speakcontests5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Both parties are predicting victory in this close contest.");
  }

  Future<void> speakcontests6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "During the election contest newspapers are not allowed to publish public opinion polls.");
  }

  Future<void> speakcontests7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Three candidates contested the leadership.");
  }

  Future<void> speakcontests8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The party has decided not to contest this election.");
  }

  Future<void> speakcontests9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "His views on evolution are strongly contested by other scientists.");
  }

  Future<void> speakcontests10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Her son contested the will, stating that she was not of sound mind when she signed it.");
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
                            EntryTitle(word: "contest"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntest/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontest("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntest/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontest("en-US"),
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
کوردی: پێشبڕکێ، ڕقەبەرایەتی، بەرامبەرکێ، بەرامبەرێن، بەربەرەکانی، ململانێ، زۆرەزمێ، ڕکەبەری، ناکۆکی، کێشە، دووبەرەکی، کێشمەکێش، قڕە، جوڕڕە، مشت‌ومڕ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) پێشبڕکیەک تێیدا خەڵکی ھەوڵ دەدەن شتێک ببەنەوە"),
                          SentencesRow(
                            englishText:
                                "She was awarded the first prize in an essay contest .",
                            kurdishText:
                                "خەڵاتی یەکەمی پێدرا لە پێشبڕکێیەکی وتار نووسین.",
                            onPressedBritish: () => speakcontests1("en-GB"),
                            onPressedAmerican: () => speakcontests1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He said he had enjoyed the contest with his rival for the title .",
                            kurdishText:
                                "گوتی چێژی لە پێشبڕکێ لەگەڵ ڕکابەرەکەی بینی بۆ نازناوەکە.",
                            onPressedBritish: () => speakcontests2("en-GB"),
                            onPressedAmerican: () => speakcontests2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Jackson has injured his knee and is now out of the contest.",
                            kurdishText:
                                "جاکسن لاقی بریندار کردبوو و لە ئێستادا لە دەرەوەی پێشبڕکێیەکە.",
                            onPressedBritish: () => speakcontests3("en-GB"),
                            onPressedAmerican: () => speakcontests3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The New Zealanders are looking forward to future contests with South Africa.",
                            kurdishText:
                                "نیوزلەندییەکان بە ئاواتی ڕووبەڕووبوونەوەی داھاتوون لەگەڵ باشووری ئەفریقا.",
                            onPressedBritish: () => speakcontests4("en-GB"),
                            onPressedAmerican: () => speakcontests4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) کێشمەکێشێک بۆ بەدەستھێنانی کۆنترۆڵ یان دەسەڵات"),
                          SentencesRow(
                            englishText:
                                "Both parties are predicting victory in this close contest.",
                            kurdishText:
                                "ھەردوو پارتەکە پێشبینی بردنەوە دەکەن لەم ڕکابەرییە توندەدا.",
                            onPressedBritish: () => speakcontests5("en-GB"),
                            onPressedAmerican: () => speakcontests5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "During the election contest newspapers are not allowed to publish public opinion polls.",
                            kurdishText:
                                "کە ماوەی ڕکابەرایەتی ھەڵبژاردندا ڕۆژنامەکان ڕێگەیان پێ نادرێت ڕاپرسیی بۆچوونی خەڵکی بڵاوبکەنەوە.",
                            onPressedBritish: () => speakcontests6("en-GB"),
                            onPressedAmerican: () => speakcontests6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) بەژداری کردن لە ڕکابەرێتییەک و ھەوڵدان بۆ بردنەوەی"),
                          SentencesRow(
                            englishText:
                                "Three candidates contested the leadership.",
                            kurdishText:
                                "سێ بەربژێر ڕکابەرایەتییان دەکرد بۆ سەرکردایەتی.",
                            onPressedBritish: () => speakcontests7("en-GB"),
                            onPressedAmerican: () => speakcontests7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The party has decided not to contest this election.",
                            kurdishText:
                                "پارتەکە بڕیاری داوە بەژداری ھەڵبژاردن نەکات.",
                            onPressedBritish: () => speakcontests8("en-GB"),
                            onPressedAmerican: () => speakcontests8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) بە فەرمی وەستانەوە دژ بە بڕیارێک یان لێدوانێک چونکە پێتوایە ھەڵەیە"),
                          SentencesRow(
                            englishText:
                                "His views on evolution are strongly contested by other scientists.",
                            kurdishText:
                                "دیدەکانی سەبارەت بە پەرەسەندن بە توندی لەلایەن زانایانی دیکەوە ڕەتدەکرێتەوە.",
                            onPressedBritish: () => speakcontests9("en-GB"),
                            onPressedAmerican: () => speakcontests9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her son contested the will, stating that she was not of sound mind when she signed it.",
                            kurdishText:
                                "کوڕەکەی ڕەخنەی لە وەسیەتەکە گرت و گوتی تەواو نەبوو کە واژۆی کرد.",
                            onPressedBritish: () => speakcontests10("en-GB"),
                            onPressedAmerican: () => speakcontests10("en-US"),
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
- Noun: contest (derived forms: contests)
1. An occasion on which a winner is selected from among two or more contestants (= competition)
 
2. A struggle between rivals

- Verb: contest (derived forms: contests, contesting, contested)
1. To make the subject of dispute, contention, or litigation (= contend, repugn)
"They contested the outcome of the race";
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

  final String _videoId = '5XZv8kw4Nig';
  final double _startSeconds = 38;

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

  final String _videoId = '6UoUv6jyieM';
  final double _startSeconds = 9;

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

  final String _videoId = 'y1sF6ZeASU0';
  final double _startSeconds = 107;

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

  final String _videoId = 'U3k5NlVxnp8';
  final double _startSeconds = 8;

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

  final String _videoId = 'pkl_UNHzdIE';
  final double _startSeconds = 8;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 1355;

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

  final String _videoId = 'AJWpvoXP5d4';
  final double _startSeconds = 140;

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