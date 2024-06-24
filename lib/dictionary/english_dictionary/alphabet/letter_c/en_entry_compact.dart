import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycompact extends StatelessWidget {
// blank divider
  EnglishEntrycompact({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompact(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("compact");
  }

  Future<void> speakcompacts1(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The device is small and compact and weighs only 10 grams.");
  }

  Future<void> speakcompacts2(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Edinburgh is a compact city.");
  }

  Future<void> speakcompacts3(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The kitchen was compact but well equipped.");
  }

  Future<void> speakcompacts4(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Computers have become much more compact over the last 15 years.");
  }

  Future<void> speakcompacts5(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The grey clouds had become more compact and the sky suddenly grew dark.");
  }

  Future<void> speakcompacts6(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had a compact and muscular body.");
  }

  Future<void> speakcompacts7(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He prefers a compact for city driving.");
  }

  Future<void> speakcompacts8(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The support will continue under a compact which runs until 2010.");
  }

  Future<void> speakcompacts9(String languageCode) async {
    // DOPSUM: CHANGE speakcompact
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cars had compacted the snow until it was like ice.");
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
                            EntryTitle(word: "compact"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /kəmˈpækt/,  /ˈkɒmpækt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompact("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /kəmˈpækt/,  /ˈkɑːmpækt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompact("en-US"),
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
کوردی: پەستێنراو، کەڵەکە، پەسواو، پەستاوتە، شێلانە، پاڵ‌یەکخراو، تێک‌ترنجاو، تێک‌نراو،	کورتە، پوختە،	پتەو، تۆکمە، سفت، گردوکۆ،	قوتو یان جێ‌بۆدرە،	ئۆتۆمبێلی کەم‌جێگر یان چکۆلانە، ئۆتۆمبێلی گردوکۆ یان قوتو(یی ھەڵکەوتوو)، وتەوبڕە، گرێبەست، بەیابەست، قەراروبڕێ، ڕێک‌کەوتن‌نامە، پەیمان‌نامە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) بچووکتر لەوەی ئاساییە بۆ ئەو شتانەی کە ھەمان جۆرن"),
                          SentencesRow(
                            englishText:
                                "The device is small and compact and weighs only 10 grams.",
                            kurdishText:
                                "ئامێرەکە بچووک و پەستاوتەیە و کێشی تەنھا ١٠ گرامە.", // compact",
                            onPressedBritish: () => speakcompacts1("en-GB"),
                            onPressedAmerican: () => speakcompacts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Edinburgh is a compact city.",
                            kurdishText: "ئیدنبێرگ شارێکی تێک‌ترنجاوە.",
                            onPressedBritish: () => speakcompacts2("en-GB"),
                            onPressedAmerican: () => speakcompacts2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) بەکارھێنان یان گرتنی تەنھا جێگایەکی کەم"),
                          SentencesRow(
                            englishText:
                                "The kitchen was compact but well equipped.",
                            kurdishText:
                                "چێشتخانەکە ترنجاو بوو بەڵام باش سازکرابوو.",
                            onPressedBritish: () => speakcompacts3("en-GB"),
                            onPressedAmerican: () => speakcompacts3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Computers have become much more compact over the last 15 years.",
                            kurdishText:
                                "کۆمپیوتەرەکان لە ١٥ ساڵی ڕابردوودا زۆر بچووک بوونە.",
                            onPressedBritish: () => speakcompacts4("en-GB"),
                            onPressedAmerican: () => speakcompacts4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) بەشێوەیەک کە پێکەوەلکاون"),
                          SentencesRow(
                            englishText:
                                "The grey clouds had become more compact and the sky suddenly grew dark.",
                            kurdishText:
                                "ھەورە خەڵۆمێشییەکان تەواو ترنجاو بووبوون و ئاسمان لەناکاو ڕەش بوو.",
                            onPressedBritish: () => speakcompacts5("en-GB"),
                            onPressedAmerican: () => speakcompacts5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) کەسێکی بچووک و بەھێز"),
                          SentencesRow(
                            englishText: "He had a compact and muscular body.",
                            kurdishText: "جەستەیەکی پتەو و بە ماسولکەی ھەبوو.",
                            onPressedBritish: () => speakcompacts6("en-GB"),
                            onPressedAmerican: () => speakcompacts6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) ئۆتۆمبێلێکی بچووک"),
                          SentencesRow(
                            englishText:
                                "He prefers a compact for city driving.",
                            kurdishText:
                                "بە باش دەزانێت ئۆتۆمبێلێکی بچووک لێبخوڕێت لە شاردا.",
                            onPressedBritish: () => speakcompacts7("en-GB"),
                            onPressedAmerican: () => speakcompacts7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ڕێککەوتنێکی فەرمی لە نێوان دوو یان زیاتر لە کەس یان وڵاتدا"),
                          SentencesRow(
                            englishText:
                                "The support will continue under a compact which runs until 2010.",
                            kurdishText:
                                "پشتگیری بەردەوام دەبێت لە چوارچێوەی ڕێککەوتنێکدا کە تاوەکو ٢٠١٠ بەردەوام دەبێت.",
                            onPressedBritish: () => speakcompacts8("en-GB"),
                            onPressedAmerican: () => speakcompacts8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) پێکەوەلکاندنی شت"),
                          SentencesRow(
                            englishText:
                                "Cars had compacted the snow until it was like ice.",
                            kurdishText:
                                "ئۆتۆمبێل بەفرەکەیان ترنجاندبوو تاوەکو وەک سەھۆڵ بوو.",
                            onPressedBritish: () => speakcompacts9("en-GB"),
                            onPressedAmerican: () => speakcompacts9("en-US"),
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
- Adjective: compact 
1. Closely and firmly united or packed together
"compact soil"; "compact clusters of flowers"
 
2. Having a short and solid form or stature (= heavyset, stocky, thick, thickset)
"a wrestler of compact build";
 
3. Briefly giving the gist of something (= compendious, succinct, summary)
"a compact style is brief and pithy";

- Noun: compact (derived forms: compacts)
1. A small cosmetics case with a mirror; to be carried in a woman's purse (= powder compact)
 
2. A formal agreement between two or more parties to perform or not perform some action (= covenant, concordat)
 
3. A small and economical car (= compact car)

- Verb: compact (derived forms: compacts, compacted, compacting)
1. Have the property of being packable or of compacting easily (= pack)
"This powder compacts easily";
 
2. Compress into a wad (= pack, bundle, wad)
"compact paper into the box";
 
3. Make more compact by or as if by pressing (= compress, pack together)
"compact the data";
 
4. Bring together or compress (= compress, constrict, squeeze, contract, press)
"she compacted her lips";
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

  final String _videoId = 'Gyhd1OJmZ0Q';
  final double _startSeconds = 534;

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

  final String _videoId = 'qywGR7xqOZc';
  final double _startSeconds = 17;

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

  final String _videoId = '2srY-yxjWdQ';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'w6HYDdyzQ60';
  final double _startSeconds = 6;

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

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 1295;

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

  final String _videoId = 'KQWGHE7NTUA';
  final double _startSeconds = 700;

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

  final String _videoId = 'LfeEu4_vtfQ';
  final double _startSeconds = 861;

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