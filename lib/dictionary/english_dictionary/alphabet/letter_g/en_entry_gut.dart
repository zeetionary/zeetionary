import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygut extends StatefulWidget {
  const EnglishEntrygut({super.key});

  @override
  State<EnglishEntrygut> createState() => _EnglishEntrygutState();
}

class _EnglishEntrygutState extends State<EnglishEntrygut> {
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
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
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
- Noun: gut (Derived forms: guts)
1. The part of the alimentary canal between the stomach and the anus (- intestine, bowel)
 
2. A narrow channel or strait
 
3. A strong cord made from the intestines of sheep and used in surgery (- catgut)

- Verb: gut (Derived forms: gutted, gutting, guts)
1. Empty completely; destroy the inside of
"Gut the building"
 
2. Remove the guts of
"gut the sheep"

- Adjective: gut
1. Unthinking; prompted by (or as if by) instinct (- natural, instinctive, instinctual)
"a cat's gut aversion to water";
""",
  );

  final String keyword = "gut";
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
    await flutterTts.speak("""gut""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It can take up to 72 hours for food to pass through the gut.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I had a terrible pain in my guts after eating too much.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I'll only cook fish if the guts have been removed.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I don't like movies that are full of blood and guts.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Have you seen the gut on him!""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He doesn't have the guts to walk away from a well-paid job.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She had the guts to stand up to the school bully.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I had a feeling in my guts that something was wrong.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Understanding the guts of the problem is crucial for solving it.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The hotel was completely gutted by fire last year.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The fish was already cleaned and gutted.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You have to work on gut instinct.""");
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
                      word: """gut""",
                      // alsoEnglishWord: "also: gut",
                      britshText: """IpaUK: /ɡʌt/""",
                      americanText: """IpaUS: /ɡʌt/""",
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
کوردی: ڕیخۆڵە، ڕۆڤی،	زگ، گەدە، ورگ، کرش،	دەزووی تەقەڵ (برین‌کاری) تەقەڵی نەشتەرگەری،	ژێ (وەکوو بۆ ڤیۆڵین)،	دەربەندی تەنگ، تەنگەڵان، تەنگە، دەرتەنگ،	کۆڵان یان گوزەری تەنگ، هەناو، پزۆر، گورگان‌خواردوو، گرنگ‌ترین بەشی شتێک،	وێران، نەترسی، ئازایەتی، بەغیرەتی،	مرۆی زگەڕۆ
"""),
// With short examples define "gut", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ڕێڕەوی خۆراک کە لێیەوە خۆراک تێدەپەڕێت کە گەدە جێدەهێڵێت"""),
                    SentencesRow(
                      englishText:
                          """It can take up to 72 hours for food to pass through the gut.""",
                      kurdishText:
                          """دەکرێت نزیکەی ٧٢ کاتژمێری پێبچێت بۆ خواردن تاوەکو بە ڕیخۆڵەدا تێپەڕێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I had a terrible pain in my guts after eating too much.""",
                      kurdishText:
                          """ئازارم هەبوو لە ڕیخۆڵەمدا لە دوای خواردنی زۆر.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەندامەکانی دەورووبەری گەدە، بە تایبەتی لە ئاژەڵدا"""),
                    SentencesRow(
                      englishText:
                          """I'll only cook fish if the guts have been removed.""",
                      kurdishText:
                          """ماسی لێ دەنێم تەنها ئەگەر ناوسکەکەی دەرکرابێت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I don't like movies that are full of blood and guts (= that show a lot of blood and violence).""",
                      kurdishText:
                          """(خوازراوی) حەزم بەو فیلمانە نییە کە پڕن لە خوێن و توندووتیژی.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (ناو) گەدەی مرۆڤ"""),
                    const AlsoEnglishckb(word: "ھەروەھا: belly"),
                    SentencesRow(
                      englishText: """Have you seen the gut on him!""",
                      kurdishText: """ئەو گەدەیەت بینیوە کە پێوەیەتی!.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) بوێری و توانای هزری بۆ کردنی شتێکی سەخت و ناخۆش"""),
                    SentencesRow(
                      englishText:
                          """He doesn't have the guts to walk away from a well-paid job.""",
                      kurdishText:
                          """ئەو غیرەتەی نییە کە لە کارێکی مووچە باش ڕابکات.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had the guts to stand up to the school bully.""",
                      kurdishText:
                          """بوێری ئەوەی هەبوو دژ بە وەیگێڕێکی قوتابخانە بوەستێتەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) ئەو شوێنەی کە باوەڕ وایە هەستی سرووشتیتی تێدایە و وەهات لێ دەکات بە شێوەیەکی دیاریکراو بیر بکەیتەوە"""),
                    SentencesRow(
                      englishText:
                          """I had a feeling in my guts that something was wrong.""",
                      kurdishText:
                          """هەستێکم هەبوو لە هەناومدا کە شتێک هەڵەیە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ناو) گرنگترین بەشی شتێک"""),
                    SentencesRow(
                      englishText:
                          """Understanding the guts of the problem is crucial for solving it.""",
                      kurdishText:
                          """تێگەیشتن لە هەناوی کێشەکە گرنگە بۆ چارەسەری.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) لەناوبردنی بەشی ناوەوەی بینایەک یان ژوورێک"""),
                    SentencesRow(
                      englishText:
                          """The hotel was completely gutted by fire last year.""",
                      kurdishText:
                          """هوتێلەکە ساڵی ڕابردوو تەواو بە ئاگر لەناوچوو.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) دەرکردنی بەشی ناوەوەی ماسییەک یان ئاژەڵێک و ئامادەکردنی بۆ لێنان"""),
                    SentencesRow(
                      englishText:
                          """The fish was already cleaned and gutted.""",
                      kurdishText:
                          """ماسییەکە پێشتر پاککرابوویەوە و ڕیخۆڵەکانی دەرهێنرابوون.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    // skipped_meaning
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """٩. (هاوەڵناو) کە پشتی بە هەست و سۆز بەستووە نەک بیرکردنەوە"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """You have to work on gut instinct.""",
                    //   kurdishText: """دەبێت گرنگی بە.""",
                    //   onPressedBritish: () => speaksentence12("en-GB"),
                    //   onPressedAmerican: () => speaksentence12("en-US"),
                    // ),
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
const String _videoIdend = 'https://youtu.be/j1BfO7VlIw4?t=';
const double _startSecondsend = 000000000000000000000000000565;
const String _videoIdone = 'https://youtu.be/MGO4_8YRKro?t=';
const double _startSecondsone = 000000000000000000000000000423;
const String _videoIdtwo = 'https://youtu.be/544DTGHIBM0?t=';
const double _startSecondstwo = 000000000000000000000000000717;
const String _videoIdthree = 'https://youtu.be/55XJ1ObZKaM?t=';
const double _startSecondsthree = 000000000000000000000000000240;
const String _videoIdfour = 'https://youtu.be/raSeaAeryWE?t=';
const double _startSecondsfour = 0000000000000000000000000001747;
const String _videoIdfive = 'https://youtu.be/Gv4Af83KFrE?t=';
const double _startSecondsfive = 0000000000000000000000000001181;

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