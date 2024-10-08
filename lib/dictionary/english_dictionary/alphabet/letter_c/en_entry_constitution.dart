import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconstitution extends StatelessWidget {
  EnglishEntryconstitution({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconstitution(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("constitution");
  }

  Future<void> speakconstitutions1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Britain does not have a written constitution.");
  }

  Future<void> speakconstitutions2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The constitution stipulated that a general election must be held within 120 days.");
  }

  Future<void> speakconstitutions3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The constitution was suspended and the army was placed in full control.");
  }

  Future<void> speakconstitutions4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The new constitution will be adopted next year.");
  }

  Future<void> speakconstitutions5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The child had a weak constitution and was always ill.");
  }

  Future<void> speakconstitutions6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I have a strong constitution and my stomach can handle anything.");
  }

  Future<void> speakconstitutions7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Scientists study the genetic constitution of cells to understand how genes influence cell behavior.");
  }

  Future<void> speakconstitutions8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He recommended the constitution of a review committee.");
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
                            EntryTitle(word: "constitution"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˌkɒnstɪˈtjuːʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconstitution("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˌkɑːnstɪˈtuːʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconstitution("en-US"),
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
کوردی: قانوونی بنچینەیی (یا بنەڕەتی)، دەستوور،	پێکھاتن، دروس‌بوون، پێکھاتە، دامەزران، داڕێژران،	دامەزراندن، بنیاتنان، دروس‌کردن، پێکھێنان، سازاندن، داڕشتن،	سرشت، نیار،	پێکھاتە یان چوارچێوەی لەشی، تەندرووستی، بنگە، داروبار،	قانوون، یاسا، زاکوون، قەباڵە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دەستوور؛ سیستەمی یاسادانان و بنچینە سەرەکییەکانی بەڕێوەبردنی وڵاتێک یان دامەزراوەیەک"),
                          SentencesRow(
                            englishText:
                                "Britain does not have a written constitution.",
                            kurdishText: "بەریتانیا دەستووری نووسراوی نییە.",
                            onPressedBritish: () =>
                                speakconstitutions1("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The constitution stipulated that a general election must be held within 120 days.",
                            kurdishText:
                                "دەستوور دیاری دەکات کە ھەڵبژاردنێکی گشتی دەبێت لە ١٢٠ ڕۆژدا ڕێکبخرێت.",
                            onPressedBritish: () =>
                                speakconstitutions2("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The constitution was suspended and the army was placed in full control.",
                            kurdishText:
                                "دەستوور سڕکرا و سوپا لە کۆنترۆڵی تەواو دانرا.",
                            onPressedBritish: () =>
                                speakconstitutions3("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The new constitution will be adopted next year.",
                            kurdishText:
                                "دەستوورە تازەکە ساڵی داھاتوو ھەڵدەگیرێتەوە.",
                            onPressedBritish: () =>
                                speakconstitutions4("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) دۆخی تەندرووستی کەسێک"),
                          SentencesRow(
                            englishText:
                                "The child had a weak constitution and was always ill.",
                            kurdishText:
                                "منداڵەکە تەندرووستییەکی لاوازی ھەبوو و ھەمیشە نەخۆش بوو.",
                            onPressedBritish: () =>
                                speakconstitutions5("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I have a strong constitution and my stomach can handle anything.",
                            kurdishText:
                                "تەندرووستییەکی بەھێزم ھەیە و گەدەم بەرگەی ھەموو شت دەگرێت.",
                            onPressedBritish: () =>
                                speakconstitutions6("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) شێوازی پێکھاتنی شتێک"),
                          SentencesRow(
                            englishText:
                                "Scientists study the genetic constitution of cells to understand how genes influence cell behavior.",
                            kurdishText:
                                "زاناکان لە شێوازی درووستبوونی جیناتی خانەکان دەکۆڵنەوە بۆ تێگەشتن لەوەی چۆن جینەکان کاریگەری لە ڕەفتاری خانەکان دەکەن.",
                            onPressedBritish: () =>
                                speakconstitutions7("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) درووستکردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "He recommended the constitution of a review committee.",
                            kurdishText:
                                "پێشنیاری پێکھێنانی لینژنەیەکی چاودێری کرد.",
                            onPressedBritish: () =>
                                speakconstitutions8("en-GB"),
                            onPressedAmerican: () =>
                                speakconstitutions8("en-US"),
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
- Noun: constitution (derived forms: constitutions)
1. (law) law determining the fundamental political principles of a government (= fundamental law, organic law)
 
2. The act of forming or establishing something (= establishment, formation, organization, organisation [Brit])
"the constitution of a PTA group last year";
 
3. The way in which someone or something is composed (= composition, physical composition, makeup, make-up)

- Noun: Constitution
1. A United States 44-gun frigate that was one of the first three naval ships built by the United States; it won brilliant victories over British frigates during the War of 1812 and is without doubt the most famous ship in the history of the United States Navy; it has been rebuilt and is anchored in the Charlestown Navy Yard in Boston (= USS Constitution, Old Ironsides)
 
2. (law) the constitution written at the Constitutional Convention in Philadelphia in 1787 and subsequently ratified by the original thirteen states (= United States Constitution, U.S. Constitution, US Constitution, Constitution of the United States)
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

  final String _videoId = 'snOHLxoyAZ4';
  final double _startSeconds = 10;

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

  final String _videoId = '_EPiGmeaO0E';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 541;

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

  final String _videoId = 'nGrB-5ieeMU';
  final double _startSeconds = 511;

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
  final double _startSeconds = 26;

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

  final String _videoId = 'AwhBTrzzqeg';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'WLeUt-jBE4Y';
  final double _startSeconds = 95;

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