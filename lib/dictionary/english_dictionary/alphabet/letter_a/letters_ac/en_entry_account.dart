import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaccount extends StatefulWidget {
  const EnglishEntryaccount({super.key});

  @override
  State<EnglishEntryaccount> createState() => _EnglishEntryaccountState();
}

class _EnglishEntryaccountState extends State<EnglishEntryaccount> {
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
- Noun: account (derived forms: accounts, accounting, accounted)
1. A record or narrative description of past events (= history, chronicle, story)
"he gave an inaccurate account of the plot to kill the president";
 
2. A short account of the news (= report, news report, story, write up)
"the account of his speech that was given on the evening news made the governor furious";
 
3. A formal contractual relationship established to provide for regular banking, brokerage or business services (= business relationship)
"he asked to see the executive who handled his account";
 
4. A statement that makes something comprehensible by describing the relevant structure, operation or circumstances etc. (= explanation)
"I expected a brief account";
 
5. Grounds
"don't do it on my account"; "the paper was rejected on account of its length";
- score
 
6. Importance or value
"a person of considerable account"; "he predicted that although it is of small account now it will rapidly increase in importance"
 
7. A statement of recent transactions and the resulting balance (= accounting, account statement)
"they send me an account every month";
 
8. The act of informing by verbal report (= report)
"by all accounts they were a happy couple";
 
9. An itemized statement of money owed for goods shipped or services rendered (= bill, invoice)
"send me an account of what I owe";
 
10. The quality of taking advantage
"she turned her writing skills to good account"
 
11. The justification for some act or belief (= defense [US], defence [Brit, Cdn], vindication)

- Verb: account 
1. Be the sole or primary factor in the existence, acquisition, supply, or disposal of something
"Passing grades account for half of the grades given in this exam"
 
2. Keep an account of (= calculate)
 
3. To give an account or representation of in words (= report, describe)
 
4. Furnish a justifying analysis or explanation (= answer for)
"I can't account for the missing money";
""",
  );
// 188888880002200

  final String keyword = "account";
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
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""account""");
  }
  
  Future<void> speakac24579(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "English law a person is accounted innocent until they are proved guilty.");
  }

  Future<void> speaka3518(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Try to keep accurate accounts.");
  }

  Future<void> speaka52489(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She gave the police a full account of the incident.");
  }

  Future<void> speaka14258(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My YouTube account was terminated.");
  }

  Future<void> speakac2481(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's your account number please?");
  }

  Future<void> speaka2573(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He opened an account at a bank in Germany.");
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
                      word: """account""",
                      // alsoEnglishWord: "also: account",
                      britshText: """IpaUK: /əˈkaʊnt/""",
                      americanText: """IpaUS: /əˈkaʊnt/""",
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
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: ھەژمار، حساب، لیستی حیساب، قازانج، خێر، کەڵک، مەفا، سوود، بەھرە، سوود، بەھرە، باس‌کردن، لێدوان، لێکدانەوە، گێڕانەوە، تیشک خستنەسەر، ڕوون‌کردنەوە، ھۆ، سەرنج، ئاوڕلێدانەوە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) ڕێککەوتنێک کە کەسێک لەگەڵ بانکێك ھەیەتی بۆ ھەڵگرتنی پارەکانی و کێشانەوە لێی"""),
                          SentencesRow(
                            englishText:
                                "He opened an account at a bank in Germany.",
                            kurdishText:
                                "ھەژمارێکی کردەوە لە بانکێک لە ئەڵمانیا.",
                            onPressedBritish: () => speaka2573("en-GB"),
                            onPressedAmerican: () => speaka2573("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "What's your account number please?",
                            kurdishText: "بێزەحمەت، ژمارەی ھەژمارەکەت چەندە؟",
                            onPressedBritish: () => speakac2481("en-GB"),
                            onPressedAmerican: () => speakac2481("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ھەبوونی ھەژمارێک لەسەر ئینتەرنێت"""),
                          SentencesRow(
                            englishText: "My YouTube account was terminated.",
                            kurdishText: "ھەژمارەکەم لەسەر یووتیووب سڕکرا.",
                            onPressedBritish: () => speaka14258("en-GB"),
                            onPressedAmerican: () => speaka14258("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) گێڕانەوەی ڕووداوێک کە ڕوویداوە"""),
                          SentencesRow(
                            englishText:
                                "She gave the police a full account of the incident.",
                            kurdishText:
                                "گێڕانەوەی تەواوی ڕووداوەکەی بە پۆلیس گوت.",
                            onPressedBritish: () => speaka52489("en-GB"),
                            onPressedAmerican: () => speaka52489("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) لیستی حیساباتی کڕین و فرۆشتن"""),
                          SentencesRow(
                            englishText: "Try to keep accurate accounts.",
                            kurdishText:
                                "ھەوڵبدە لیستی حیساباتەکە بە درووستی ڕابگری.",
                            onPressedBritish: () => speaka3518("en-GB"),
                            onPressedAmerican: () => speaka3518("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) ھەبوونی بۆچوونێک لەسەر کەسێک"""),
                          SentencesRow(
                            englishText:
                                "English law a person is accounted innocent until they are proved guilty.",
                            kurdishText:
                                "لە یاسای ئینگلتەرە کەسێک بە بێتاوان سەیردەکرێت تا بە تاوانبار دەسەلمێندرێت.",
                            onPressedBritish: () => speakac24579("en-GB"),
                            onPressedAmerican: () => speakac24579("en-US"),
                          ),
                        ],
                      ),
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 362;

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

  final String _videoId = 'nRafaCcfrcI';
  final double _startSeconds = 137;

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

  final String _videoId = 'HB0CZ_5sPPw';
  final double _startSeconds = 967;

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

  final String _videoId = 'c2v7mbq6hVs';
  final double _startSeconds = 337;

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

  final String _videoId = 'AAGIi62-sAU';
  final double _startSeconds = 912;

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

  final String _videoId = 'V3NGBo2M1Ps';
  final double _startSeconds = 238;

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

  final String _videoId = 'hRSGxw2AQnk';
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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'HAnw168huqA';
  final double _startSeconds = 3288;

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

  final String _videoId = 'DxL2HoqLbyA';
  final double _startSeconds = 1212;

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
