import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "associate" and provide three example sentences for each meaning. Use Merriam Webster style.

// replace EnglishEntryassociate - replace speakAssociate

// replace associate - /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryassociate extends StatelessWidget {
  // blank divider
  EnglishEntryassociate({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakassociate(String languageCode) async {
    // DOPSUM: CHANGE speakAssociate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("associate");
  }

  Future<void> speakassociate1135(String languageCode) async {
    // DOPSUM: CHANGE speakAssociate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I always associate the smell of baking with my childhood.");
  }

  Future<void> speakassociate1136(String languageCode) async {
    // DOPSUM: CHANGE speakAssociate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most people immediately associate addictions with drugs, alcohol and cigarettes.");
  }

  Future<void> speakassociate1139(String languageCode) async {
    // DOPSUM: CHANGE speakAssociate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't like you associating with those people.");
  }

  Future<void> speakassociate1140(String languageCode) async {
    // DOPSUM: CHANGE speakAssociate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I associate myself with the prime minister's remarks.");
  }

  Future<void> speakassociate1143(String languageCode) async {
    // DOPSUM: CHANGE speakAssociate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was known to be one of the convicted man’s associates.");
  }

  Future<void> speakassociate1147(String languageCode) async {
    // DOPSUM: CHANGE speakAssociate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was only the associate producer of the movie.");
  }

  // Future<void> speakassociate(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssociate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("associate");
  // }

  // Future<void> speakassociate(String languageCode) async {
  //   // DOPSUM: CHANGE speakAssociate
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("associate");
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
                            EntryTitle(
                                word:
                                    "associate"), // Find /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakassociate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakassociate("en-US"),
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
کوردی: ھاوکار، بەشدار، پشکدار، شەریک، یاریدەدەر، ئەندامی پێوەبەستراو، ئەندامی، یەکگرتوو، ھەڤگرتوو، بەستراو، سەربەدی، پاشکۆ، پێوەبەند، پێوەبەستراو، پێکەوەبەستراو، یاریدەدەری
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) پێکەوەبەستنی دوو شت یان کەس لە ھزردا"""),
                          SentencesRow(
                            englishText:
                                "I always associate the smell of baking with my childhood.",
                            kurdishText:
                                "ھەمیشە بۆنی برژاندن دەبەستمەوە بە منداڵیمەوە.",
                            onPressedBritish: () => speakassociate1135("en-GB"),
                            onPressedAmerican: () => speakassociate1135(
                                // REPLACE: associate /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/
                                "en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "Most people immediately associate addictions with drugs, alcohol and cigarettes.",
                            kurdishText:
                                "زۆرکەس ڕاستەوخۆ ئاڵوودەیی دەبەستنەوە بە مادەی ھۆشبەر و کحول و جگەرە.",
                            onPressedBritish: () => speakassociate1136("en-GB"),
                            onPressedAmerican: () => speakassociate1136(
                                // REPLACE: associate /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) کات بەسەربردن لەگەڵ خەڵکی، بەتایبەتی لەگەڵ کەسێک یان کەسانێک کە کەسێکی دیکە بەدڵی نییە"""),
                          SentencesRow(
                            englishText:
                                "I don't like you associating with those people.",
                            kurdishText:
                                "حەزم لە تێکەڵبوون لەگەڵ ئەو کەسانە نییە.",
                            onPressedBritish: () => speakassociate1139("en-GB"),
                            onPressedAmerican: () => speakassociate1139(
                                // REPLACE: associate /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) پیشاندانی پشتگیری یان ڕەزامەندی بۆ شتێک"""),
                          SentencesRow(
                            englishText:
                                "I associate myself with the prime minister's remarks (= I agree with them).",
                            kurdishText:
                                "پشتگیری لێدوانەکانی سەرۆک وەزیران دەکەم.",
                            onPressedBritish: () => speakassociate1140("en-GB"),
                            onPressedAmerican: () => speakassociate1140(
                                // REPLACE: associate /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) کەسێک کە کاری لەگەڵ دەکەیت یان زۆر لەگەڵی تێکەڵ دەبیت"""),
                          SentencesRow(
                            englishText:
                                "He was known to be one of the convicted man’s associates.",
                            kurdishText:
                                "ئەو ناسراوە بەوەی یەکێک لە ھاوەڵەکانی پیاوە تاوەنبارەکە بێت.",
                            onPressedBritish: () => speakassociate1143("en-GB"),
                            onPressedAmerican: () => speakassociate1143(
                                // REPLACE: associate /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵناو) کەسێک کە لە پلەیەکی نزمترە لە کارێکدا"""),
                          SentencesRow(
                            englishText:
                                "She was only the associate producer of the movie.",
                            kurdishText:
                                "تەنھا بەرھەمھێنەری یاریدەدەر بوو لە فیلمەکەدا.",
                            onPressedBritish: () => speakassociate1147("en-GB"),
                            onPressedAmerican: () => speakassociate1147(
                                // REPLACE: associate /əˈsəʊsieɪt/, /əˈsəʊʃieɪt/
                                "en-US"),
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
- Verb: associate (derived forms: associates, associating, associated)
1. Make a logical or causal connection (= tie in, relate, link, colligate, link up, connect)
"I cannot associate these events at all";
 
2. Keep company with; hang out with (= consort, affiliate, assort)
"He associates with strange people";
 
3. Bring or come into association or action (= consociate)

- Noun: associate (derived forms: associates)
1. A person who joins with others in some activity or endeavour
"he had to consult his associate before continuing"
 
2. A friend who is frequently in the company of another (= companion, comrade, fellow, familiar, yokefellow [N. Amer])
"drinking associates";
 
3. A person with subordinate membership in a society, institution, or commercial enterprise
"associates in the law firm bill at a lower rate than do partners"
 
4. Any event that usually accompanies or is closely connected with another
"first was the lightning and then its thunderous associate"
 
5. A degree granted by a two-year college on successful completion of the undergraduates course of studies (= associate degree)

- Adjective: associate
1. Having partial rights and privileges or subordinate status
"an associate member"; "an associate professor"
 
2. Joined with another or others, having equal or nearly equal status
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

  final String _videoId = 'IlU-zDU6aQ0';
  final double _startSeconds = 1929;

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

  final String _videoId = 'eo62AEDwTKY';
  final double _startSeconds = 260;

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

  final String _videoId = 'qg2nGY1aqlg';
  final double _startSeconds = 1834;

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

  final String _videoId = 'WfVF-Ec4naQ';
  final double _startSeconds = 530;

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

  final String _videoId = 'Wao0_uB4Zw4';
  final double _startSeconds = 1725;

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

  final String _videoId = 'JoGjIRVY9t4';
  final double _startSeconds = 2090;

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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = '4dwjS_eI-lQ';
  final double _startSeconds = 476;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '_HZbkdEggHI';
  final double _startSeconds = 208;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'G0SpzIIHEaE';
  final double _startSeconds = 889;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = '6DYgImG1CKo';
  final double _startSeconds = 612;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'CsTmgX32Uk8';
  final double _startSeconds = 177;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'o0evWTegaKo';
  final double _startSeconds = 755;

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

// end

// end // TODO Implement this library.