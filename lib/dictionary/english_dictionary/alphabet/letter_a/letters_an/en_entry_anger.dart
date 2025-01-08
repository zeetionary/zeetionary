import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanger extends StatefulWidget {
  const EnglishEntryanger({super.key});

  @override
  State<EnglishEntryanger> createState() => _EnglishEntryangerState();
}

class _EnglishEntryangerState extends State<EnglishEntryanger> {
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
- Noun: anger (derived forms: angers)
1. A strong emotion; a feeling that is oriented toward some real or supposed grievance (= choler, ire)
 
2. The state of being angry (= angriness)
 
3. Belligerence aroused by a real or supposed wrong (personified as one of the deadly sins) (= wrath, ire, ira)

- Verb: anger (derived forms: angers, angering, angered)
1. Make angry
"The news angered him"
 
2. Become angry (= see red [informal])
"He angers easily";
""",
  );
// 188888880002200

  final String keyword = "anger";
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
    await flutterTts.speak("""anger""");
  }

  Future<void> speakanger104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She had to find a way to express her pent-up anger.");
  }

  Future<void> speakanger407(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plan provoked anger among local residents.");
  }

  Future<void> speakanger005(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The question clearly angered him.");
  }

  Future<void> speakanger950(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They were angered that their complaints were dismissed.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-qv7k2_lc0M';
    const double startSecondsend = 24;
    const String videoIdone = 'wK7TiA9qmuU';
    const double startSecondsone = 51;
    const String videoIdtwo = 'TeQ1nq_YJD0';
    const double startSecondstwo = 10;
    const String videoIdthree = 'UaJM7DRsWyk';
    const double startSecondsthree = 20;
    const String videoIdfour = 'AIuzQ1-0eUw';
    const double startSecondsfour = 1;
    const String videoIdfive = 'AVbRDUeH_Ws';
    const double startSecondsfive = 57;
    // final String _videoId = 'iQHgyA6_nic';
    // final double _startSeconds = 7;
    // final String _videoId = '3BsdA4IlEaI';
    // final double _startSeconds = 88;
    // final String _videoId = 'wkse4PPxkk4';
    // final double _startSeconds = 1;
    // final String _videoId = 'bTE5S5uGTGw';
    // final double _startSeconds = 27;

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
                      word: """anger""",
                      // alsoEnglishWord: "also: anger",
                      britshText: """IpaUK: /ˈæŋɡə(r)/""",
                      americanText: """IpaUS: /ˈæŋɡər/""",
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
کوردی: قەڵسی، تووڕەیی، ڕک، ڕق، قین، ئاژر، شیپۆر
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) توڕەیی؛ ھەستێکی توند کە ھەتە کاتێک شتێکی خراپ ڕوودەدات"""),
                    SentencesRow(
                      englishText:
                          "She had to find a way to express her pent-up anger.",
                      kurdishText:
                          "پێویست‌بوو ڕێگایەک بدۆزێتەوە بۆ دەربڕینی توڕەییە خوراوەکەی.",
                      onPressedBritish: () => speakanger104("en-GB"),
                      onPressedAmerican: () => speakanger104("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The plan provoked anger among local residents.",
                      kurdishText: "پلانەکە بوو بەھۆی توڕەیی خەڵکە خۆجێییەکە.",
                      onPressedBritish: () => speakanger407("en-GB"),
                      onPressedAmerican: () => speakanger407("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) توڕەکردنی کەسێک"""),
                    SentencesRow(
                      englishText: "The question clearly angered him.",
                      kurdishText: "پرسیارەکە بەڕوونی تووڕەی‌کرد.",
                      onPressedBritish: () => speakanger005("en-GB"),
                      onPressedAmerican: () => speakanger005("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "They were angered that their complaints were dismissed.",
                      kurdishText: "تووڕەبوون بەوەی ناڕەزاییەکانیان وەلاخران.",
                      onPressedBritish: () => speakanger950("en-GB"),
                      onPressedAmerican: () => speakanger950("en-US"),
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


