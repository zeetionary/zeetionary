import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bosom" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bosom - /ˈbʊzəm/

enum TtsState { playing }

class EnglishEntrybosom extends StatelessWidget {
// blank divider
  EnglishEntrybosom({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbosom(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bosom");
  }

  Future<void> speakbosoms1(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She pressed her baby to her bosom.");
  }

  Future<void> speakbosoms2(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dress showed the top of her bosoms.");
  }

  Future<void> speakbosoms3(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She clutched her baby tightly to her bosom.");
  }

  Future<void> speakbosoms4(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As she walked into the room, all eyes were drawn to her ample bosom, accentuated by the elegant silk blouse.");
  }

  Future<void> speakbosoms5(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dress left the bosom bare.");
  }

  Future<void> speakbosoms6(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her bosoms heaved as she breathed heavily.");
  }

  Future<void> speakbosoms7(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was slender, but with a voluptuous bosom.");
  }

  Future<void> speakbosoms8(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She pinned a rose to her bosom.");
  }

  Future<void> speakbosoms9(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Clasp your child to your bosom and give him a big kiss!");
  }

  Future<void> speakbosoms10(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was living in the bosom of his family");
  }

  Future<void> speakbosoms11(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1111");
  }

  Future<void> speakbosoms12(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1212");
  }

  Future<void> speakbosoms13(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1313");
  }

  Future<void> speakbosoms14(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1414");
  }

  Future<void> speakbosoms15(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1515");
  }

  Future<void> speakbosoms16(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1616");
  }

  Future<void> speakbosoms17(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1717");
  }

  Future<void> speakbosoms18(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1818");
  }

  Future<void> speakbosoms19(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms1919");
  }

  Future<void> speakbosoms20(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms2020");
  }

  Future<void> speakbosoms21(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms2121");
  }

  Future<void> speakbosoms22(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms2222");
  }

  Future<void> speakbosoms23(String languageCode) async {
    // DOPSUM: CHANGE speakbosom
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbosoms2323");
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
                            EntryTitle(word: "bosom"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbʊzəm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbosom("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbʊzəm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbosom("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: مەمک، سینگ، بەر، بەرۆک، باوەش، ئامێز، باخەڵ، خەرک، دڵ، جەرگە، نێوەڕاست، نزیک، گەرم‌وگوڕ، دۆستانە
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) سنگ یان مەمکی ژن"),
                          SentencesRow(
                            englishText: "She pressed her baby to her bosom.",
                            kurdishText: "منداڵەکەیی نا بە سنگییەوە.",
                            onPressedBritish: () => speakbosoms1("en-GB"),
                            onPressedAmerican: () => speakbosoms1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The dress showed the top of her bosoms.",
                            kurdishText: "جلەکە سەرسنگی دەرخستبوو.",
                            onPressedBritish: () => speakbosoms2("en-GB"),
                            onPressedAmerican: () => speakbosoms2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "She clutched her baby tightly to her bosom.",
                                    kurdishText:
                                        "منداڵەکەی بە توندی گرت بە سنگییەوە.",
                                    onPressedBritish: () =>
                                        speakbosoms3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbosoms3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "As she walked into the room, all eyes were drawn to her ample bosom, accentuated by the elegant silk blouse.",
                                    kurdishText:
                                        "کە چووە ژوورەکە ھەموو چاوەکان لەسەر مەمکە پڕەکانی بوون کە جوان دەرخرابوون لە بلووزە ئاوریشمە شۆخ‌وشەنگەکەیدا.",
                                    onPressedBritish: () =>
                                        speakbosoms4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbosoms4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The dress left the bosom bare.",
                                    kurdishText:
                                        "جلەکە سنگی بە دانەپۆشراوی دەھێشتەوە.",
                                    onPressedBritish: () =>
                                        speakbosoms5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbosoms5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Her bosoms heaved as she breathed heavily.",
                                    kurdishText:
                                        "سنگی پڕبوو کە بە قووڵی ھەناسەی دا.",
                                    onPressedBritish: () =>
                                        speakbosoms6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbosoms6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She was slender, but with a voluptuous bosom.",
                                    kurdishText:
                                        "باریکەڵە بوو بەڵام مەمکەکانی زل بوون.",
                                    onPressedBritish: () =>
                                        speakbosoms7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbosoms7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Clasp your child to your bosom and give him a big kiss!",
                                    kurdishText:
                                        "منداڵەکەت بکە باوەشەوە و ماچێکی توندی بکە.",
                                    onPressedBritish: () =>
                                        speakbosoms9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbosoms9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ئەو بەشەی جل کە سنگی ژنان دادەپۆشێت"),
                          SentencesRow(
                            englishText: "She pinned a rose to her bosom.",
                            kurdishText: "گوڵێکی کردبوو بە یەقەیەوە.",
                            onPressedBritish: () => speakbosoms8("en-GB"),
                            onPressedAmerican: () => speakbosoms8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو دۆخەی کە لەگەڵ ئەو کەسانەی کە خۆشیان دەوێیت و دەتپارێزن"),
                          SentencesRow(
                            englishText:
                                "He was living in the bosom of his family",
                            kurdishText: "لە ئارامیی خێزانەکەیدا دەژیا.",
                            onPressedBritish: () => speakbosoms10("en-GB"),
                            onPressedAmerican: () => speakbosoms10("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                        // YoutubeEmbeddeddsixteen(),
                        // YoutubeEmbeddeddseventeen(),
                        // YoutubeEmbeddeddeighteen(),
                        // YoutubeEmbeddeddnineteen(),
                        // YoutubeEmbeddedtwenty(),
                        // YoutubeEmbeddedmulti(),
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
- Noun: bosom (derived forms: bosoms)
1. Either of two soft fleshy milk-secreting glandular organs on the chest of a woman (= breast)
 
2. A person's breast or chest
 
3. Cloth that covers the chest or breasts
 
4. A close affectionate and protective acceptance (= embrace)
"in the bosom of the family";

5. The locus of feelings and intuitions (= heart)
"her story would melt your bosom";

6. [archaic] The chest considered as the place where secret thoughts are kept
"his bosom was bursting with the secret"

- Verb: bosom (derived forms: bosomed, bosoming, bosoms)
1. Hide in one's bosom
"She bosomed his letters"
 
2. Hold (someone) tightly in your arms, usually with fondness (= embrace, hug, squeeze)
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'fn--IVarumw';
  final double _startSeconds = 1232;

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

  final String _videoId = 'IxD2NbXzgpQ';
  final double _startSeconds = 311;

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

  final String _videoId = 'oDYoV8-9v10';
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

  final String _videoId = 'Ms1uYc28pD4';
  final double _startSeconds = 183;

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

  final String _videoId = 'cGyj9M05LxA';
  final double _startSeconds = 397;

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

  final String _videoId = 'PeS5jJdmYPI';
  final double _startSeconds = 952;

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

  final String _videoId = '_zIBPLbgADA';
  final double _startSeconds = 308;

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

  final String _videoId = 'R8-24vUq974';
  final double _startSeconds = 906;

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

  final String _videoId = 'W9F_uVo_Md8';
  final double _startSeconds = 485;

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

  final String _videoId = 'UpnwWP3fOSA';
  final double _startSeconds = 108;

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

  final String _videoId = 'Do-wDPoC6GM';
  final double _startSeconds = 621;

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

  final String _videoId = 'nRwK91tG4QU';
  final double _startSeconds = 467;

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

// end bosom
