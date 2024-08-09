import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygraft extends StatefulWidget {
  const EnglishEntrygraft({super.key});

  @override
  State<EnglishEntrygraft> createState() => _EnglishEntrygraftState();
}

class _EnglishEntrygraftState extends State<EnglishEntrygraft> {
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
- Noun: graft (Derived forms: grafts)
1. (surgery) tissue or organ transplanted from a donor to a recipient; in some cases the patient can be both donor and recipient (- transplant)
 
2. The practice of offering something (usually money) in order to gain an illicit advantage (- bribery, palm-greasing [informal])
 
3. The act of grafting something onto something else (- grafting)
 
4. [Brit] Hard work

- Verb: graft (Derived forms: grafted, grafts, grafting)
1. Cause to grow together parts from different plants (- engraft, ingraft [archaic])
"graft the cherry tree branch onto the plum tree";
 
2. Place the organ of a donor into the body of a recipient (- transplant)
""",
  );

  final String keyword = "graft";
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

    await flutterTts.speak("""graft""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Linda had to undergo four skin grafts.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Most of the graft was done for them by their assistants.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """He promised an end to graft and corruption in public life.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""New skin had to be grafted on from his back.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The management tried unsuccessfully to graft new working methods onto the existing ways of doing things.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She’s been grafting all day.""");
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
                      word: """graft""",
                      // alsoEnglishWord: "also: graft",
                      britshText: """IpaUK: /ɡrɑːft/""",
                      americanText: """IpaUS: /ɡræft/""",
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
//                     const KurdishVocabulary(text: """
// کوردی: تووز، چووز، پەیوەند، متوربە، پەیوەست،	جێگای متوربە، فتروونە، پەیوەستگا،	نەمام، چووز، خەڵف، قەڵەمە،	ڕووەکی متوربەکراو، پارتی‌بازی،	بەرتیل، بەرتیل‌خۆری، دزی، دەسکیسی، کاری گران یا سەخت، کردوکۆش، ھەوڵ، چنگەکڕێ، کڕناوکڕن
// """),
// With short examples define "graft", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پارچەیەک کە لە ڕووەکێک کراوەتەوە و دەدرێت لە یەکێکی دیکە بۆ ئەوەی لەوێ گەشە بکات؛ پڕۆسەی لێکردنەوەی پێست، ئێسک، ھتد لە بەشێکی جەستە و دانانی لە بەشێکی دیکە کە زیانی پێگەشتووە؛ پڕۆسەی کردنی ئەمە"""),
                    SentencesRow(
                      englishText: """Linda had to undergo four skin grafts.""",
                      kurdishText:
                          """لیندا بە چوار نەشتەرگەری چاندنی پێستی بۆ کراوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ناو) کاری سەخت"""),
                    SentencesRow(
                      englishText:
                          """Most of the graft was done for them by their assistants.""",
                      kurdishText:
                          """زۆرینەی کارە سەختەکە لەلایەن یارمەتیدەرەکانیانەوە کرا بۆیان.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) بەکارھێنانی ڕێگای نادادی یان نایاسایی، بە تایبەتی بەرتیل، بۆ بەدەستھێنانی شتێک؛ ئەو پارەیەی بەم شێوەیە دەست دەکەوێت"""),
                    SentencesRow(
                      englishText:
                          """He promised an end to graft and corruption in public life.""",
                      kurdishText:
                          """بەڵێنی دا کۆتایی بە دەسکیسی و گەندەڵی بھێنێت لە ژیانی گشتیدا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) گوستنەوەی پێست، ئێسک، ھتد لە بەشێکی زیندووی لەش و دانانی لەسەر بەشێکی زیان پێگەشتوو؛ بڕینی بەشێکی ڕووەکێک و دانانی لەسەر ڕووەکیکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """New skin had to be grafted on from his back.""",
                      kurdishText:
                          """پێستی تازە پێویست بوو ببرێت لە پشتییەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ئەوەی بیرۆکەیەک، سیستەمێک، ھتد بکەیت بە بەشێک لە دانەیەکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """The management tried unsuccessfully to graft new working methods onto the existing ways of doing things.""",
                      kurdishText:
                          """بەڕێوەبەرایەتییەکە بێسوود ھەوڵی دا شێوازی کارکردنی نوێ زیاد بکات بۆ ڕێگە باوەکانی ئێستای ئەنجامدانی کارەکان.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) کارکردن بە سەختی"""),
                    SentencesRow(
                      englishText: """She’s been grafting all day.""",
                      kurdishText: """تەواوی ڕۆژەکە کاری کردووە.""",
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
const String _videoIdend = 'HZryl5nJr00';
const double _startSecondsend = 908;
const String _videoIdone = 'HZryl5nJr00';
const double _startSecondsone = 907;
const String _videoIdtwo = 'apDoJkfR85A';
const double _startSecondstwo = 834;
const String _videoIdthree = 'CdGKfBir7bI';
const double _startSecondsthree = 24;
const String _videoIdfour = 's_jaU5V9FUg';
const double _startSecondsfour = 106;
const String _videoIdfive = 'PhJhJfMp658';
const double _startSecondsfive = 654;

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