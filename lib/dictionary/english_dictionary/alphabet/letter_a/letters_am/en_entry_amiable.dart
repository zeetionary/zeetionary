import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamiable extends StatefulWidget {
  const EnglishEntryamiable({super.key});

  @override
  State<EnglishEntryamiable> createState() => _EnglishEntryamiableState();
}

class _EnglishEntryamiableState extends State<EnglishEntryamiable> {
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
- Adjective: amiable 
1. Disposed to please (= good-humored [US], good-humoured [Brit, Cdn])
"an amiable villain with a cocky sidelong grin";
 
2. Diffusing warmth and friendliness (= affable, cordial, genial)
"an amiable gathering";
""",
  );
// 188888880002200

  final String keyword = "amiable";
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
    await flutterTts.speak("""amiable""");
  }

  Future<void> speakamiable455666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her parents seemed very amiable.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zwZY-PknSQw';
    const double startSecondsend = 1705;
    const String videoIdone = 'E2rtQFAibEA';
    const double startSecondsone = 6333;
    const String videoIdtwo = 'x9flq3vb9JU';
    const double startSecondstwo = 220;
    const String videoIdthree = 'HZpilkyt6u8';
    const double startSecondsthree = 573;
    const String videoIdfour = 'Solb9uA-tgQ';
    const double startSecondsfour = 25428;
    const String videoIdfive = 'S3FPvI5p8Zo';
    const double startSecondsfive = 317;
    // final String _videoId = 'P_noscfYFfg';
    // final double _startSeconds = 124;
    // final String _videoId = 'ImI1MaeUp_E';
    // final double _startSeconds = 1076;
    // final String _videoId = 'Szfuvn0vLC4';
    // final double _startSeconds = 700;
    // final String _videoId = 'nUmQ13rEVT4';
    // final double _startSeconds = 710;
    // final String _videoId = 'VwPGtn9qJZ4';
    // final double _startSeconds = 889;
    // final String _videoId = 'D5AxmTjzZ3c';
    // final double _startSeconds = 2149;

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
                      word: """amiable""",
                      // alsoEnglishWord: "also: amiable",
                      britshText: """IpaUK: /ˈeɪmiəbl/""",
                      americanText: """IpaUS: /ˈeɪmiəbl/""",
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
کوردی: ڕووخۆش، دەم‌بەپێکەنین، ڕەزاسووک، زمان‌خۆش، خوڵک‌خۆش، گەرم، شیرین
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) ڕووخۆش و ڕەزاسووک"""),
                    SentencesRow(
                      englishText: "Her parents seemed very amiable.",
                      kurdishText: "دایک و باوکی ڕووخۆش بوون.",
                      onPressedBritish: () => speakamiable455666("en-GB"),
                      onPressedAmerican: () => speakamiable455666("en-US"),
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

