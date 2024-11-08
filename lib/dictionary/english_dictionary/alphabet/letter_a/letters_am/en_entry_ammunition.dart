import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryammunition extends StatefulWidget {
  const EnglishEntryammunition({super.key});

  @override
  State<EnglishEntryammunition> createState() => _EnglishEntryammunitionState();
}

class _EnglishEntryammunitionState extends State<EnglishEntryammunition> {
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
- Noun: ammunition (derived forms: ammunitions)
1. Projectiles to be fired from a gun (= ammo)
 
2. Any nuclear, chemical or biological material that can be used as a weapon of mass destruction
 
3. Information that can be used to attack or defend a claim or argument or viewpoint
"his admission provided ammunition for his critics"
""",
  );
// 188888880002200

  final String keyword = "ammunition";
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
    await flutterTts.speak("""ammunition""");
  }

  Future<void> speakammunition8895(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A few of the men had run out of ammunition.");
  }

  Future<void> speakammunition411(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The letter gave her all the ammunition she needed.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '8qP6Q9ZEsEo';
    const double startSecondsend = 80;
    const String videoIdone = 'PiJHa3oe43s';
    const double startSecondsone = 12;
    const String videoIdtwo = 'lWXz3GR6seo';
    const double startSecondstwo = 1;
    const String videoIdthree = 'xo4cjLhUXIw';
    const double startSecondsthree = 35;
    const String videoIdfour = 'dlQZFHWiM3o';
    const double startSecondsfour = 1;
    const String videoIdfive = 'P328eljkW_c';
    const double startSecondsfive = 116;
    // final String _videoId = 'N_j74puhpK0';
    // final double _startSeconds = 1;
    // final String _videoId = 'GE2qWjY4-MM';
    // final double _startSeconds = 34;
    // final String _videoId = 'FQ4hvLqNfqo';
    // final double _startSeconds = 933;
    // final String _videoId = 'twAP3buj9Og';
    // final double _startSeconds = 1116;
    // final String _videoId = 'b4wRdoWpw0w';
    // final double _startSeconds = 808;
    // final String _videoId = 'bP7aOyoOtPY';
    // final double _startSeconds = 166;

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
                      word: """ammunition""",
                      // alsoEnglishWord: "also: ammunition",
                      britshText: """IpaUK: /ˌæmjəˈnɪʃn/""",
                      americanText: """IpaUS: /ˌæmjəˈnɪʃn/""",
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
کوردی: تەقەمەنی، جبەخانە، بەھانە، پەڵپ، بیانوو
"""),
                    const DefinitionKurdish(text: "١. (ناو) تەقەمەنی" ""),
                    SentencesRow(
                      englishText:
                          "A few of the men had run out of ammunition.",
                      kurdishText: "ھەندێک لە پیاوەکان تەقەمەنییان پێ‌نەماوە.",
                      onPressedBritish: () => speakammunition8895("en-GB"),
                      onPressedAmerican: () => speakammunition8895("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) زانیاری کە دەکرێت بەکاربھێنرێت دژ بە کەسێک لە مشتومڕێکدا"""),
                    SentencesRow(
                      englishText:
                          "The letter gave her all the ammunition she needed.",
                      kurdishText:
                          "نامەکە ھەموو زانیارییەکی پێدا کە پێویستی‌ بوو لە دژی ئەو.",
                      onPressedBritish: () => speakammunition411("en-GB"),
                      onPressedAmerican: () => speakammunition411("en-US"),
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

