import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygrain extends StatefulWidget {
  const EnglishEntrygrain({super.key});

  @override
  State<EnglishEntrygrain> createState() => _EnglishEntrygrainState();
}

class _EnglishEntrygrainState extends State<EnglishEntrygrain> {
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
- Noun: grain (derived forms: grains)
1. A relatively small granular particle of a substance
"a grain of sand"; "a grain of sugar"
 
2. Foodstuff prepared from the starchy grains of cereal grasses (= food grain, cereal)
 
3. The side of leather from which the hair has been removed
 
4. A weight unit used for pearls or diamonds: 50 mg or 1/4 carat (= metric grain)
 
5. 1/60 dram; equals an avoirdupois grain or 64.799 milligrams
 
6. 1/7000 pound; equals a troy grain or 64.799 milligrams
 
7. Dry seed-like fruit produced by the cereal grasses: e.g. wheat, barley, Indian corn (= caryopsis)
 
8. A cereal grass
"wheat is a grain that is grown in Kansas"
 
9. The smallest possible unit of anything
"there was a grain of truth in what he said"; "he does not have a grain of sense"
 
10. The direction, texture, or pattern of fibers found in wood or leather or stone or in a woven fabric
"saw the board across the grain"
 
11. The physical composition of something (especially with respect to the size and shape of the small constituents of a substance) (= texture)
"sand of a fine grain"; "a stone of coarse grain";

- Verb: grain (derived forms: grains, graining, grained)
1. Thoroughly work in (= ingrain, engrain)
"His hands were grained with dirt";
 
2. Paint (a surface) to make it look like stone or wood
 
3. Form into grains (= granulate)
 
4. Become granular (= granulate)
""",
  );

  final String keyword = "grain";
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

    await flutterTts.speak("""grain""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Russia sold 12 million tons of grain abroad last year.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Grain production has been falling in recent years.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The peasants had ceased to sow grain.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I got a grain of sand in my eye.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There isn't a grain of truth in those rumours.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The analysis showed a few grains of arsenic in the solution.""");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """grain""",
                      // alsoEnglishWord: "also: grain",
                      britshText: """IpaUK: /ɡreɪn/""",
                      americanText: """IpaUS: /ɡreɪn/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: const TabBar(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: دانەوێڵە، پەتڵە، دڕکەدو، دغڵ، دەغڵ‌ودان، وشکەدان، وردەدان، دانوو، دەنک، دان، تۆو، توو،	جۆیێ، بڕێ، بڕێکی زۆر کەم،	(دار) بار یان دۆخی ڕەگ، باری ڕەگە، باری ڕیشاڵ،	(بەرد) ڕەگە، دەمار، چین،	ڕەنگ(جێگیر یان کاڵەوەنەبوو)، خۆڕەنگ،	(خوازە) سروشت، بار، دۆخ، وەزع،	ناڕێکی یان زبر و چرچی دیوی دەرەوەی چەرم،	گەنم، گەنمە، دەنک
"""),
// With short examples define "grain", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) دەنکە تۆوی ھەندێک خواردنی وەک گەنم، برنج، ھتد"""),
                    SentencesRow(
                      englishText:
                          """Russia sold 12 million tons of grain abroad last year.""",
                      kurdishText:
                          """ڕووسیا ساڵی ڕابردوو ١٢ ملیۆن تەن دانەوێڵەی لە دەرەوە فرۆشت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Grain production has been falling in recent years.""",
                      kurdishText:
                          """بەرھەمھێنانی دانەوێڵە لەم ساڵانەی دواییدا کەمی کردووە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The peasants had ceased to sow grain.""",
                      kurdishText:
                          """جووتیاران وازیان ھێناوە لەوەی دانەوێڵە بچێنن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) بەشێکی بچووکی سەختی مادەیەک"""),
                    SentencesRow(
                      englishText: """I got a grain of sand in my eye.""",
                      kurdishText: """دەنکە گەنمێک چووەتە چاوم.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) ڕێژەیەکی زۆر کەم"""),
                    const AlsoEnglishckb(word: "ھەروەھا: iota"),
                    SentencesRow(
                      englishText:
                          """There isn't a grain of truth in those rumours.""",
                      kurdishText: """دەنکۆڵەیەک ڕاستی لە قسەکانیدا نییە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) یەکەیەکی بچووکی پێوانە کە یەکسانە بە ٠,٠٦٤٨ گرام یان ٠,٠٠١٤٣ پاوەند و بەکاردێت بۆ پێوانی دەرمان"""),
                    SentencesRow(
                      englishText:
                          """The analysis showed a few grains of arsenic in the solution.""",
                      kurdishText:
                          """پشکنینەکە چەند گرەینێک لە زەرنیخی لە گیراوەکە پیشان دا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
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
                  // YoutubeEmbeddedsix(),
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
      ),
    );
  }
}

// 188888880002200
const String _videoIdend = 'Op7Ii3ikfSk';
const double _startSecondsend = 0;
const String _videoIdone = '0dtBjqIu5W8';
const double _startSecondsone = 35;
const String _videoIdtwo = 'qziXjkrPx5c';
const double _startSecondstwo = 57;
const String _videoIdthree = 'PKrInVDqYVQ';
const double _startSecondsthree = 371;
const String _videoIdfour = 'ciDjE518YFM';
const double _startSecondsfour = 203;
const String _videoIdfive = 'ugQ16k85xcc';
const double _startSecondsfive = 255;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB