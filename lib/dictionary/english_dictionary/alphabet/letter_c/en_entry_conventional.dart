import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryconventional extends StatelessWidget {
// blank divider
  EnglishEntryconventional({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconventional(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("conventional");
  }

  Future<void> speakconventionals1(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's very conventional in her views.");
  }

  Future<void> speakconventionals2(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They rejected what they saw as the hypocrisy of conventional society.");
  }

  Future<void> speakconventionals3(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You can use a microwave or cook it in a conventional oven.");
  }

  Future<void> speakconventionals4(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her face is not beautiful in conventional terms.");
  }

  Future<void> speakconventionals5(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Raising such a large amount of money from conventional sources would be difficult.");
  }

  Future<void> speakconventionals6(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Conventional treatments for this condition have been only partially successful.");
  }

  Future<void> speakconventionals7(String languageCode) async {
    // DOPSUM: CHANGE speakconventional
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A conventional war would still cause unacceptable devastation.");
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
                            EntryTitle(word: "conventional"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈvenʃənl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconventional("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈvenʃənl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconventional("en-US"),
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
کوردی: باو، داب، ئاسایی، بەپێی دەستووری کۆن، خاوەن عورف، خۆماڵی،	نەریتی،	لەمێژینە، کۆن،	ناناوکی، نانێوکی، ئاسایی (چەک‌وچۆڵ)،	پەیمانی، پەیمان‌نامەیی،	کۆبوونەوەیی، کونگرەیی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵناو) بەپێی ئەوەی باوە و دابونەریتە"),
                          SentencesRow(
                            englishText:
                                "She's very conventional in her views.",
                            kurdishText:
                                "زۆر پابەند بە دەستوورە لە ڕوانگەکانییەوە.", // conventional",
                            onPressedBritish: () =>
                                speakconventionals1("en-GB"),
                            onPressedAmerican: () =>
                                speakconventionals1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They rejected what they saw as the hypocrisy of conventional society.",
                            kurdishText:
                                "ئەوەی ڕەتکردەوە کە بە دووڕووی کۆمەڵگای خاوەن عورف ناوزەدی کرد.",
                            onPressedBritish: () =>
                                speakconventionals2("en-GB"),
                            onPressedAmerican: () =>
                                speakconventionals2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) بەو شێوەیەی کە باوە و بۆ ماوەیەکی زۆر کراوە"),
                          SentencesRow(
                            englishText:
                                "You can use a microwave or cook it in a conventional oven.",
                            kurdishText:
                                "دەتوانیت مایکرۆوەیڤێک بەکاربھێنیت یان بە فڕنی ئاسایی لێی بنێیت.",
                            onPressedBritish: () =>
                                speakconventionals3("en-GB"),
                            onPressedAmerican: () =>
                                speakconventionals3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her face is not beautiful in conventional terms.",
                            kurdishText:
                                "لەلایەنە بوەکانەوە ڕووخساری جوان نییە.",
                            onPressedBritish: () =>
                                speakconventionals4("en-GB"),
                            onPressedAmerican: () =>
                                speakconventionals4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Raising such a large amount of money from conventional sources would be difficult.",
                            kurdishText:
                                "کۆکردنەوەی پارەیەکی وەھا زۆر بە ڕێگا باوەکان سەخت دەبێت.",
                            onPressedBritish: () =>
                                speakconventionals5("en-GB"),
                            onPressedAmerican: () =>
                                speakconventionals5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) شێوازەکانی چارەسەری تەندرووستی بە دەرمانی ڕۆژئاوایی، وەک بەکارھێنانی دەوای دەستکرد و نەشتەرگەری"),
                          SentencesRow(
                            englishText:
                                "Conventional treatments for this condition have been only partially successful.",
                            kurdishText:
                                "چارەسەرە باوەکانی ئەم نەخۆشییە تا ڕادەیەک سەرکەوتوو بوونە.",
                            onPressedBritish: () =>
                                speakconventionals6("en-GB"),
                            onPressedAmerican: () =>
                                speakconventionals6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) چەکێک کە ئەتۆمی نییە"),
                          SentencesRow(
                            englishText:
                                "A conventional war would still cause unacceptable devastation.",
                            kurdishText:
                                "جەنگێکی نا ئەتۆمی ھێشتا کاولکاری قەبووڵ‌نەکراو لێدەکەوێتەوە.",
                            onPressedBritish: () =>
                                speakconventionals7("en-GB"),
                            onPressedAmerican: () =>
                                speakconventionals7("en-US"),
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
- Adjective: conventional 
1. Following accepted customs and proprieties
"conventional wisdom"; "she had strayed from the path of conventional behaviour"; "conventional forms of address"
 
2. Conforming with accepted standards (= established)
"a conventional view of the world";
 
3. (fine arts) represented in simplified or symbolic form (= formal, schematic)
 
4. In accord with or being a tradition or practice accepted from the past
"a conventional church wedding with the bride in traditional white"; "the conventional handshake"
 
5. Rigidly formal or bound by convention (= ceremonious)
"their conventional greetings did not seem heartfelt";
 
6. (weapons) using energy for propulsion or destruction that is not nuclear energy
"conventional warfare"; "conventional weapons"
 
7. Unimaginative and conformist (= mainstream)
"conventional attitudes";
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

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 408;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'a9m3GD0DbPY';
  final double _startSeconds = 275;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'Bg_tJvCA8zw';
  final double _startSeconds = 64;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'm6kcANnAJSo';
  final double _startSeconds = 99;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'k7YVxLLIuGM';
  final double _startSeconds = 178;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'Xzv84ZdtlE0';
  final double _startSeconds = 984;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'QcUey-DVYjk';
  final double _startSeconds = 1497;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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