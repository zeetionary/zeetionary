import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryabout extends StatefulWidget {
  const EnglishEntryabout({super.key});

  @override
  State<EnglishEntryabout> createState() => _EnglishEntryaboutState();
}

class _EnglishEntryaboutState extends State<EnglishEntryabout> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

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

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adverb: about 
1. (of quantities) imprecise but fairly close to correct (= approximately, close to, just about, some, roughly, more or less, around, or so, loosely)
"in just about a minute"; "he's about 30 years old"; "I've had about all I can stand"; "we meet about once a month";

2. All around or on all sides (= around)
"dirty clothes lying about"; "let's look about for help";

3. In the area or vicinity (= around)
"a few spectators standing about";
 
4. Used of movement to or among many different places or in no particular direction (= around)
"wandering about with no place to go"; "people were rushing about"; "news gets about";
 
5. In or to a reversed position or direction (= around)
"about face";
 
6. In rotation or succession
"turn about is fair play"
 
7. (of actions or states) slightly short of or not quite accomplished; all but (= almost, most, nearly, near, nigh, virtually, well-nigh, all but)
"the job is (just) about done";

- Preposition: about  u'bawt
1. On the topic of (= on)
"a book about physics";
 
2. With regard or relation to; on the subject of (= regarding, concerning, respecting, re, apropos, as regards, with regard to, as for, as to, in connection with)
"I have a query about your previous reply"; "think about it";

- Adjective: about
1. On the move (= astir)
"up and about";
""",
  );
// 188888880002200

  final String keyword = "about";
  List<Map<String, dynamic>> filteredSentences = [];

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""about""");
  }

  Future<void> speaka2247(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her books were lying about on the floor.");
  }

  Future<void> speaka34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The children were rushing about in the garden.");
  }

  Future<void> speaka994(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm just about ready.");
  }

  Future<void> speaka54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They waited (for) about an hour.");
  }

  Future<void> speaka557(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Everywhere people were going about their daily business.");
  }

  Future<void> speaka25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We wandered about the town for an hour or so.");
  }

  Future<void> speaka327(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Movies are all about making money these days.");
  }

  Future<void> speaka5541(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There's something about this business that is not quite right.");
  }

  Future<void> speaka337(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What's she so angry about?");
  }

  Future<void> speaka225(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Tell me all about it.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """about""",
                      // alsoEnglishWord: "also: about",
                      britshText: """IpaUK: /əˈbaʊt/""",
                      americanText: """IpaUS: /əˈbaʊt/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const KurdishVocabulary(text: """
کوردی: نزیکەی، لە دەوروبەری، بە مەزندە، سەرلە، لەبارەی، لەمەڕ، دەوروبەر، دەوروپشت، دۆرمادۆر، بە ھەر لا، لێرە و لەوێ، خەریکی، سەرقاڵی، مژولی، خەریک، پێچەوانەی، بەرڤاژی، 
"""),
                    const DefinitionKurdish(
                        text: "١. (ئامراز) دەربارەی شتێک" ""),
                    SentencesRow(
                      englishText: "Tell me all about it.",
                      kurdishText: "ھەموو شتێکم پێ بڵێ لەسەری.",
                      onPressedBritish: () => speaka225("en-GB"),
                      onPressedAmerican: () => speaka225("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "What's she so angry about?",
                      kurdishText: "لەسەر چییە وا تووڕەیە؟",
                      onPressedBritish: () => speaka337("en-GB"),
                      onPressedAmerican: () => speaka337("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "There's something about this business that is not quite right.",
                      kurdishText: "شتێک دەربارەی ئەم ئیشە لە جێگەی خۆی نییە.",
                      onPressedBritish: () => speaka5541("en-GB"),
                      onPressedAmerican: () => speaka5541("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) بەکاردێت بۆ باسکردنی ئامانجی شتێک"""),
                    SentencesRow(
                      englishText:
                          "Movies are all about making money these days.",
                      kurdishText:
                          "لەم سەردەمەدا ئامانج لە ھەموو فیلمەکان قازانجە.",
                      onPressedBritish: () => speaka327("en-GB"),
                      onPressedAmerican: () => speaka327("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ئامراز) سەرقاڵبوون بە شتێک"""),
                    SentencesRow(
                      englishText:
                          "Everywhere people were going about their daily business.",
                      kurdishText:
                          "لە ھەموو شوێنێک خەڵکی سەرقاڵی ژیانی ڕۆزانەیانن.",
                      onPressedBritish: () => speaka557("en-GB"),
                      onPressedAmerican: () => speaka557("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ئامراز) بە ژمارەیەک لادا"""),
                    SentencesRow(
                      englishText:
                          "We wandered about the town for an hour or so.",
                      kurdishText:
                          "نزیکەی کاتژمێرێک بە شارۆچکەکەدا سووڕاینەوە.",
                      onPressedBritish: () => speaka25("en-GB"),
                      onPressedAmerican: () => speaka25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ئامراز) بە ژمارەیەک لادا"""),
                    SentencesRow(
                      englishText:
                          "We wandered about the town for an hour or so.",
                      kurdishText:
                          "نزیکەی کاتژمێرێک بە شارۆچکەکەدا سووڕاینەوە.",
                      onPressedBritish: () => speaka25("en-GB"),
                      onPressedAmerican: () => speaka25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (ھاوەڵکار) بەنزیکەیی"""),
                    SentencesRow(
                      englishText: "They waited (for) about an hour.",
                      kurdishText: "بە نزیکەیی یەک کاتژمێر چاوەڕێ بوون.",
                      onPressedBritish: () => speaka54("en-GB"),
                      onPressedAmerican: () => speaka54("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (ھاوەڵکار) زۆر نزیک لە"""),
                    SentencesRow(
                      englishText: "I'm just about ready.",
                      kurdishText: "یەک تۆزم ماوە.",
                      onPressedBritish: () => speaka994("en-GB"),
                      onPressedAmerican: () => speaka994("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بە زۆر لادا"""),
                    SentencesRow(
                      englishText:
                          "The children were rushing about in the garden.",
                      kurdishText: "منداڵەکان بە باخجەکەدا ھاتوچۆیان بوو.",
                      onPressedBritish: () => speaka34("en-GB"),
                      onPressedAmerican: () => speaka34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
١٠. (ھاوەڵکار) بە ھەڕەمەکی"""),
                    SentencesRow(
                      englishText: "Her books were lying about on the floor.",
                      kurdishText: "کتێبەکانی لەسەر زەوییەکە کەوتبوون.",
                      onPressedBritish: () => speaka2247("en-GB"),
                      onPressedAmerican: () => speaka2247("en-US"),
                    ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  YoutubeEmbeddedsix(),
                  YoutubeEmbeddedseven(),
                  YoutubeEmbeddedeight(),
                  YoutubeEmbeddednine(),
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
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'jNQXAC9IVRw';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'DOMPU26i7Xw';
  final double _startSeconds = 266;

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

  final String _videoId = 'pvuN_WvF1to';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'tQwVKr8rCYw';
  final double _startSeconds = 109;

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

  final String _videoId = 'uXyxFMbqKYA';
  final double _startSeconds = 138;

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

  final String _videoId = 'jbBbRjs_niM';
  final double _startSeconds = 38;

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

  final String _videoId = 'vmsTcj3WuoE';
  final double _startSeconds = 3732;

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

  final String _videoId = '4BvwpjaGZCQ';
  final double _startSeconds = 154;

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

  final String _videoId = '67JzSRnyXr4';
  final double _startSeconds = 402;

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

  final String _videoId = 'Q1c6PmxZ2ZM';
  final double _startSeconds = 224;

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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
        YoutubeEmbeddedseven(),
        YoutubeEmbeddedeight(),
        YoutubeEmbeddednine(),
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
    );
  }
}
