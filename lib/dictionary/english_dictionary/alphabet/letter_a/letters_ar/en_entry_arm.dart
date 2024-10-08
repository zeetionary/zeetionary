import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryarm extends StatelessWidget {
  EnglishEntryarm({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakarm(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("arm");
  }

  Future<void> speakarm127(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She threw her arms around his neck.");
  }

  Future<void> speakarm129(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was running forward, waving his arms.");
  }

  Future<void> speakarm131(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The arms will need shortening.");
  }

  Future<void> speakarm134(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She perched on the arm of his chair.");
  }

  Future<void> speakarm138(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The fuel filler door is opened by a robotic arm.");
  }

  Future<void> speakarm148(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The bank plans to sell part of its US finance arm.");
  }

  Future<void> speakarm151(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The men armed themselves with sticks and stones.");
  }

  Future<void> speakarm152(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The country was arming against the enemy.");
  }

  Future<void> speakarm156(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She armed herself for the interview by finding out all she could about the company in advance.");
  }

  // Future<void> speakarm(String languageCode) async {
  //   // DOPSUM: CHANGE speakArm
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arm");
  // }

  // Future<void> speakarm(String languageCode) async {
  //   // DOPSUM: CHANGE speakArm
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("arm");
  // }

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
                            EntryTitle(word: "arm"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ɑːm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakarm("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ɑːrm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakarm("en-US"),
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
کوردی: دەس(ت)، باڵ، بازۆڵە، بازوو، باسک، قۆڵ، بەوش، باوش، باوەش، باخڵ، ھەنگڵ، لق، تا، بەشی کرداری گروپ، ڕێکخراوە، دامەزراوە یان چالاکی‌یێ، دەسک، جێ‌دەس، دەستە، چەک، تەرک، ھێز، دەسەڵات، (ڕووبار) لق
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) دەست؛ دوو بەشی جەستە کە لە شانەوە درێژەبنەوە"""),
                          SentencesRow(
                            englishText: "She threw her arms around his neck.",
                            kurdishText: "دەستەکانی بەدەوری ملیدا بادا.",
                            onPressedBritish: () => speakarm127("en-GB"),
                            onPressedAmerican: () => speakarm127("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He was running forward, waving his arms.",
                            kurdishText:
                                "بۆ پێشەوە ڕای‌دەکرد و دەستەکانی ڕادەوەشاند.",
                            onPressedBritish: () => speakarm129("en-GB"),
                            onPressedAmerican: () => speakarm129("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) قۆڵی جلوبەرگ؛ ئەو بەشەی جلوبەرگ کە قۆڵ دادەپۆشێت"""),
                          SentencesRow(
                            englishText: "The arms will need shortening.",
                            kurdishText:
                                "قۆڵەکەی پێویستیی بە کورتکردنەوە ھەیە.",
                            onPressedBritish: () => speakarm131("en-GB"),
                            onPressedAmerican: () => speakarm131("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) لایەکانی کورسییەکەت کە دەستی لەسەر دادەنێیت"""),
                          SentencesRow(
                            englishText: "She perched on the arm of his chair.",
                            kurdishText:
                                "لەسەر جێ‌دەستی کورسییەکەی ئەو دانیشت.",
                            onPressedBritish: () => speakarm134("en-GB"),
                            onPressedAmerican: () => speakarm134("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) پارچەیەکی جوڵاوی ئامێرێک یان شتێکی تر"""),
                          SentencesRow(
                            englishText:
                                "The fuel filler door is opened by a robotic arm.",
                            kurdishText:
                                "تانکی بەنزینەکە دەکرێتەوە لەلایەن باڵێکی ڕۆبۆتییەوە.",
                            onPressedBritish: () => speakarm138("en-GB"),
                            onPressedAmerican: () => speakarm138("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ڕێڕەوێکی بچووکی ئاو یان پارچە زەوی کە دەگەیەت بە یەکێکی گەورەتر"""),
                          SentencesRow(
                            englishText:
                                "A small bridge spans the arm of the river.",
                            kurdishText:
                                "پردێکی بچووک بەسەر لقە ئاوەکەدا دەپەڕێتەوە.",
                            onPressedBritish: () => speakarm138("en-GB"),
                            onPressedAmerican: () => speakarm138("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) بەشێکی بچووکی دامەزراوەیەکی گەورەتر کە تەنھا یەک چالاکی ھەیە"""),
                          SentencesRow(
                            englishText:
                                "The bank plans to sell part of its US arm.",
                            kurdishText:
                                "بانکەکە پلانی ھەیە بەشێکی لقی ئەمریکای بفرۆشێت.",
                            onPressedBritish: () => speakarm148("en-GB"),
                            onPressedAmerican: () => speakarm148("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) پێدانی چەک یان شتێکی تر بە کەسێک یان بەدەستخستنی بۆ خۆت بۆ ئەوەی پێێ بجەنگیت"""),
                          SentencesRow(
                            englishText:
                                "The men armed themselves with sticks and stones.",
                            kurdishText:
                                "پیاوەکان بە دار و بەرد خۆیان قایم‌کرد.",
                            onPressedBritish: () => speakarm151("en-GB"),
                            onPressedAmerican: () => speakarm151("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The country was arming against the enemy.",
                            kurdishText:
                                "وڵاتەکە خۆی چەکدار دەکرد دژ بە دوژمنەکەی.",
                            onPressedBritish: () => speakarm152("en-GB"),
                            onPressedAmerican: () => speakarm152("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) پێدانی زانیاری بە کەسێک یان بەدەستخستنی بۆ خۆت بۆ تەواوکردنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "She armed herself for the interview by finding out all she could about the company in advance.",
                            kurdishText:
                                "پێش‌وەختە خۆی ئامادەکرد بۆ چاوپێکەوتنەکە بە دۆزینەوەی ھەر شتێک کە دەیتوانی بیکات سەبارەت بە کۆمپانیاکە.",
                            onPressedBritish: () => speakarm156("en-GB"),
                            onPressedAmerican: () => speakarm156("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Noun: arm (derived forms: arms)
1. A human limb; technically the part of the superior limb between the shoulder and the elbow but commonly used to refer to the whole superior limb
 
2. Any projection that is thought to resemble a human arm (= branch, limb)
"the arm of the record player"; "an arm of the sea";
 
3. Any instrument or instrumentality used in fighting or hunting (= weapon, weapon system)
 
4. The part of an armchair or sofa that supports the elbow and forearm of a seated person
 
5. A division of some larger or more complex organization (= branch, subdivision)
 
6. The part of a garment that is attached at the armhole and that provides a cloth covering for the arm (= sleeve)

- Verb: arm (derived forms: arms, armed, arming)
1. Prepare oneself for a military confrontation (= build up, fortify, gird)
"troops are arming on the Iraqi border";
 
2. Supply with arms
"The U.S. armed the freedom fighters in Afghanistan"
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Qiok50TjAIE';
  final double _startSeconds = 72;

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

  final String _videoId = 'vFymKqUwodY';
  final double _startSeconds = 18;

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

  final String _videoId = 'XKBbn5GBw0Y';
  final double _startSeconds = 419;

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

  final String _videoId = 'oYO7o1Z8gk4';
  final double _startSeconds = 1;

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

  final String _videoId = 'cYXUu3qT36c';
  final double _startSeconds = 203;

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

  final String _videoId = 'AcLh-aSUdx0';
  final double _startSeconds = 20;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = '3TSD9TJ5sVM';
  final double _startSeconds = 378;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 1190;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 1530;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 1018;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'EHJNGdFll4o';
  final double _startSeconds = 1208;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = '60FM9WjkXtA';
  final double _startSeconds = 290;

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

// end