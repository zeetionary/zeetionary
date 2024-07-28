import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycore extends StatelessWidget {
// blank divider
  EnglishEntrycore({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcore(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("core");
  }

  Future<void> speakcores1(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dutch paintings form the core of the collection.");
  }

  Future<void> speakcores2(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Concern for the environment is at the core of our policies.");
  }

  Future<void> speakcores3(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Our need for love lies at the very core of our being.");
  }

  Future<void> speakcores4(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The earth's core is a hot, molten mix of iron and nickel.");
  }

  Future<void> speakcores5(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't throw your apple core on the floor!");
  }

  Future<void> speakcores6(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Your posture will improve as your core becomes stronger.");
  }

  Future<void> speakcores7(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He gathered a small core of advisers around him.");
  }

  Future<void> speakcores8(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We need to concentrate on our core business.");
  }

  Future<void> speakcores9(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The use of new technology is core to our strategy.");
  }

  Future<void> speakcores10(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The party is losing touch with its core values.");
  }

  Future<void> speakcores11(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The team is built around a core group of players.");
  }

  Future<void> speakcores12(String languageCode) async {
    // DOPSUM: CHANGE speakcore
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Peel and core the pears before cooking them.");
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
                            EntryTitle(word: "core"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɔː(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcore("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kɔːr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcore("en-US"),
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
کوردی: نێوک، چنجک، دەنک، تۆو، مەغز، کرۆک، کاکڵ، نێرک,	بەشی سەرەکی یان ناوەندی، دڵ، ناوەند، چەق، جەرگە، نێرک,	(کابل) تاڵ، سیم 
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) گرنگترین یان سەرەکیترین بەشی شتێک"),
                          SentencesRow(
                            englishText:
                                "Dutch paintings form the core of the collection.",
                            kurdishText:
                                "تابلۆ ھۆڵەندییەکان ناوەندی کۆمەڵەکە پێکدێنن.", // core",
                            onPressedBritish: () => speakcores1("en-GB"),
                            onPressedAmerican: () => speakcores1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Concern for the environment is at the core of our policies.",
                            kurdishText:
                                "گرنگی بۆ ژینگە لە کرۆکی سیاسەتەکانمانە.",
                            onPressedBritish: () => speakcores2("en-GB"),
                            onPressedAmerican: () => speakcores2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Our need for love lies at the very core of our being.",
                            kurdishText:
                                "پێویستیمان بۆ خۆشەویستی لە کرۆکی بوونماندایە.",
                            onPressedBritish: () => speakcores3("en-GB"),
                            onPressedAmerican: () => speakcores3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ناو) چەقی شتێک"),
                          SentencesRow(
                            englishText:
                                "The earth's core is a hot, molten mix of iron and nickel.",
                            kurdishText:
                                "چەقی زەوی تێکەڵەیەکی گەرم و تواوەی ئاسن و نیکڵە.",
                            onPressedBritish: () => speakcores4("en-GB"),
                            onPressedAmerican: () => speakcores4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) چەقی ھەندێک میوە کە تۆوەکەی تێدایە"),
                          SentencesRow(
                            englishText:
                                "Don't throw your apple core on the floor!",
                            kurdishText: "نێوکی سێوەکەت فڕی مەدە سەر زەوییەکە.",
                            onPressedBritish: () => speakcores5("en-GB"),
                            onPressedAmerican: () => speakcores5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ماسوولکەکانی خوارەوەی پشت و گەدە کە لە زۆرینەی جوڵەدا بەکاریان دێنیت"),
                          SentencesRow(
                            englishText:
                                "Your posture will improve as your core becomes stronger.",
                            kurdishText:
                                "قیافەت باشتر دەبێت کە ماسولکەی ناوەندیت بەھێزتر دەبێت.",
                            onPressedBritish: () => speakcores6("en-GB"),
                            onPressedAmerican: () => speakcores6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) گرووپێکی بچووک لە خەڵکی کە لە چالاکییەکی دیاریکراودا بەژداری دەکەن"),
                          SentencesRow(
                            englishText:
                                "He gathered a small core of advisers around him.",
                            kurdishText:
                                "گرووپێکی بچووک لە ڕاوێژکارانی لە دەوری خۆی کۆکردەوە.",
                            onPressedBritish: () => speakcores7("en-GB"),
                            onPressedAmerican: () => speakcores7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ھاوەڵناو) گرنگترین"),
                          SentencesRow(
                            englishText:
                                "We need to concentrate on our core business.",
                            kurdishText:
                                "دەبێت سەرنج بخەینە سەر گرنگترین بازرگانیمان.",
                            onPressedBritish: () => speakcores8("en-GB"),
                            onPressedAmerican: () => speakcores8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The use of new technology is core to our strategy.",
                            kurdishText:
                                "بەکارھێنانی تەکنەلۆژیای تازە گرنگترینە بۆ ستراتیژیمان.",
                            onPressedBritish: () => speakcores9("en-GB"),
                            onPressedAmerican: () => speakcores9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ھاوەڵناو) بۆ باسکردنی گرنگترین یان چەقی باوەڕ، ھتد ـی کەسێک یان گرووپێک"),
                          SentencesRow(
                            englishText:
                                "The party is losing touch with its core values.",
                            kurdishText:
                                "پارتە پەیوەندی لەدەست دەدات لەگەڵ بەھا بنەڕەتییەکانی.",
                            onPressedBritish: () => speakcores10("en-GB"),
                            onPressedAmerican: () => speakcores10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ھاوەڵناو) بۆ باسکردنی گرنگترین ئەندامەکانی گرووپێک"),
                          SentencesRow(
                            englishText:
                                "The team is built around a core group of players.",
                            kurdishText:
                                "تیمەکە درووست بووە لە گرنگترین گرووپی یاریزانان.",
                            onPressedBritish: () => speakcores11("en-GB"),
                            onPressedAmerican: () => speakcores11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) دەرکردنی چەقی میوەیەک"),
                          SentencesRow(
                            englishText:
                                "Peel and core the pears before cooking them.",
                            kurdishText:
                                "ھەرمێکان پاک بکە و ناوەکەیان دەربێنە پێش لێنانیان.",
                            onPressedBritish: () => speakcores12("en-GB"),
                            onPressedAmerican: () => speakcores12("en-US"),
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
- Noun: core (derived forms: cores)
1. A small group of indispensable persons or things (= nucleus, core group)
"five periodicals make up the core of their publishing program";
 
2. The centre of an object
"the ball has a titanium core"
 
3. The central part of the Earth
 
4. The choicest or most essential or most vital part of some idea or experience (= kernel, substance, center [US], centre [Brit, Cdn], essence, gist, heart, heart and soul, inwardness, marrow, meat, nub, pith, sum, nitty-gritty)
"the core of the prosecutor's argument"; 

5. A cylindrical sample of soil or rock obtained with a hollow drill
 
6. The central meaning or theme of a speech or literary work (= effect, essence, burden, gist)
 
7. (computing) a tiny ferrite toroid formerly used in a random access memory to store one bit of data; now superseded by semiconductor memories (= magnetic core)
"each core has three wires passing through it, providing the means to select and detect the contents of each bit";
 
8. The chamber of a nuclear reactor containing the fissile material where the reaction takes place
 
9. A bar of magnetic material (as soft iron) that passes through a coil and serves to increase the inductance of the coil

- Verb: core (derived forms: cored, cores, coring)
1. Remove the core or centre from
"core an apple"

- Noun: CORE
1. An organization founded by James Leonard Farmer in 1942 to work for racial equality (= Congress of Racial Equality)
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'uuHVrtRqbrQ';
  final double _startSeconds = 381;

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

  final String _videoId = 'JiqsGVmzaFk';
  final double _startSeconds = 1359;

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

  final String _videoId = 'pTysrwci0pU';
  final double _startSeconds = 488;

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

  final String _videoId = 'xVQxvthAcLU';
  final double _startSeconds = 301;

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

  final String _videoId = 'Cln0J87vulU';
  final double _startSeconds = 680;

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

  final String _videoId = 'EFkyxzJtiv4';
  final double _startSeconds = 52;

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

  final String _videoId = 'PbKYAks6044';
  final double _startSeconds = 1127;

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