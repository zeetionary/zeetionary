import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygarage extends StatefulWidget {
  const EnglishEntrygarage({super.key});

  @override
  State<EnglishEntrygarage> createState() => _EnglishEntrygarageState();
}

class _EnglishEntrygarageState extends State<EnglishEntrygarage> {
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
- Noun: garage (derived forms: garages)
1. An outbuilding (or part of a building) for housing automobiles
 
2. A repair shop where cars and trucks are serviced and repaired (= service department)
 
3. A type of guitar rock music, personified by amateur bands playing in the basement or garage
 
4. [Brit] A type of electronic dance music

- Verb: garage (derived forms: garaging, garaged, garages)
1. Keep or store in a garage
"we don't garage our car"

""",
  );

  final String keyword = "garage";
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

    await flutterTts.speak("""garage""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Don't forget to put the car in the garage.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Did you shut the garage door?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I had to take the car to the garage.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The car's still at the garage.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They have space to garage two cars.""");
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
                      word: """garage""",
                      // alsoEnglishWord: "also: garage",
                      britshText:
                          """IpaUK: /ˈɡærɑːʒ/,  /ˈɡærɑːdʒ/,  /ˈɡærɪdʒ/""",
                      americanText: """IpaUS: /ɡəˈrɑːʒ/,  /ɡəˈrɑːdʒ/""",
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
کوردی: کاڕێژ، گاراج، ڕاگرتنگە، شوێنی چاک‌کردنەوە
"""),
// With short examples define "garage", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) بینایەک بۆ ڕاگرتنی ئۆتۆمبێل تێیدا"""),
                    SentencesRow(
                      englishText:
                          """Don't forget to put the car in the garage.""",
                      kurdishText:
                          """بیرت نەچێت ئۆتۆمبێلەکە بخەیتە گەراجەکەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Did you shut the garage door?""",
                      kurdishText: """دەرگای گەراجەکەت گرت؟""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شوێنێک کە پێڕۆ چاکدەکرێتەوە، دەتوانیت ئۆتۆمبێلی تازە بکڕیت، یان بەنزین یان گاز بۆ ئۆتۆمبێلەکەت"""),
                    SentencesRow(
                      englishText: """I had to take the car to the garage.""",
                      kurdishText: """پێویست بوو ئۆتۆمبێلەکە ببەمە گەراجەکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The car's still at the garage.""",
                      kurdishText: """ئۆتۆمبێلەکە ھێشتا لە گەراجە.""",
                      englishNote:
                          """This means the car is currently being kept or repaired at the auto repair shop.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) دانانی ئۆتۆمبێل لە گەراج"""),
                    SentencesRow(
                      englishText: """They have space to garage two cars.""",
                      kurdishText:
                          """جێگایان ھەیە بۆ گەراجکردنی دوو ئۆتۆمبێل.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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

const String _videoIdend = 'tMKXbLBgkEc';
const double _startSecondsend = 18;
const String _videoIdone = 'kTaYet07Ioo';
const double _startSecondsone = 556;
const String _videoIdtwo = 'gjySnrspD7E';
const double _startSecondstwo = 1920;
const String _videoIdthree = '6yio7cT845A';
const double _startSecondsthree = 2;
const String _videoIdfour = 'nJQldh-b49s';
const double _startSecondsfour = 0;
const String _videoIdfive = 'hGkVxIyKnEA';
const double _startSecondsfive = 45;

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