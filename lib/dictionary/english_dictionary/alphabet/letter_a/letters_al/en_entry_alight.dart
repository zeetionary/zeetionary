import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalight extends StatefulWidget {
  const EnglishEntryalight({super.key});

  @override
  State<EnglishEntryalight> createState() => _EnglishEntryalightState();
}

class _EnglishEntryalightState extends State<EnglishEntryalight> {
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
- Adjective: alight 
1. Flaming as it burns (= ablaze, afire [literary], aflame, aflare [rare], on fire, burning, in flames)
"forests set alight by lightning"; "candles alight on the tables";

- Verb: alight (derived forms: alit, alighted, alighting, alights)
1. To come to rest, settle (= light, perch)
 
2. Come down (= climb down)
"the birds alighted";
""",
  );
// 188888880002200

  final String keyword = "alight";
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
    await flutterTts.speak("""alight""");
  }

  Future<void> speakalight3996(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A car was overturned and set alight.");
  }

  Future<void> speakalight46555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The children’s faces were alight with enthusiasm.");
  }

  Future<void> speakalight35244(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Several birds alighted on the branches of the tree.");
  }

  Future<void> speakalight32852(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do not alight from a moving bus.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '3N-ockGdnvk';
    const double startSecondsend = 358;
    const String videoIdone = 'hxyav3AgFUo';
    const double startSecondsone = 395;
    const String videoIdtwo = 'vS7hMricwm0';
    const double startSecondstwo = 540;
    const String videoIdthree = '3mugPH2_qRo';
    const double startSecondsthree = 1423;
    const String videoIdfour = '9y62mZn0LXQ';
    const double startSecondsfour = 325;
    const String videoIdfive = '4mjvZrLnlCg0';
    const double startSecondsfive = 48;
    // final String _videoId6 = 'E-T3CR_P6_E';
    // final double _startSeconds6 = 369;
    // final String _videoId = 'KjX_pqmqvoc';
    // final double _startSeconds = 64;
    // final String _videoId = 'jD1oF9-oQdE';
    // final double _startSeconds = 88;
    // final String _videoId = 'ymZ-MvJ-t5U';
    // final double _startSeconds = 4715;

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
                      word: """alight""",
                      // alsoEnglishWord: "also: alight",
                      britshText: """IpaUK: /əˈlaɪt/""",
                      americanText: """IpaUS: /əˈlaɪt/""",
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
کوردی: داگیرساو، گڕگرتوو، ھەڵبوو، بریقەدار، درەوشاوە، ڕووناک، خۆشحاڵ، بەکەیف، شاد
"""),
                    const DefinitionKurdish(text: "١. (ھاوەڵناو) ئاگرگرتوو" ""),
                    SentencesRow(
                      englishText: "A car was overturned and set alight.",
                      kurdishText: "ئۆتۆمبێلێک وەرگەڕا و ئاگری گرت.",
                      onPressedBritish: () => speakalight3996("en-GB"),
                      onPressedAmerican: () => speakalight3996("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) نیشتنەوە لەسەر شتێک لە دوای فڕین بۆی"""),
                    SentencesRow(
                      englishText:
                          "Several birds alighted on the branches of the tree.",
                      kurdishText:
                          "ژمارەیەک باڵندە لەسەر لقەکانی دارەکە نیشتنەوە.",
                      onPressedBritish: () => speakalight35244("en-GB"),
                      onPressedAmerican: () => speakalight35244("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) دابەزین لە پاسێک یان شەمەندەفەرێک، یان ئامێرێکی دیکەی گواستنەوە"""),
                    SentencesRow(
                      englishText: "Do not alight from a moving bus.",
                      kurdishText: "لە پاسێک دامەبەزە کە ھێشتا لە جووڵە دایە.",
                      onPressedBritish: () => speakalight32852("en-GB"),
                      onPressedAmerican: () => speakalight32852("en-US"),
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

