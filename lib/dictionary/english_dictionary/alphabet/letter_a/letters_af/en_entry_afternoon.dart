// end afternoon
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryafternoon extends StatefulWidget {
  const EnglishEntryafternoon({super.key});

  @override
  State<EnglishEntryafternoon> createState() => _EnglishEntryafternoonState();
}

class _EnglishEntryafternoonState extends State<EnglishEntryafternoon> {
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
- Noun: afternoon (derived forms: afternoons)
1. The part of the day between noon and evening (= arvo [Austral, NZ, informal])
"he spent a quiet afternoon in the park";
 
2. A conventional expression of greeting or farewell, used to wish someone a good afternoon (= good afternoon)
""",
  );
// 188888880002200

  final String keyword = "afternoon";
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
    await flutterTts.speak("""afternoon""");
  }

  Future<void> speakaftern6288(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In the afternoon, they went shopping.");
  }

  Future<void> speakaftern481(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Come over on Sunday afternoon.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JkLsDxOQS94';
    const double startSecondsend = 9;
    const String videoIdone = 'wu95JPidByY';
    const double startSecondsone = 12;
    const String videoIdtwo = 'xv7ZgQjMn_c';
    const double startSecondstwo = 3132;
    const String videoIdthree = '5qCSRzLM2iA';
    const double startSecondsthree = 12;
    const String videoIdfour = 'EAk3tO0-ZBI';
    const double startSecondsfour = 1039;
    const String videoIdfive = 'T0ohllmyiE0';
    const double startSecondsfive = 1;
    // final String _videoId = 'AvO2u9WUrxE';
    // final double _startSeconds = 63;
    // final String _videoId = 'fp_SFKaU8sw';
    // final double _startSeconds = 1576;
    // final String _videoId = 'qIlkMuiGZEg';
    // final double _startSeconds = 102;

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
                      word: """afternoon""",
                      // alsoEnglishWord: "also: afternoon",
                      britshText: """IpaUK: /ˌɑːftəˈnuːn/""",
                      americanText: """IpaUS: /ˌɑːftərˈnuːn/""",
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
کوردی: پاش‌نێوەڕۆ، دوانیوەڕۆ، ئێوارە، نێوەڕۆ، عەسر
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ناوەڕاستی ڕۆژ، لە کاتژمێر ١٢ی دوای نیوەڕۆ بۆ ٦ی ئێوارە"
                            ""),
                    SentencesRow(
                      englishText: "In the afternoon, they went shopping.",
                      kurdishText: "لە نیوەڕواندا دەچوون بۆ بازاڕ.",
                      onPressedBritish: () => speakaftern6288("en-GB"),
                      onPressedAmerican: () => speakaftern6288("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "Come over on Sunday afternoon.",
                      kurdishText: "نیوەڕۆی یەکشەمە وەرە.",
                      onPressedBritish: () => speakaftern481("en-GB"),
                      onPressedAmerican: () => speakaftern481("en-US"),
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

