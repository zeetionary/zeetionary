import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygear extends StatefulWidget {
  const EnglishEntrygear({super.key});

  @override
  State<EnglishEntrygear> createState() => _EnglishEntrygearState();
}

class _EnglishEntrygearState extends State<EnglishEntrygear> {
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
- Noun: gear (Derived forms: gears)
1. A toothed wheel that engages another toothed mechanism in order to change the speed or direction of transmitted motion (- gear wheel, geared wheel, cogwheel)
 
2. Wheelwork consisting of a connected set of rotating gears by which force is transmitted, motion or torque is changed (- gearing, geartrain, power train, train, drivetrain)
"the fool got his tie caught in the gear";
 
3. A mechanism for transmitting motion for some specific purpose (as the steering gear of a vehicle) (- gear mechanism)
 
4. Equipment consisting of miscellaneous articles needed for a particular operation or sport etc. (- paraphernalia, appurtenance)
 
5. [informal] Clothing in general (- apparel, wearing apparel, dress, clothes, toggery [informal])
 
6. [informal] Illegal drugs

- Verb: gear (Derived forms: gears, gearing, geared)
1. Set the level or character of (- pitch)
"She geared her speech to the teenagers in the audience";
 
2. Adjust gears in order to achieve a desired speed
""",
  );

  final String keyword = "gear";
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

    await flutterTts.speak("""gear""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Careless use of the clutch may damage the gears.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Does your car have five or six gears?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I couldn't find reverse gear.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The car should be in gear.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""When you start a car you need to be in first gear.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""When parking on a hill, leave the car in gear.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I was driving along in third gear.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Leave the car out of gear.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She had her running gear on.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The shop sells various types of outdoor gear.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The hot weather makes it hard for soldiers in protective gear.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The cooking gear is still in the back of the car.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Her friends were all wearing the latest gear.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She was the only one wearing expensive gear.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I've left all my gear at Dave's house.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They inspected the lifting gear before use.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The party organization is moving into top gear as the election approaches.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He found it hard to switch gears when he retired.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The traffickers knew that there would always be someone willing to move the gear.""");
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
                      word: """gear""",
                      // alsoEnglishWord: "also: gear",
                      britshText: """IpaUK: /ɡɪə(r)/""",
                      americanText: """IpaUS: /ɡɪr/""",
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
کوردی: گێڕ، گیر، چەرخ یان پێچکەی ددانەدار،	دەزگا، ئامێر، ئامراز، ھەجەت،	بەرگ، شمەک،	میزان‌کردنی میکانیزمی گێڕ،	(خوازە) لێوەشاوەیی، لێھاتوویی،	چالاکی، خێرایی، جم‌وجۆڵ، دەرمانی ناقانوونی
"""),
// With short examples define "gear", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بەشێکی پێڕۆیەک کە پەیوەندیی نێوان خێرایی بزوێنەر یان پایدانی پاسکیل لەگەڵ خێرایی ویلەکان دەگۆڕێت"""),
                    SentencesRow(
                      englishText:
                          """Careless use of the clutch may damage the gears.""",
                      kurdishText:
                          """بەکارھێنانی ناوریایانەی کلاچەکە ڕەنگە زیان بە گێڕەکان بگەیەنێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئاستی گێڕی ئۆتۆمبێل کە خێرایی و ھێزی جیاواز بەکاردێنێت"""),
                    SentencesRow(
                      englishText: """Does your car have five or six gears?""",
                      kurdishText: """ئۆتۆمبێلەکەت پێنج یان شەش گێڕی ھەیە؟""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I couldn't find reverse gear.""",
                      kurdishText: """نەمتوانی گێڕی چوونەدواوە بدۆزمەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The car should be in gear (= with its gears in position, allowing the vehicle to move).""",
                      kurdishText: """ئۆتۆمبێلەکە دەبێت لە گێڕدا بێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When you start a car you need to be in first gear.""",
                      kurdishText:
                          """کە ئۆتۆمبێلەکەت دەخەیتە کار دەبێت لە گێڕی سووک بیت.""",
                      englishNote:
                          """American: When you start a car you need to be in low gear.""",
                      kurdishNote:
                          """واتا کە دەچیت بە ڕێگادا دەبێت بە گێڕی یەک دەست پێبکەیت""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When parking on a hill, leave the car in gear.""",
                      kurdishText:
                          """کە لەسەر بەرزاییەک دەوەستیت، ئۆتۆمبێلەکەت لە گێڕ بھێڵەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I was driving along in third gear.""",
                      kurdishText: """بە گێڕی سێ دەچووم.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Leave the car out of gear.""",
                      kurdishText: """ئۆتۆمبێلەکە لە بۆش بھێڵەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو کەرەستە و جلانەی بۆ چالاکییەکی دیاریکراو پێویستن"""),
                    SentencesRow(
                      englishText: """She had her running gear on.""",
                      kurdishText: """جلی ڕاکردنی لەبەربوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The shop sells various types of outdoor gear.""",
                      kurdishText:
                          """فرۆشگاکە ژمارەیەکی جیاواز لە ھەجەت و بەرگی دەرەوە دەفرۆشێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The hot weather makes it hard for soldiers in protective gear.""",
                      kurdishText:
                          """کەشە گەرمەکە سەخت دەبێت بۆ ئەو سەربازانەی لە جلی پاراستندان.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The cooking gear is still in the back of the car.""",
                      kurdishText:
                          """جلی چێشتلێنانەکە ھێشتا لە پشتەوەی ئۆتۆمبێلەکەیە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ناو) جلوبەرگ"""),
                    SentencesRow(
                      englishText:
                          """Her friends were all wearing the latest gear.""",
                      kurdishText:
                          """ھاوڕێکانی ھەموویان تازەترین جلیان لەبەربوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was the only one wearing expensive gear.""",
                      kurdishText:
                          """تەنھا کەس بوو کە جلی گران‌بەھای لەبەربوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) ئەو شتانەی کەسێک ھەیەتی"""),
                    SentencesRow(
                      englishText: """I've left all my gear at Dave's house.""",
                      kurdishText:
                          """تەواوی شمەکەکانم لە ماڵی دەیڤ جێھێشتووە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ئامێرێک کە بۆ مەبەستێکی تایبەتی بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """They inspected the lifting gear before use.""",
                      kurdishText:
                          """پێش بەکارھێنان ئامێری بەرزکردنەوەکەی پشکنی.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) بۆ باسکردنی ھەوڵ و خێرایی کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """The party organization is moving into top gear as the election approaches.""",
                      kurdishText:
                          """ڕێکخستنی پارتەکە چووەتە ئەوپەڕی خێرایی کە ھەڵبژاردن نزیک دەبێتەوە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He found it hard to switch gears when he retired.""",
                      kurdishText:
                          """کاتێک خانەنشین بوو، بۆی سەخت بوو خۆی لەگەڵ ژیانی نوێ بگونجێنێت.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٨. (ناو) مادەی ھۆشبەر"""),
                    SentencesRow(
                      englishText:
                          """The traffickers knew that there would always be someone willing to move the gear.""",
                      kurdishText:
                          """قاچاخچییان دەیانزانی ھەمیشە کەسێک دەبێت ئامادە بێت مادەکان بگوازێتەوە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
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

const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 474;
const String _videoIdone = '2fOWFfpLYW0';
const double _startSecondsone = 228;
const String _videoIdtwo = 'tsxmyL7TUJg';
const double _startSecondstwo = 1081;
const String _videoIdthree = 'SrDEtSlqJC4';
const double _startSecondsthree = 611;
const String _videoIdfour = 'XI9kKiyIMf0';
const double _startSecondsfour = 59;
const String _videoIdfive = '_-vguUGj8pg';
const double _startSecondsfive = 0;

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