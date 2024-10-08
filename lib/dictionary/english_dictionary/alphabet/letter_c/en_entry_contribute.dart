import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycontribute extends StatelessWidget {
  EnglishEntrycontribute({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontribute(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("contribute");
  }

  Future<void> speakcontributes1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do you wish to contribute?");
  }

  Future<void> speakcontributes2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many people contributed generously to the appeal.");
  }

  Future<void> speakcontributes3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Come to the meeting if you feel you have something to contribute.");
  }

  Future<void> speakcontributes4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Human error may have been a contributing factor.");
  }

  Future<void> speakcontributes5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Medical negligence was said to have contributed to her death.");
  }

  Future<void> speakcontributes6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("US policy has contributed to the problem.");
  }

  Future<void> speakcontributes7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Unemployment contributes directly to homelessness.");
  }

  Future<void> speakcontributes8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Immigrants have contributed to British culture in many ways.");
  }

  Future<void> speakcontributes9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Hall's work contributed greatly to our knowledge of the disease.");
  }

  Future<void> speakcontributes10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This book contributes little to our understanding of the subject.");
  }

  Future<void> speakcontributes11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The blog now has about 20 people contributing regularly.");
  }

  Future<void> speakcontributes12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Associated Press contributed to this report.");
  }

  Future<void> speakcontributes13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She contributed a number of articles to the magazine.");
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
                            EntryTitle(word: "contribute"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /kənˈtrɪbjuːt/,  /ˈkɒntrɪbjuːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontribute("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈtrɪbjuːt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontribute("en-US"),
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
کوردی: ھاوکاری کردن، بەشداری کردن، یارمەتیدان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) پێدانی شتێک، بەتایبەتی پارە یان کەلووپەل، بۆ بەدەستھێنان یان بەخشین بە شتێک"),
                          SentencesRow(
                            englishText: "Do you wish to contribute?",
                            kurdishText: "دەتەوێت ببەخشیت؟",
                            onPressedBritish: () => speakcontributes1("en-GB"),
                            onPressedAmerican: () => speakcontributes1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Many people contributed generously to the appeal.",
                            kurdishText:
                                "زۆر کەس بە دڵفراوانانە پارەیان دا بۆ داواکارییەکەمان.",
                            onPressedBritish: () => speakcontributes2("en-GB"),
                            onPressedAmerican: () => speakcontributes2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) بوون بە یەکێک لە ھۆکارەکانی شتێک"),
                          SentencesRow(
                            englishText:
                                "Human error may have been a contributing factor.",
                            kurdishText:
                                "ھەڵەی مرۆڤ دەکرێت یەکێک لە فاکتەرە سەبەبکارەکان بووبێت.",
                            onPressedBritish: () => speakcontributes4("en-GB"),
                            onPressedAmerican: () => speakcontributes4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Medical negligence was said to have contributed to her death.",
                            kurdishText:
                                "ھەڵەی تەندرووستی دەوترێت سەبەبکاری مردنەکەی بوو.",
                            onPressedBritish: () => speakcontributes5("en-GB"),
                            onPressedAmerican: () => speakcontributes5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "US policy has contributed to the problem.",
                            kurdishText:
                                "سیاسەتی ئەمریکا بووە بە ھۆکاری کێشەکە.",
                            onPressedBritish: () => speakcontributes6("en-GB"),
                            onPressedAmerican: () => speakcontributes6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Unemployment contributes directly to homelessness.",
                            kurdishText: "بێکاری ڕاستەوخۆ ھۆکارە بۆ بێلانەیی.",
                            onPressedBritish: () => speakcontributes7("en-GB"),
                            onPressedAmerican: () => speakcontributes7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) زیادکردن، بەھێزکردن، یان بەخشین بە شتێک"),
                          SentencesRow(
                            englishText:
                                "Immigrants have contributed to British culture in many ways.",
                            kurdishText:
                                "پەنابەران لە زۆر لایەنەوە بەخشینیان بە کەلتووری بەریتانیا ھەبووە.",
                            onPressedBritish: () => speakcontributes8("en-GB"),
                            onPressedAmerican: () => speakcontributes8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Hall's work contributed greatly to our knowledge of the disease.",
                            kurdishText:
                                "کارەکانی ھۆڵ زۆر یارمەتیدەری زانیاریمان لەسەر نەخۆشییەکە بوون.",
                            onPressedBritish: () => speakcontributes9("en-GB"),
                            onPressedAmerican: () => speakcontributes9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "This book contributes little to our understanding of the subject.",
                            kurdishText:
                                "ئەم کتێبە یارمەتیدەرێکی بچووکە بۆ تێگەشتنمان لەسەر نەخۆشییەکە.",
                            onPressedBritish: () => speakcontributes10("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributes10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) نووسین بۆ ڕۆژنامەیەک، کتێبێک، وێبسایتێک، ھتد یان پڕۆگرامێکی تەلەفیزیۆن یان ڕادیۆیی؛ قسەکردن لە کاتی گفتوگۆیەک"),
                          SentencesRow(
                            englishText:
                                "The blog now has about 20 people contributing regularly.",
                            kurdishText:
                                "بلۆگەکە لە ئێستادا ٢٠ کەسی نووسەری بەردەوامی ھەیە.",
                            onPressedBritish: () => speakcontributes11("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributes11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Associated Press contributed to this report.",
                            kurdishText:
                                "ئەسۆوشیەیتید پرێس بەژدار بوو لە نووسینی ئەم ڕاپۆرتە.",
                            onPressedBritish: () => speakcontributes12("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributes12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Come to the meeting if you feel you have something to contribute.",
                            kurdishText:
                                "وەرە بۆ کۆبوونەوەکە ئەگەر شتێکت ھەیە بۆ گوتن.",
                            onPressedBritish: () => speakcontributes3("en-GB"),
                            onPressedAmerican: () => speakcontributes3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She contributed a number of articles to the magazine.",
                            kurdishText: "ژمارەیەک وتاری بۆ گۆڤارەکە نووسی.",
                            onPressedBritish: () => speakcontributes13("en-GB"),
                            onPressedAmerican: () =>
                                speakcontributes13("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: contribute (derived forms: contributed, contributes, contributing)
1. Provide a particular quality or character (= lend, impart, bestow, add, bring)
"Her presence contributes a certain cachet to the company";
 
2. Provide a part of a whole amount; give towards some cause (= give, chip in [informal], kick in)
"I contributed at the office";
 
3. Have the effect of making happen, or become more likely (= lead, conduce)
"The use of computers in the classroom contributed to better writing";
 
4. Provide (= put up)
"The city has to contribute half the required amount";
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

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 135;

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

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 90;

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

  final String _videoId = '043CQXHfx10';
  final double _startSeconds = 1301;

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

  final String _videoId = 'NLw53N3zz1Y';
  final double _startSeconds = 165;

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

  final String _videoId = 'UtdotNbmjxU';
  final double _startSeconds = 122;

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

  final String _videoId = 'v01SxXui9XQ';
  final double _startSeconds = 2615;

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

  final String _videoId = 'SaOHTp07Vgw';
  final double _startSeconds = 1252;

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