import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanalgesic extends StatefulWidget {
  const EnglishEntryanalgesic({super.key});

  @override
  State<EnglishEntryanalgesic> createState() => _EnglishEntryanalgesicState();
}

class _EnglishEntryanalgesicState extends State<EnglishEntryanalgesic> {
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
- Adjective: analgesic 
1. Capable of relieving pain (= analgetic, anodyne)
"an analgesic effect";

Noun: analgesic (derived forms: analgesics)
1. A medicine used to relieve pain (= anodyne, painkiller, pain pill)
""",
  );
// 188888880002200

  final String keyword = "analgesic";
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
    await flutterTts.speak("""analgesic""");
  }

  Future<void> speakanalgesic5802(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This cream contains a mild analgesic to soothe stings and bites.");
  }

  Future<void> speakanalgesic101(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Aspirin is a mild analgesic.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'XleFom6OfrE';
    const double startSecondsend = 606;
    const String videoIdone = 'RGiZtld9ssc';
    const double startSecondsone = 797;
    const String videoIdtwo = 'DHLVQXXFIsc';
    const double startSecondstwo = 147;
    const String videoIdthree = '3lCl76SMZ8k';
    const double startSecondsthree = 429;
    const String videoIdfour = '6LP43_EMGh0';
    const double startSecondsfour = 427;
    const String videoIdfive = 'iMvWIAZ21KU';
    const double startSecondsfive = 1113;
    // final String _videoId = 'w-K_YtWqMro';
    // final double _startSeconds = 165;
    // final String _videoId = 'kf40T0yXrjk';
    // final double _startSeconds = 550;
    // final String _videoId = 'LTKyioqoZVM';
    // final double _startSeconds = 231;
    // final String _videoId = '81dlThgnApk';
    // final double _startSeconds = 191;

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
                      word: """analgesic""",
                      // alsoEnglishWord: "also: analgesic",
                      britshText: """IpaUK: /ˌænəlˈdʒiːzɪk/""",
                      americanText: """IpaUS: /ˌænəlˈdʒiːzɪk/""",
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
کوردی: ژان‌بڕ، ژان‌شکێن، دامرکێن، مەڵھەمی ژان‌بڕ، مەرھەمی دامرکێنەر
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) ھەبوونی خاسیەتی ئازارشکێن"""),
                    SentencesRow(
                      englishText:
                          "This cream contains a mild analgesic to soothe stings and bites.",
                      kurdishText:
                          "ئەم کرێمە ئازارشکێنێکی سووکی تێدایە کە پێوەدان و گەستن ھێوردەکاتەوە.",
                      onPressedBritish: () => speakanalgesic5802("en-GB"),
                      onPressedAmerican: () => speakanalgesic5802("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئازارشکێن"""),
                    SentencesRow(
                      englishText: "Aspirin is a mild analgesic.",
                      kurdishText: "ئەسپرین ئازارشکێنێکی سووکە.",
                      onPressedBritish: () => speakanalgesic101("en-GB"),
                      onPressedAmerican: () => speakanalgesic101("en-US"),
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


