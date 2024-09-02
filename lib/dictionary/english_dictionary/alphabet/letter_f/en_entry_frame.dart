import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryframe extends StatefulWidget {
  const EnglishEntryframe({super.key});

  @override
  State<EnglishEntryframe> createState() => _EnglishEntryframeState();
}

class _EnglishEntryframeState extends State<EnglishEntryframe> {
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
- Noun: frame (derived forms: frames)
1. A framework that supports and protects a picture or a mirror (= framing)
"the frame was much more valuable than the miror it held";
 
2. A structure supporting or containing something (= framework)
 
3. The internal supporting structure that gives an artifact its shape (= skeleton, skeletal frame, underframe)
"the building has a steel frame";
 
4. The framework for a pair of eyeglasses
 
5. A single one of a series of still transparent pictures forming a cinema, television or video film
 
6. A single drawing in a comic strip
 
7. An application that divides the user's display into two or more windows that can be scrolled independently
 
8. A system of assumptions and standards that sanction behaviour and give it meaning (= frame of reference)
 
9. The hard structure (bones and cartilages) that provides a frame for the body of an animal (= skeletal system, skeleton, systema skeletale)
 
10. The physical body of a human being (= human body, physical body, material body, soma, build, figure, physique, anatomy, shape, bod [informal], chassis [informal], form, flesh)
"Leonardo studied the frame";
 
11. (baseball) one of nine divisions of play during which each team has a turn at bat (= inning)
 
12. A single game of billiards or snooker
 
13. One of the ten divisions into which bowling is divided

- Verb: frame (derived forms: framing, frames, framed)
1. Enclose in or as if in a frame (= frame in, border)
"frame a picture";
 
2. Make someone get in trouble by setting a trap or planting false or deliberately misleading evidence (= ensnare, entrap, set up [informal], fit up [Brit, informal], stitch up [Brit, informal])
"The innocent man was framed by the police";
 
3. Formulate in a particular style or language (= redact, cast, put, couch)
 
4. Make up plans or basic details for (= compose, draw up)
"frame a policy";
 
5. (construction) construct by fitting or uniting parts together (= frame up)
""",
  );

  final String keyword = "frame";
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
    await flutterTts.speak("""frame""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm going to paint the door frame white.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She leaned against the frame of the door.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A picture frame often has bevelled edges.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bed frame is made of pine.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the 1920s, federal office buildings were typically built with steel frames encased in concrete or granite.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has quite a small frame.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In this course we hope to look at literature in the frame of its social and historical context.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The photograph had been framed.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was presented with a framed certificate.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I like the way your hair frames your face.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He says he was framed.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She found herself framed for murder.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Measures to secure oil production must be framed in the context of rising energy demands.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You'll have to be careful how you frame the question.""");
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
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """frame""",
                      // alsoEnglishWord: "also: frame",
                      britshText: """IpaUK: /freɪm/""",
                      americanText: """IpaUS: /freɪm/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
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
کوردی: قاپ، چێوە، باڵشمە، چوارچێوە،	لەش، لاشە، چوارچێوە، بەدەنە،	(ماشێن، فڕۆکە و ھتد) شاسی، چێوە،	قیافە، ھەیکەڵ، جەستە، پەیکەر،	پێکھاتە، داڕشتە، ڕێکخستە، قاڵب، چوارچێوە،	دیمەن،	وێنە، تاکەوێنە، دیمەن (سینەما، تەلەفزیۆن و وێنەگری)،	داربەست، چێوبەست،	قەفەسە، بێرکم،	خانووبەرە، دەزگا،	دەزگا،	(زمانەوانی) چوارچێوە، چێوە،	(چەرخ) چوارچێوە، لاشە،	(تەون) دار، داروبار
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) چوارچێوەیەک کە شتێک ڕاگیر دەکات"""),
                    SentencesRow(
                      englishText:
                          """I'm going to paint the door frame white.""",
                      kurdishText: """چوارچێوەی دەرگاکە بۆیەی سپی دەکەم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She leaned against the frame of the door.""",
                      kurdishText: """پاڵی دا بە چوارچێوەی دەرگاکەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A picture frame often has bevelled edges.""",
                      kurdishText:
                          """چوارچێوەی وێنە زۆرجار قەراغی پەخ‌داری ھەیە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) چوارچێوەی کەلوپەلێک، بینایەک، پێڕۆیەک، ھتد"""),
                    SentencesRow(
                      englishText: """The bed frame is made of pine.""",
                      kurdishText:
                          """چوارچێوەی جێخەوەکە لە سنەوبەر درووستکراوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In the 1920s, federal office buildings were typically built with steel frames encased in concrete or granite.""",
                      kurdishText:
                          """لە ساڵانی ١٩٢٠ ـەکاندا بینای فەرمانگە فیدراڵییەکان بەزۆری بە چوارچێوەی پۆڵایی داپۆشراو لە کۆنکریت یان گرانیت درووست دەکران.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) شێوەی جەستەی مرۆڤ یان ئاژەڵ"""),
                    SentencesRow(
                      englishText: """She has quite a small frame.""",
                      kurdishText: """ھەیکەلێکی بچووکی ھەیە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ئەو تێگەشتنە گشتییانەی کە شتێک پێکدەھێنن"""),
                    SentencesRow(
                      englishText:
                          """In this course we hope to look at literature in the frame of its social and historical context.""",
                      kurdishText:
                          """لەم کۆرسەدا ھیوادارین سەیری ئەدەبیات بکەین لە چوارچێوەی پێگە کۆمەڵایەتی و مێژووییەکەیدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) درووستکردنی چوارچێوەیەک لە دەوری شتێک"""),
                    SentencesRow(
                      englishText: """The photograph had been framed.""",
                      kurdishText: """وێنەکە لە چوارچێوە خرابوو.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was presented with a framed certificate.""",
                      kurdishText: """بڕوانامەیەکی لە چوارچێوەخراوی پێدرا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) دەوردانی کەسێک/شتێک بە شێوەیەک کە وێنەیەکی سەرنجڕاکێش درووست دەکات"""),
                    SentencesRow(
                      englishText:
                          """I like the way your hair frames your face.""",
                      kurdishText:
                          """حەزم بەو شێوەیە کە قژت ڕووخسارت دادەپۆشێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) درووستکردنی بەڵگەی ساختە دژ بە کەسێکی بێتاوان"""),
                    SentencesRow(
                      englishText: """He says he was framed.""",
                      kurdishText: """دەڵێت کە تاوانی بۆ ھەڵبەستراوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She found herself framed for murder.""",
                      kurdishText: """کەوتە ئەو دۆخەی لە کوشتن تێوەگلێندرا.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) درووستکردن یان گەشەپێدانی پلانێک، سیستەمێک، یان ژمارەیەک یاسا"""),
                    SentencesRow(
                      englishText:
                          """Measures to secure oil production must be framed in the context of rising energy demands.""",
                      kurdishText:
                          """ھەنگاوەکانی بەرھەمھێنانی نەوت دەبێت دابڕێژرێن بە لەبەرچاوگرتنی خواستی بەرزبوو بۆ وزە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) دەربڕینی شتێک بە شێوەیەکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """You'll have to be careful how you frame the question.""",
                      kurdishText:
                          """دەبێت وریا بیت لەوەی چۆن پرسیارەکە دادەڕێژیت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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

const String _videoIdend = 'Kou7ur5xt_4';
const double _startSecondsend = 311;
const String _videoIdone = '_wNsZEqpKUA';
const double _startSecondsone = 1132;
const String _videoIdtwo = 'e09xig209cQ';
const double _startSecondstwo = 226;
const String _videoIdthree = 'tXjHb5QmDV0';
const double _startSecondsthree = 769;
const String _videoIdfour = 'O4iGNXsqghs';
const double _startSecondsfour = 84;
const String _videoIdfive = 'O4iGNXsqghs';
const double _startSecondsfive = 85;

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