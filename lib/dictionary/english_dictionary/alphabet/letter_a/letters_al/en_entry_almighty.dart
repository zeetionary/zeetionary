import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalmighty extends StatefulWidget {
  const EnglishEntryalmighty({super.key});

  @override
  State<EnglishEntryalmighty> createState() => _EnglishEntryalmightyState();
}

class _EnglishEntryalmightyState extends State<EnglishEntryalmighty> {
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
- Adjective: almighty 
1. Having unlimited power (= all-powerful, omnipotent)
"The chairman was hobbled by the almighty dean";

- Noun: Almighty
1. Term referring to the Judeo-Christian God (= Godhead, Lord, Creator, Maker, Divine, God Almighty, Jehovah)
""",
  );
// 188888880002200

  final String keyword = "almighty";
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
    await flutterTts.speak("""almighty""");
  }

  Future<void> speakalmighty23599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Almighty God, have mercy on us.");
  }

  Future<void> speakalmighty4263(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("All of a sudden we heard an almighty crash from the kitchen.");
  }

  Future<void> speakalmight4693(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("God Almighty! What the hell do you think you are doing?");
  }

  Future<void> speakalmight45665(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We must pray to the Almighty for forgiveness.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '6wrccgYLTRk';
    const double startSecondsend = 58;
    const String videoIdone = 'x3LzQ4q8S58';
    const double startSecondsone = 1051;
    const String videoIdtwo = 'wk2y4eu37_s';
    const double startSecondstwo = 81;
    const String videoIdthree = 'gvJsNCf5ogo';
    const double startSecondsthree = 185;
    const String videoIdfour = 'LnIS9FpLCQ4';
    const double startSecondsfour = 57;
    const String videoIdfive = 'D0x2dgpBDzc';
    const double startSecondsfive = 407;
    // final String _videoId = 'VrKW58MS12g';
    // final double _startSeconds = 578;
    // final String _videoId = 'RwTvjfma_Sg';
    // final double _startSeconds = 1312;
    // final String _videoId = '-P5m5rqL7gM';
    // final double _startSeconds = 284;

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
                      word: """almighty""",
                      // alsoEnglishWord: "also: almighty",
                      britshText: """IpaUK: /ɔːlˈmaɪti/""",
                      americanText: """IpaUS: /ɔːlˈmaɪti/""",
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
کوردی: بەتوانا، توانا، خودای بەتوانا یان توانا، بەتوانای ڕەبەق، گەورە، بێ‌ئەندازە، لەرادەبەدەر، توند، سەخت
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) ھەبوونی دەسەڵاتی تەواو" ""),
                    SentencesRow(
                      englishText: "Almighty God, have mercy on us.",
                      kurdishText: "خودای بەدەسەڵات، ڕەحممان پێ بکە.",
                      onPressedBritish: () => speakalmighty23599("en-GB"),
                      onPressedAmerican: () => speakalmighty23599("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) زۆر بەرز"""),
                    SentencesRow(
                      englishText:
                          "All of a sudden we heard an almighty crash from the kitchen.",
                      kurdishText:
                          "لەناکاو تەقەیەکی بەرزمان لە چێشتخانەکەوە بیست.",
                      onPressedBritish: () => speakalmighty4263("en-GB"),
                      onPressedAmerican: () => speakalmighty4263("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) بۆ پیشاندانی توڕەیی"""),
                    SentencesRow(
                      englishText:
                          "God Almighty! What the hell do you think you are doing?",
                      kurdishText: "بۆ خاتری خودا، پێت وایە چی دەکەیت؟",
                      onPressedBritish: () => speakalmight4693("en-GB"),
                      onPressedAmerican: () => speakalmight4693("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵناو) خودا"""),
                    SentencesRow(
                      englishText:
                          "We must pray to the Almighty for forgiveness.",
                      kurdishText: "دەبێت لای خودا نزا بکەین بۆ لێخۆشبوون.",
                      onPressedBritish: () => speakalmight45665("en-GB"),
                      onPressedAmerican: () => speakalmight45665("en-US"),
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

