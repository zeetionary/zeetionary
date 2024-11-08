import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryafflict extends StatefulWidget {
  const EnglishEntryafflict({super.key});

  @override
  State<EnglishEntryafflict> createState() => _EnglishEntryafflictState();
}

class _EnglishEntryafflictState extends State<EnglishEntryafflict> {
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
- Verb: afflict (derived forms: afflicting, afflicts, afflicted)
1. Cause great unhappiness for; distress
"she was afflicted by the death of her parents"
 
2. Cause physical pain or suffering in (= smite)
"afflict with the plague";
""",
  );
// 188888880002200

  final String keyword = "afflict";
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
    await flutterTts.speak("""afflict""");
  }

  Future<void> speakaffl455(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Our city has been afflicted with a high crime rate for decades.");
  }

  Future<void> speakaffli994(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Severe drought has afflicted the region.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Bf68h7dozPE';
    const double startSecondsend = 61;
    const String videoIdone = 'XaJSYxit1qI';
    const double startSecondsone = 340;
    const String videoIdtwo = 'VeBX4WjhhXs';
    const double startSecondstwo = 2092;
    const String videoIdthree = 'LXcUDMn64Lw';
    const double startSecondsthree = 2677;
    const String videoIdfour = 'tehQjoZFyGY';
    const double startSecondsfour = 557;
    const String videoIdfive = 'acN2MQQYGWg';
    const double startSecondsfive = 3192;
    // const String videoId = '6B5Bthon7QM';
    // const double startSeconds = 535;
    // const String videoId = 'D3GGhpbXuuk';
    // const double startSeconds = 437;

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
                      word: """afflict""",
                      // alsoEnglishWord: "also: afflict",
                      britshText: """IpaUK: /əˈflɪkt/""",
                      americanText: """IpaUS: /əˈflɪkt/""",
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
کوردی: گیرۆدەبوون، توش‌بوون، پێوەبوون، لێقەومان، بەڵاگیربوون
"""),
                    const DefinitionKurdish(
                        text: "١. (کردار) تووشبوون بە شتێکی خراپ" ""),
                    SentencesRow(
                      englishText:
                          "Our city has been afflicted with a high crime rate for decades.",
                      kurdishText:
                          "شارەکەمان بۆ چەندین دەیەیە گیرۆدە بووە بە ڕێژەیەکی زۆری تاوان.",
                      onPressedBritish: () => speakaffl455("en-GB"),
                      onPressedAmerican: () => speakaffl455("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "Severe drought has afflicted the region.",
                      kurdishText: "وشکەساڵی سەخت ھەرێمەکەی گرتووەتەوە.",
                      onPressedBritish: () => speakaffli994("en-GB"),
                      onPressedAmerican: () => speakaffli994("en-US"),
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

