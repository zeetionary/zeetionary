import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconsideration extends StatelessWidget {
  EnglishEntryconsideration({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconsideration(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("consideration");
  }

  Future<void> speakconsiderations1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Careful consideration should be given to issues of health and safety.");
  }

  Future<void> speakconsiderations2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her ideas are worthy of serious consideration.");
  }

  Future<void> speakconsiderations3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("After a few moments' consideration, he began to speak.");
  }

  Future<void> speakconsiderations4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There needs to be a consideration of the legal issues involved.");
  }

  Future<void> speakconsiderations5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The proposals are currently under consideration.");
  }

  Future<void> speakconsiderations6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He pointed out several problems that required more detailed consideration.");
  }

  Future<void> speakconsiderations7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A tribunal has decided the case needs further consideration.");
  }

  Future<void> speakconsiderations8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Both options require thoughtful consideration of the costs.");
  }

  Future<void> speakconsiderations9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We will give your proposals serious consideration.");
  }

  Future<void> speakconsiderations10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The government's decision was obviously motivated by political considerations.");
  }

  Future<void> speakconsiderations11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Time is another important consideration.");
  }

  Future<void> speakconsiderations12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Here are a few additional considerations that may help in making the correct decision.");
  }

  Future<void> speakconsiderations13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their kindness and consideration will not be forgotten.");
  }

  Future<void> speakconsiderations14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They showed no consideration whatsoever for my feelings.");
  }

  Future<void> speakconsiderations15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was shocked by his lack of consideration for others.");
  }

  Future<void> speakconsiderations16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can buy the books for a small consideration.");
  }

  Future<void> speakconsiderations17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She agreed, for a small consideration, to arrange a meeting with the director.");
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
                            EntryTitle(word: "consideration"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˌsɪdəˈreɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconsideration("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˌsɪdəˈreɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconsideration("en-US"),
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
کوردی: سەرنج، تێبینی، بال، بایەخ، وردبوونەوە، خوردبوونەوە، تێڕامان، قووڵ‌بوونەوە، تێ‌ڕوانین، بیرکردنەوە، سەرنج‌پێدان، ڕەچاوکردن، بایەخ‌پێدان، بەھێندگرتن، ڕاگرتنی دڵی خەڵک، بەتەنگەوەبوون، پەیجۆری، لێکدانەوە، لێکۆڵینەوە،	پرس، بابەت، مژار،	ھۆ، بەڵگە،	پاداشت، دەس‌خۆشانە،	پارە،	گرنگایەتی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) بیرکردنەوە بە وریاییەوە سەبارەت بە شتێک"),
                          SentencesRow(
                            englishText:
                                "Careful consideration should be given to issues of health and safety.",
                            kurdishText:
                                "تێڕامانی ورد دەبێت بدرێت بە بابەتەکانی تەندرووستی و سەلامەتی.",
                            onPressedBritish: () =>
                                speakconsiderations1("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her ideas are worthy of serious consideration.",
                            kurdishText: "بیرۆکەکانی شایەنی تێڕامانی وردن.",
                            onPressedBritish: () =>
                                speakconsiderations2("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "After a few moments' consideration, he began to speak.",
                                    kurdishText:
                                        "لە دوای ماوەیەک لە وردبوونەوە، دەستی بە قسەکردن کرد.",
                                    onPressedBritish: () =>
                                        speakconsiderations3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiderations3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "There needs to be a consideration of the legal issues involved.",
                                    kurdishText:
                                        "دەبێت تێ‌ڕوانینی بابەتە یاساییەکان ھەبن کە دێنە ئاراوە.",
                                    onPressedBritish: () =>
                                        speakconsiderations4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiderations4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The proposals are currently under consideration (= being discussed).",
                                    kurdishText:
                                        "پێشنیازەکان لە ئێستادا لە ژێر گفتوگۆدان.",
                                    onPressedBritish: () =>
                                        speakconsiderations5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiderations5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He pointed out several problems that required more detailed consideration.",
                                    kurdishText:
                                        "ئاماژەی بە ژمارەیەک کێشە کرد کە پێویستیان بە تێرامانی ورد ھەبوو.",
                                    onPressedBritish: () =>
                                        speakconsiderations6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiderations6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "A tribunal has decided the case needs further consideration.",
                                    kurdishText:
                                        "دادگایەک بڕیاری داوە کەیسەکە پێویستی بە وردبوونەوەی زیاتر ھەیە.",
                                    onPressedBritish: () =>
                                        speakconsiderations7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiderations7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Both options require thoughtful consideration of the costs.",
                                    kurdishText:
                                        "ھەردوو ھەڵبژاردەکە پێویستیان بە ڕەچاوکردنی وردی تێچوو ھەیە.",
                                    onPressedBritish: () =>
                                        speakconsiderations8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiderations8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We will give your proposals serious consideration.",
                                    kurdishText:
                                        "سەرنجی ورد دەدەین بە پێشنیازەکانت.",
                                    onPressedBritish: () =>
                                        speakconsiderations9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakconsiderations9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) شتێک کە دەبێت بیری لێبکرێتەوە کە پلان دادەنێیت یان بیر لە شتێک دەکەیتەوە"),
                          SentencesRow(
                            englishText:
                                "The government's decision was obviously motivated by political considerations.",
                            kurdishText:
                                "بڕیارەکەی حکومەت بە ئاشکرایی بابەتی سیاسی لەپشتەوەبوو .",
                            onPressedBritish: () =>
                                speakconsiderations10("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Time is another important consideration.",
                            kurdishText: "کات پرسێکی دیکەی گرنگە.",
                            onPressedBritish: () =>
                                speakconsiderations11("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Here are a few additional considerations that may help in making the correct decision.",
                            kurdishText:
                                "ئەمانە چەند پرسێکی دیکەی زیادەن کە دەکرێت یارمەتیدەر بن لە گەشتن بە بڕیاری درووست.",
                            onPressedBritish: () =>
                                speakconsiderations12("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) خاسیەتی ڕەچاوکردنی ھەست و سۆزی کەسانی دیکە و بیرکردنەوە لە حەز و ئاواتەکانیان"),
                          SentencesRow(
                            englishText:
                                "Their kindness and consideration will not be forgotten.",
                            kurdishText:
                                "میھرەبانی و دڵفراوانییان لەبیرناکرێن.",
                            onPressedBritish: () =>
                                speakconsiderations13("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They showed no consideration whatsoever for my feelings.",
                            kurdishText:
                                "ھیچ تێگەشتنێکیان بۆ ھەستەکانم بە ھیچ شێوەیەک پیشان نەدا.",
                            onPressedBritish: () =>
                                speakconsiderations14("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was shocked by his lack of consideration for others.",
                            kurdishText: "شۆک بوو بە بێ‌ھەستیی بۆ کەسانی دیکە.",
                            onPressedBritish: () =>
                                speakconsiderations15("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) خەڵاتێک یان پارەدانێک بۆ خزمەتگوزارییەک"),
                          SentencesRow(
                            englishText:
                                "You can buy the books for a small consideration.",
                            kurdishText:
                                "دەتوانیت کتێبەکان بە پارەیەکی کەم بکڕیت.",
                            onPressedBritish: () =>
                                speakconsiderations16("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She agreed, for a small consideration, to arrange a meeting with the director.",
                            kurdishText:
                                "ڕازی بوو لە بەرامبەر بەخشیشێکی کەمدا چاوپێکەوتنێک لەگەڵ بەڕێوبەر ڕێکبخات.",
                            onPressedBritish: () =>
                                speakconsiderations17("en-GB"),
                            onPressedAmerican: () =>
                                speakconsiderations17("en-US"),
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: consideration (derived forms: considerations)
1. The process of giving careful thought to something
 
2. Information that should be kept in mind when making a decision (= circumstance, condition)
"another consideration is the time it would take";
 
3. A discussion of a topic (as in a meeting)
"consideration of the traffic problem took more than an hour"
 
4. Kind and considerate regard for others (= considerateness, thoughtfulness)
"he showed no consideration for her feelings";
 
5. A fee charged in advance to retain the services of someone (= retainer)
 
6. A considerate and thoughtful act (= thoughtfulness)
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

  final String _videoId = 'xdE4amM65uc';
  final double _startSeconds = 118;

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

  final String _videoId = 'tUR9UIscLGU';
  final double _startSeconds = 303;

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

  final String _videoId = 'bp6kmcno9SI';
  final double _startSeconds = 758;

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

  final String _videoId = 'V1GKxnM2L7w';
  final double _startSeconds = 919;

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

  final String _videoId = 'K_rDD9P0438';
  final double _startSeconds = 79;

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

  final String _videoId = '0zwNZJbM-Gw';
  final double _startSeconds = 151;

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

  final String _videoId = '0sazcZ8wwZc';
  final double _startSeconds = 161;

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