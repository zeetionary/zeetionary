import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// one quotations
// Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("\w*00"\);\s*\}

// three quotations
// Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("""\w*00"""\);\s*\}

// three quotations with new lines break ^\s*
// ^\s*Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("""\w*00"""\);\s*\}

// removes definitions dont use this
// ^\s*const DividerDefinition\(\),\s*const DefinitionKurdish\(text: """[^"]* \([^"]*\) [^"]*"""\),

// removes sentences row with one newline break above them https://chatgpt.com/c/5749d2fc-4f0d-4949-9ae6-8aaaba309d80
// ^\s*const DividerSentences\(\),\s*SentencesRow\(\s*englishText: """[^"]*00""",\s*kurdishText: """[^"]*""",\s*onPressedBritish: \(\) => [^,]+,\s*onPressedAmerican: \(\) => [^,]+,\s*\),

// removes sentences row
// const DividerSentences\(\),\s+SentencesRow\(\s+englishText: """[^"]*00""",\s+kurdishText: """[^"]*""",\s+onPressedBritish: \(\) => [^,]+,\s+onPressedAmerican: \(\) => [^,]+,\s+\),

// removes sentences and their definitions
// ^\s*const DividerDefinition\(\),\s*const DefinitionKurdish\(text: """[^"]* \([^"]*\) [^"]*"""\),\s*const DividerSentences\(\),\s*SentencesRow\(\s*englishText: """[^"]*00""",\s*kurdishText: """[^"]*""",\s*onPressedBritish: [^,]+,\s*onPressedAmerican: [^,]+,\s*\),

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryaback extends StatefulWidget {
  const EnglishEntryaback({super.key});

  @override
  State<EnglishEntryaback> createState() => _EnglishEntryabackState();
}

class _EnglishEntryabackState extends State<EnglishEntryaback> {
  @override
  void initState() {
    super.initState();
    // _initDatabase();
  }

  // Future<void> _initDatabase() async {
  //   await SentenceDatabase.instance.initialize();
  // }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakaback(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("aback");
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
                      word: "aback",
                      // alsoEnglishWord: "also: aback",
                      britshText: "IpaUK: /əˈbæk/",
                      americanText: "IpaUS: /əˈbæk/",
                      onPressedBritish: () => speakaback("en-GB"),
                      onPressedAmerican: () => speakaback("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: const TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(), // New tab for SentencesFromDatabase
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
              const SentencesFromDatabase(), // New SentencesFromDatabase tab
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  // YoutubeEmbeddedthree(),
                  // YoutubeEmbeddedfour(),
                  // YoutubeEmbeddedfive(),
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
  final String keyword = "new";
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

  Future<void> speak1256935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was completely taken aback by his anger.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: داچڵەکین، ھەڵبەزینەوە، داترووسکان، سەرسووڕمان، واق‌وڕمان
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵکار) تووشی سەرسوڕمان و شۆک بیت بە شتێک"
                  ""),
          SentencesRow(
            englishText: "She was completely taken aback by his anger.",
            kurdishText: "تەواو تووشی شۆک بوو بە توڕەییەکەی.",
            onPressedBritish: () => speak1256935("en-GB"),
            onPressedAmerican: () => speak1256935("en-US"),
          ),
          SentencesRow(
            englishText: "I took the dog for a walk.",
            kurdishText: "سەگەکەم بردە پیاسەیەک.",
            onPressedBritish: () => speak1256935("en-GB"),
            onPressedAmerican: () => speak1256935("en-US"),
          ),
          SentencesRow(
            englishText: "I took the dog for a walk.",
            kurdishText: "سەگەکەم بردە پیاسەیەک.",
            englishNote: "Similar: I'm just going to walk the dog.",
            kurdishNote: "بەڵێ ئەوە ڕاستە کە بردی.",
            onPressedBritish: () => speak1256935("en-GB"),
            onPressedAmerican: () => speak1256935("en-US"),
          ),
        ],
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
Adverb: aback
1. Having the wind against the forward side of the sails
"the ship came up into the wind with all yards aback"
 
2. By surprise
"taken aback by the caustic remarks"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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

// DOPSUM: FIRST YOUTUBE VIDEO

const String _videoIdend = 'AwodL8z2EtE';
const double _startSecondsend = 1373;
const String _videoIdone = '4VSx2E7WE50';
const double _startSecondsone = 224;
const String _videoIdtwo = 'Y4E8qEDi_xg';
const double _startSecondstwo = 29;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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

// end WORD_WEB