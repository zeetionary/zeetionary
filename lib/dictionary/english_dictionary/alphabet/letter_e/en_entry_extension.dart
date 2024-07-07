import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryextension extends StatefulWidget {
  const EnglishEntryextension({super.key});

  @override
  State<EnglishEntryextension> createState() => _EnglishEntryextensionState();
}

class _EnglishEntryextensionState extends State<EnglishEntryextension> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""extension""");
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
                      word: """extension""",
                      // alsoEnglishWord: "also: extension",
                      britshText: """IpaUK: /ɪkˈstenʃn/""",
                      americanText: """IpaUS: /ɪkˈstenʃn/""",
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
              const EnglishMeaning(),
              KurdishMeaning(),
              const SentencesFromDatabase(),
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

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "extension";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """My home life was becoming no more than an extension of my job.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """This new job is a further extension of his role as a manager.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Citizens noticed a gradual extension of the powers of central government in their daily lives.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The extension of new technology into developing countries improves education.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They're building an extension to their house.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The bank will finance a £460 million extension to the car factory.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He's been granted an extension of the contract for another year.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She was given an extension to finish writing her thesis.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He's applied for an extension of his visa.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We have an extension in our bedroom.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""When you call, ask for extension 3276.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The extension of the building will take several months.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """These extensions are very easy to use and won't damage your own hair.""");
  }

// With short examples define "extension", please follow LX instructions
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: کشان، کشانەوە، کێشمان، پەل‌هاویشتن، کشاندن، کێشان، ڕاهێڵان، فراوان‌بوون، پەرەسەندن، گەورەبوونەوە،	بەرینایی، بەربڵاوی، فراوانی،	درێژکردنەوە، تازەکردنەوە، ماوەخستنەسەر، ماوەی درێژکردنەوە،	خستنەڕوو، ڕانان، پیشان‌دان، خستنەبەرچاو،	گشتاندن،	پاشکۆ، بەشی سەرخستە، پارچەی لکاو، بەشی زیادکراو یان سەرخراو، پاشکۆ
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) زیادکردنی ناوچەی چالاکی، گرووپێک لە خەڵکی، هتد کە کاریگەر دەبن بە شتێک"""),
          SentencesRow(
            englishText:
                """My home life was becoming no more than an extension of my job.""",
            kurdishText:
                """ژیانی ماڵەوەم خەریک بوو دەبوو بە هیچ جگە لە زیادکراوی کارەکەم.""",
            kurdishNote: "واتا لە ماڵەوەش هەر خەریکی ئیشی کارەکەم بووم",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """This new job is a further extension of his role as a manager.""",
            kurdishText:
                """ئەم کارە تازەیەی تەنها زیادکراوێکی دیکەیە بۆ ئەرکەکەی وەک بەڕێوەبەر.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Citizens noticed a gradual extension of the powers of central government in their daily lives.""",
            kurdishText:
                """هاوڵاتییان تێبینی کەم‌کەم فراوانبوونی دەسەڵاتی حکومەتی ناوەندییان لە ژیانی ڕۆژانەیان کرد.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The extension of new technology into developing countries improves education.""",
            kurdishText:
                """فراوانبوونی تەکنەلۆژیای تازە بۆ وڵاتە ڕوولەگەشەکان کەرتی پەروەردە بەهێز دەکات.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ناو) یەک ژووری تازە یان زیاتر کە زیاد دەکرێت بۆ خانوویەک"""),
          SentencesRow(
            englishText: """They're building an extension to their house.""",
            kurdishText: """ژوورێکی تازە بۆ خانووەکەیان درووست دەکەن.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ناو) بەشێکی تازە کە بۆ بینایەک زیاد دەکرێت"""),
          SentencesRow(
            englishText:
                """The bank will finance a £460 million extension to the car factory.""",
            kurdishText:
                """بانکەکە ٤٦٠ ملیۆن پاوەندی تێچووی فراوانکردنی کارگەی ئۆتۆمبێلەکە دەدات.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) کاتی زیادە کە بۆ شتێک زیاد دەکرێت"""),
          SentencesRow(
            englishText:
                """He's been granted an extension of the contract for another year.""",
            kurdishText: """درێژکردنەوەی یەک ساڵی بۆ ڕێککەوتنەکە پێدراوە.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She was given an extension to finish writing her thesis.""",
            kurdishText: """ماوەیەکی دیکەی پێدراوە بۆ نووسینی تێزەکەی.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He's applied for an extension of his visa.""",
            kurdishText: """داوای درێژکردنەوەی ڤیزاکەی کردووە.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ناو) هێڵێکی تەلەفۆن کە هەمان ژمارەی هەیە لەگەڵ یەکێکی دیکە لە ماڵێکدا، یان لەگەڵ تەلەفۆنی ناوەندی بینایەک"""),
          SentencesRow(
            englishText: """We have an extension in our bedroom.""",
            kurdishText: """تەلەفۆنێکی دیکەمان لە ژووری نووستن هەیە.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """When you call, ask for extension 3276.""",
            kurdishText: """کە پەیوەندی دەکەیت، داوای تەلەفۆنی ٣٢٧٦ بکە.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (ناو) گەورەکردن یان درێژکردنی شتێک؛ ئەو شتەی گەورە یان درێژ دەکرێت"""),
          SentencesRow(
            englishText:
                """The extension of the building will take several months.""",
            kurdishText: """گەورەکردنی بیناکە چەند مانگێکی دەوێت.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (ناو) پرچێکی دەستکردن کە زیاد دەکرێت بۆ پرچی سرووشتی بۆ ئەوەی درێژتر دەربکەوێت"""),
          SentencesRow(
            englishText:
                """These extensions are very easy to use and won't damage your own hair.""",
            kurdishText:
                """ئەم پرچە دەستکردانە زۆر ئاسانن بۆ بەکارهێنان و زیان بە پرچی خۆت ناگەیەنن.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          // skipped_meaning
        ],
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

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: extension (Derived forms: extensions)
1. A mutually agreed delay in the date set for the completion of a job or payment of a debt
"they applied for an extension of the loan"
 
2. Act of expanding in scope; making more widely available
"extension of the program to all in need"
 
3. The spreading of something (a belief or practice) into new regions (= propagation)
 
4. An educational opportunity provided by colleges and universities to people who are not enrolled as regular students (= extension service, university extension)
 
5. Act of stretching or straightening out a flexed limb
 
6. A string of characters beginning with a period and followed by one or more letters; the optional second part of a PC computer filename (= filename extension, file name extension)
"most applications provide extensions for the files they create"; "most BASIC files use the filename extension .BAS";
 
7. The most direct or specific meaning of a word or expression; the class of objects that an expression refers to (= reference, denotation)
"the extension of 'satellite of Mars' is the set containing only Demos and Phobos";
 
8. The ability to raise the working leg high in the air
"the dancer was praised for her uncanny extension"; "good extension comes from a combination of training and native ability"
 
9. Amount, degree or range to which something extends (= lengthiness, prolongation)
"the wire has an extension of 50 feet";
 
10. An additional telephone set that is connected to the same telephone line (= telephone extension, extension phone)
 
11. An addition to the length of something (= elongation)
 
12. An addition that extends a main building (= annex, annexe [Brit], wing)
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

const String _videoIdend = 'ewLpXw6uN28';
const double _startSecondsend = 433;
const String _videoIdone = 'CXvG2CBJ3SE';
const double _startSecondsone = 438;
const String _videoIdtwo = 'g-7ZWPCWv0U';
const double _startSecondstwo = 163;
const String _videoIdthree = '9K_CZizKdVs';
const double _startSecondsthree = 307;
const String _videoIdfour = '0zXfDafyyao';
const double _startSecondsfour = 1365;
const String _videoIdfive = 'Gv4Af83KFrE';
const double _startSecondsfive = 1138;

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