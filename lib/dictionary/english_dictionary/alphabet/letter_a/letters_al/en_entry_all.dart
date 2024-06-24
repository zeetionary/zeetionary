import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryall - replace speakAll - replace all - //ɔːl/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryall extends StatelessWidget {
  EnglishEntryall({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakall(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("all");
  }

  Future<void> speakall25344(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All horses are animals, but not all animals are horses.");
  }

  Future<void> speakall3481(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All my plants have died.");
  }

  Future<void> speakall3441(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has lost all his money.");
  }

  Future<void> speakall39521(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's worked hard all year.");
  }

  Future<void> speakall36284(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("In all honesty, I can't agree.");
  }

  Future<void> speakall48517(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The magazine was all advertisements.");
  }

  Future<void> speakall35288(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They've eaten all of it.");
  }

  Future<void> speakall32581(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All of them enjoyed the party.");
  }

  Future<void> speakall24163(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was all that I had.");
  }

  Future<void> speakall1246(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The coffee went all over my skirt.");
  }

  Future<void> speakall38955(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Now don't get all upset about it.");
  }

  Future<void> speakall3582(String languageCode) async {
    // DOPSUM: CHANGE speakAll
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The end of the trip came all too soon.");
  }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  // Future<void> speakall(String languageCode) async {
  //   // DOPSUM: CHANGE speakAll
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("all");
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "all"), // Find //ɔːl/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: //ɔːl/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakall("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: //ɔːl/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakall("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ھەموو، گشت، پاکی، تەواو، سەرتاسەر، بەتەواوەتی، یەک‌سەرە، ھەر یەک لە، زۆرترینی، زۆرینەی، زۆر، یەکجار، ھەمووجێیێ، پڕلە، ھەرچی
"""),
                          const DefinitionKurdish(
                              text: """١. (پێشناو) ھەموو"""),
                          SentencesRow(
                            englishText:
                                "All horses are animals, but not all animals are horses.",
                            kurdishText:
                                "ھەموو ئەسپێک ئاژەڵە، بەڵام ھەموو ئاژەڵێک ئەسپ نییە.",
                            onPressedBritish: () => speakall25344("en-GB"),
                            onPressedAmerican: () =>
                                speakall25344(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "All my plants have died.",
                            kurdishText: "ھەموو ڕووەکەکانم وشکیان کردووە.",
                            onPressedBritish: () => speakall3481("en-GB"),
                            onPressedAmerican: () =>
                                speakall3481(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He has lost all his money.",
                            kurdishText: "ھەموو پارەکەی لەدەستداوە.",
                            onPressedBritish: () => speakall3441("en-GB"),
                            onPressedAmerican: () =>
                                speakall3441(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (پێشناو) تەواوی ماوەیەک"""),
                          SentencesRow(
                            englishText: "He's worked hard all year.",
                            kurdishText: "تەواوی ساڵەکە بە سەختی کاری کردووە.",
                            onPressedBritish: () => speakall39521("en-GB"),
                            onPressedAmerican: () =>
                                speakall39521(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (پێشناو) تا بەرزترین ئاست"""),
                          SentencesRow(
                            englishText:
                                "In all honesty (= being as honest as I can), I can't agree.",
                            kurdishText: "تەواو سەرڕاست بم، ناتوانم ھاوڕابم.",
                            onPressedBritish: () => speakall36284("en-GB"),
                            onPressedAmerican: () =>
                                speakall36284(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (پێشناو) پێکھاتوو تەنھا لە یەک شت"""),
                          SentencesRow(
                            englishText: "The magazine was all advertisements.",
                            kurdishText: "گۆڤارەکە ھەموو ڕیکلام بوو.",
                            onPressedBritish: () => speakall48517("en-GB"),
                            onPressedAmerican: () =>
                                speakall48517(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (جێناو) ھەموو"""),
                          SentencesRow(
                            englishText: "They've eaten all of it.",
                            kurdishText: "ھەموویان خواردووە.",
                            onPressedBritish: () => speakall35288("en-GB"),
                            onPressedAmerican: () =>
                                speakall35288(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "All of them enjoyed the party.",
                            kurdishText: "ھەموویان چێژیان لە ئاھەنگەکە بینی.",
                            onPressedBritish: () => speakall32581("en-GB"),
                            onPressedAmerican: () =>
                                speakall32581(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (جێناو) تەنھا شت، ھەموو ئەوەی ھەتە"""),
                          SentencesRow(
                            englishText: "It was all that I had.",
                            kurdishText: "ئەوە ھەموو ئەوە بوو ھەمبوو.",
                            onPressedBritish: () => speakall24163("en-GB"),
                            onPressedAmerican: () =>
                                speakall24163(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) بە تەواوی"""),
                          SentencesRow(
                            englishText: "The coffee went all over my skirt.",
                            kurdishText: "قاوەکە ڕژا بە ھەموو تەنوورەکەمدا.",
                            onPressedBritish: () => speakall1246("en-GB"),
                            onPressedAmerican: () =>
                                speakall1246(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵکار) زۆر"""),
                          SentencesRow(
                            englishText: "Now don't get all upset about it.",
                            kurdishText: "زۆر پەست مەبە لەسەری.",
                            onPressedBritish: () => speakall38955("en-GB"),
                            onPressedAmerican: () =>
                                speakall38955(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) زیاتر لەوەی حەزی پێیە"""),
                          SentencesRow(
                            englishText:
                                "The end of the trip came all too soon.",
                            kurdishText: "کۆتایی گەشتەکە زۆر زوو ھات.",
                            onPressedBritish: () => speakall3582("en-GB"),
                            onPressedAmerican: () =>
                                speakall3582(// REPLACE: all //ɔːl/
                                    "en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
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
- Adjective: all 
1. (quantifier) used with either mass or count nouns to indicate the whole number or amount of or every one of a class
"we sat up all night"; "ate all the food"; "all men are mortal"; "all parties are welcome"
 
2. Completely given to or absorbed by
"became all attention"

- Adverb: all 
1. To a complete degree or to the full or entire extent; Completely or entirely (= wholly, entirely, completely, totally, altogether, whole, right, totes [informal])
"the directions were all wrong";

- Pronoun: all 
1. All people (= everybody, everyone, all and sundry, one and all)
 
2. All things; the whole quantity or number (= everything)
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

  final String _videoId = 'XG8b7WhANNA';
  final double _startSeconds = 163;

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

  final String _videoId = 'OENj7Z-afhY';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '-6vzjjIrRK8';
  final double _startSeconds = 68;

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

  final String _videoId = 'Wiy8icSKKQs';
  final double _startSeconds = 335;

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

  final String _videoId = 'D244b4E3yuA';
  final double _startSeconds = 63;

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

  final String _videoId = 'TxFR_7KsTDA';
  final double _startSeconds = 25;

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

  final String _videoId = 'WHSElo9Jghw';
  final double _startSeconds = 12;

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

  final String _videoId = 'uK1Kh7sooGE';
  final double _startSeconds = 25;

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

  final String _videoId = '1nYD3nu_F8s';
  final double _startSeconds = 68;

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

  final String _videoId = '0Kr4JO9591c';
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'PGqZkOveLb8';
  final double _startSeconds = 32;

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

  final String _videoId = 'pNyzWagLcJE';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end


