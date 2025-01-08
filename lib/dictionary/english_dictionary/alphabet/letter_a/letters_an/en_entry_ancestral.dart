import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryancestral extends StatefulWidget {
  const EnglishEntryancestral({super.key});

  @override
  State<EnglishEntryancestral> createState() => _EnglishEntryancestralState();
}

class _EnglishEntryancestralState extends State<EnglishEntryancestral> {
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
- Adjective: ancestral 
1. (law) inherited or inheritable by established rules (usually legal rules) of descent (= hereditary, patrimonial, transmissible)
"ancestral home";

2. Of or belonging to or inherited from an ancestor
""",
  );
// 188888880002200

  final String keyword = "ancestral";
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
    await flutterTts.speak("""ancestral""");
  }

  Future<void> speakancestral4609(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They had long planned to visit the family's ancestral homeland in the Philippines.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'jszmqmOcrlM';
    const double startSecondsend = 26;
    const String videoIdone = 'BmDvCLFM9b4';
    const double startSecondsone = 21;
    const String videoIdtwo = 'ho9-WlRHhV8';
    const double startSecondstwo = 617;
    const String videoIdthree = 'fE4Z5hFLrqI';
    const double startSecondsthree = 645;
    const String videoIdfour = 'lEgPVrSZa6w';
    const double startSecondsfour = 442;
    const String videoIdfive = 'wPlrajJL0-w';
    const double startSecondsfive = 282;
    // final String _videoId = 'uaMqzIo5KWY';
    // final double _startSeconds = 238;
    // final String _videoId = '7DWWkU6Jerw';
    // final double _startSeconds = 286;
    // final String _videoId = 'p54tpokHrpo';
    // final double _startSeconds = 661;
    // final String _videoId = 'dDYyqGIKOZg';
    // final double _startSeconds = 501;
    // final String _videoId = 'OqgMFOaVW9I';
    // final double _startSeconds = 246;
    // final String _videoId = '1uS3EBJ7Y2c';
    // final double _startSeconds = 2886;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """ancestral""",
                      // alsoEnglishWord: "also: ancestral",
                      britshText: """IpaUK: /ænˈsestrəl/""",
                      americanText: """IpaUS: /ænˈsestrəl/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
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
کوردی: باپیرەگەورەیی، باووباپیری، پێشینەیی، ڕەچەڵەکی، سەرەتایی، یەکەمین، دەسپێک
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) پەیوەندیدار بە باوانی کەسێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "They had long planned to visit the family's ancestral homeland in the Philippines.",
                      kurdishText:
                          "ماوەیەکی زۆر بوو پلانیان بوو سەردانی نیشتیمانی باوانیان بکەن کە لە فلیپین بوو.",
                      onPressedBritish: () => speakancestral4609("en-GB"),
                      onPressedAmerican: () => speakancestral4609("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB


