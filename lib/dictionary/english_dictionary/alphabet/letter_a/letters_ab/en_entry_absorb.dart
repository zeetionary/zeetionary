// replace these: EnglishEntryabsorb - speakAbsorb - absorb - /əbˈzɔːb/

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryabsorb extends StatelessWidget {
  EnglishEntryabsorb({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakabsorb(String languageCode) async {
    // speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("absorb");
  }

  Future<void> speaka3959(String languageCode) async {
    // speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His work absorbed him completely.");
  }

  Future<void> speaka2768(String languageCode) async {
    // speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It took me several days to absorb the fact of her death.");
  }

  Future<void> speaka6731(String languageCode) async {
    // speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This tennis racket absorbs shock on impact.");
  }

  Future<void> speaka6981(String languageCode) async {
    // speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Black walls absorb a lot of heat during the day.");
  }

  Future<void> speaka2136(String languageCode) async {
    // speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let the rice cook until it has absorbed all the water.");
  }

  Future<void> speaka3257(String languageCode) async {
    // speakAbsorb
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Plants absorb carbon dioxide from the air.");
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
                            EntryTitle(word: "absorb"), // WORD ENTRY
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əbˈzɔːb/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakabsorb("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əbˈzɔːrb/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakabsorb("en-US"),
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
کوردی: مژین، ھەڵمژین، ئاوگرتن، شێگرتن، ئاوکێشان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) ھەڵمژینی مادەی شل، گاس، یان تەنی دیکە لە ھەوادا"
                                  ""),
                          SentencesRow(
                            englishText:
                                "Plants absorb carbon dioxide from the air.",
                            kurdishText:
                                "ڕووەکەکان دووانە ئۆکسیدی کاربۆن لە سرووشتەوە وەردەگرن.",
                            onPressedBritish: () => speaka3257("en-GB"),
                            onPressedAmerican: () => speaka3257("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Let the rice cook until it has absorbed all the water.",
                            kurdishText:
                                "بھێڵە برنجەکە بکوڵێت ھەتا تەواوی ئاوەکە ھەڵدەمژێت.",
                            onPressedBritish: () => speaka2136("en-GB"),
                            onPressedAmerican: () => speaka2136("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. ھەڵمژینی گەرمی، ڕۆشنایی، وزە، و دەنگ لە جیاتی دانەوەیان """),
                          SentencesRow(
                            englishText:
                                "Black walls absorb a lot of heat during the day.",
                            kurdishText:
                                "دیواری ڕەش لە ڕۆژدا ڕێژەیەکی زۆر گەرمی دەمژێت.",
                            onPressedBritish: () => speaka6981("en-GB"),
                            onPressedAmerican: () => speaka6981("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) کەمکردنەوەی کاریگەریی بەرکەوتن لەلایەن تەنێکی فیزیاییەوە"""),
                          SentencesRow(
                            englishText:
                                "This tennis racket absorbs shock on impact.",
                            kurdishText:
                                "دەسکە تێنسەکە لەگەل بەرکەوتندا تەزوو دەمژێت.",
                            onPressedBritish: () => speaka6731("en-GB"),
                            onPressedAmerican: () => speaka6731("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) وەرگرتنی زانیاری و تێگەشتن لێی"""),
                          SentencesRow(
                            englishText:
                                "It took me several days to absorb the fact of her death.",
                            kurdishText:
                                "چەند ڕۆژێکی پێچوو بۆم تا بە مردنەکەی ڕابێم.",
                            onPressedBritish: () => speaka2768("en-GB"),
                            onPressedAmerican: () => speaka2768("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) وا لە کەسێک بکەیت بە تەواوی ھەموو بیرکردنەوەیت پێ بدات"""),
                          SentencesRow(
                            englishText: "His work absorbed him completely.",
                            kurdishText:
                                "کارەکەی بە تەواوی ھەموو ھۆش و بیری بردبوو.",
                            onPressedBritish: () => speaka3959("en-GB"),
                            onPressedAmerican: () => speaka3959("en-US"),
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
- Verb: absorb (derived forms: absorbed, absorbing, absorbs)
1. Take in, also metaphorically (= suck, imbibe, soak up, sop up, suck up, draw, take in, take up)
"The sponge absorbs water well";
 
2. (chemistry) become imbued
"The liquids, light, and gases absorb"
 
3. Take up mentally (= assimilate, ingest, take in)
"he absorbed the knowledge or beliefs of his tribe";
 
4. Take up, as of debts or payments (= take over)
"absorb the costs for something";
 
5. Cause to become one with
"The sales tax is absorbed into the state income tax"
 
6. Suck or take up or in (= take in)
"A black star absorbs all matter";
 
7. Devote (oneself) fully to (= steep, immerse, engulf, plunge, engross, soak up, ingulf [archaic])
 
8. Assimilate or take in
"The immigrants were quickly absorbed into society"
 
9. Consume all of one's attention or time (= engross, engage, occupy)
"Her interest in butterflies absorbs her completely";
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 916;

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

  final String _videoId = 'GcdB5bFwio4';
  final double _startSeconds = 405;

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

  final String _videoId = 'ZAxhEUfpSss';
  final double _startSeconds = 885;

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

  final String _videoId = 'lex6USTugUU';
  final double _startSeconds = 597;

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

  final String _videoId = '-cPdImejxEQ';
  final double _startSeconds = 196;

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

  final String _videoId = 'GYk4ymtQ1WM';
  final double _startSeconds = 1296;

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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'X3TAROotFfM';
  final double _startSeconds = 655;

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
