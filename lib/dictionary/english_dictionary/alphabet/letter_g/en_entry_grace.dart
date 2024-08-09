import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygrace extends StatefulWidget {
  const EnglishEntrygrace({super.key});

  @override
  State<EnglishEntrygrace> createState() => _EnglishEntrygraceState();
}

class _EnglishEntrygraceState extends State<EnglishEntrygrace> {
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
- Noun: grace (Derived forms: graces)
1. Elegance and beauty of movement or expression (- gracility)
"a beautiful figure which she used in subtle movements of unparalleled grace";
 
2. (Christian theology) a state of sanctification by God; the state of one who is under such divine influence (- saving grace, state of grace)
"the conception of grace developed alongside the conception of sin"; "it was debated whether saving grace could be obtained outside the membership of the church"; "the Virgin lived in a state of grace";
 
3. A sense of propriety and consideration for others (- seemliness)
"a place where the company of others must be accepted with good grace";
 
4. A disposition to kindness and compassion (- good will, goodwill)
"the victor's grace in treating the vanquished";
 
5. A period of time past the deadline for fulfilling an obligation during which a penalty that would be imposed for being late is waived, especially an extended period granted as a special favour (- grace period)
"The payment had originally been due on April 1 but we had a grace period which expired in June.";
 
6. A short prayer of thanks before a meal (- blessing, thanksgiving)
"their youngest son said grace";
 
7. (Christian theology) the free and unmerited favour or beneficence of God (- grace of God, free grace)
"God's grace is manifested in the salvation of sinners"; "there but for the grace of God go I"; "God's free grace is manifested in the salvation of sinners";
 
8. A feeling of favourable regard (- favor [US], favour [Brit, Cdn])
 
9. Time allowed for someone to honour an obligation, pay a debt, etc.

- Verb: grace (Derived forms: graces, graced, gracing)
1. Make more attractive by adding ornament, colour, etc. (- decorate, adorn, ornament, embellish, beautify)
"grace the room for the party";
 
2. Serve to decorate and look nice (- deck, adorn, decorate, embellish, beautify)
"Flowers graced the tables everywhere";
""",
  );

  final String keyword = "grace";
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
    await flutterTts.speak("""grace""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She moves with the natural grace of a ballerina.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Joanna has natural grace and elegance.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He conducted himself with grace and dignity throughout the trial.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""He was not particularly well versed in the social graces.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""They've given me a month's grace to get the money.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""It was only by the grace of God that they survived.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Let's say grace.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """We sat at a small table graced with a vase of fresh flowers.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The occasion was graced by the presence of Lord and Lady Thomson.""");
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
                      word: """grace""",
                      // alsoEnglishWord: "also: grace",
                      britshText: """IpaUK: /ɡreɪs/""",
                      americanText: """IpaUS: /ɡreɪs/""",
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
کوردی: جوانی، چەلەنگی، شۆخی، ڕندی، ڕێک‌وپێکی، ئەندام‌ڕێکی، لەنجە، لەنجەولار، لەخت‌ولار، ناسکی، ئەدا، ئان،	سەنگینی، قورسی، مەندی،	ئەدەب، ڕەوشت، ماریفەت،	چاکە، باشی، پیاوەتی، سایە، یارمەتی، ڕەحمەت، خۆشەویستی، بەزەیی، ڕەحمەت یا بەزەیی خودا، خواپێداوە،	نیاز،	دەرفەت، فرسەند، دەلیڤە،	(پێش و پاش نان) شوکرانەبژێری، جەنابی بەڕێز، ھەڵس‌وکەوت، ڕەفتار، ئاکار
"""),
// With short examples define "grace", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شێوەی جووڵان بە نەرم‌ونیانی و جوانی"""),
                    SentencesRow(
                      englishText:
                          """She moves with the natural grace of a ballerina.""",
                      kurdishText:
                          """بە لەنجەولاری سرووشتی بالێرینایەک دەجووڵێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Joanna has natural grace and elegance.""",
                      kurdishText: """جوانا لەجەولار و جوانی سرووشتی ھەیە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ڕەفتارێک کە بەڕێزەوەیە"""),
                    SentencesRow(
                      englishText:
                          """He conducted himself with grace and dignity throughout the trial.""",
                      kurdishText:
                          """لە ماوەی دانیشتنەکەی دادگا بە ڕێز و شکۆوە خۆی پیشان دا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) جۆرە ڕەفتارێک کە خەڵکی بە خەڵکی بەڕێزەوە سەیری دەکەن و بە پەسەندی دادەنێن"""),
                    SentencesRow(
                      englishText:
                          """He was not particularly well versed in the social graces.""",
                      kurdishText:
                          """زۆر شارەزا نەبوو لە ھەڵسوکەوتی کۆمەڵایەتی.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) کاتێکی زیادە کە بە کەسێک دەدرێت بۆ ئەوەی پارەیەک بداتەوە، کارێک تەواو بکات، ھتد"""),
                    SentencesRow(
                      englishText:
                          """They've given me a month's grace to get the money.""",
                      kurdishText:
                          """یەک مانگی زیادەیان پێمداوە بۆ بەدەستخستنی پارەکە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) خۆشەویستی خودا بۆ مرۆڤ"""),
                    SentencesRow(
                      englishText:
                          """It was only by the grace of God that they survived.""",
                      kurdishText:
                          """ئەوە تەنھا ڕەحمی خودا بوو کە ڕزگاری بوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ناو) نزای پێش نانخواردن"""),
                    SentencesRow(
                      englishText: """Let's say grace.""",
                      kurdishText: """با شوکرانەبژێری بکەین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) جوانتر پیشاندانی شتێک"""),
                    SentencesRow(
                      englishText:
                          """We sat at a small table graced with a vase of fresh flowers.""",
                      kurdishText:
                          """لەسەر مێزێکی بچووک دانیشتبووین کە بە گۆزەیەک لە گوڵی تازە ڕازێندرابوویەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) ئەوەی شکۆ بۆ شتێک بھێنیت؛ ئەوەی بەژداری شتێک بکەیت وەک کەسێکی گرنگ"""),
                    SentencesRow(
                      englishText:
                          """The occasion was graced by the presence of Lord and Lady Thomson.""",
                      kurdishText:
                          """بۆنەکە شکۆدار کرا بە ئامادەیی بەڕێز و خاتوو تۆمسن.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
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
const String _videoIdend = '_spuxXnul0U';
const double _startSecondsend = 1289;
const String _videoIdone = 'tsxmyL7TUJg';
const double _startSecondsone = 1317;
const String _videoIdtwo = 'nGrB-5ieeMU';
const double _startSecondstwo = 26;
const String _videoIdthree = 'qY5m8PXzcS4';
const double _startSecondsthree = 95;
const String _videoIdfour = 'Vyb-sTrY_Y8';
const double _startSecondsfour = 66;
const String _videoIdfive = 'Z4Dzzwt_rfw';
const double _startSecondsfive = 141;

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