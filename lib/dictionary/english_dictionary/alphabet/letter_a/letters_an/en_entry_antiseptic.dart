import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantiseptic extends StatefulWidget {
  const EnglishEntryantiseptic({super.key});

  @override
  State<EnglishEntryantiseptic> createState() => _EnglishEntryantisepticState();
}

class _EnglishEntryantisepticState extends State<EnglishEntryantiseptic> {
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
- Adjective: antiseptic 
1. Clean and honest
"antiseptic financial practices"
 
2. Freeing from error or corruption
"the antiseptic effect of sturdy criticism"
 
3. Devoid of objectionable language
"lyrics as antiseptic as Sunday School"
 
4. Thoroughly clean and free of or destructive to disease-causing organisms
"doctors in antiseptic green coats"; "the antiseptic effect of alcohol"; "it is said that marjoram has antiseptic qualities"

- Noun: antiseptic (derived forms: antiseptics)
1. A substance that destroys micro-organisms that carry disease without harming body tissues
""",
  );
// 188888880002200

  final String keyword = "antiseptic";
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
    await flutterTts.speak("""antiseptic""");
  }

  Future<void> speakantiseptic1218(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Dab the graze with antiseptic.");
  }

  Future<void> speakantiseptic1221(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Use antiseptic to clean and dress cuts.");
  }

  Future<void> speakantiseptic1225(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("When you get a little cut, you can use antiseptic cream.");
  }

  Future<void> speakantiseptic1228(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Cover the burn with an antiseptic dressing.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '3MfI6dwODoo';
    const double startSecondsend = 118;
    const String videoIdone = 'W8uXhQnWgj4';
    const double startSecondsone = 1002;
    const String videoIdtwo = 'jR1GlpPVewg';
    const double startSecondstwo = 352;
    const String videoIdthree = 'ALrzRD2WKUY';
    const double startSecondsthree = 460;
    const String videoIdfour = 'qYdBB4MyadQ';
    const double startSecondsfour = 970;
    const String videoIdfive = 'Qm4cAaAFhEs';
    const double startSecondsfive = 1280;
    // final String _videoId = 'QhlrndJ1Hz8';
    // final double _startSeconds = 1791;
    // final String _videoId = 'AZ2GEE68-UQ';
    // final double _startSeconds = 30;

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
                      word: """antiseptic""",
                      // alsoEnglishWord: "also: antiseptic",
                      britshText: """IpaUK: /ˌæntiˈseptɪk/""",
                      americanText: """IpaUS: /ˌæntiˈseptɪk/""",
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
کوردی: (مەتریاڵ) خاوێن‌کەر، بۆگەن‌بەر، گەندسڕ، پیسی‌بەر، (سەربە) خاوێن‌کردنەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) مادەیەک کە ڕێگە لە ھەوکردنی برین دەکات بە کوشتنی بەکتریا"""),
                    SentencesRow(
                      englishText: "Dab the graze with antiseptic.",
                      kurdishText: "ڕووشاوییەکە بە خاوێن‌کەر بساوە.",
                      onPressedBritish: () => speakantiseptic1218("en-GB"),
                      onPressedAmerican: () => speakantiseptic1218("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Use antiseptic to clean and dress cuts.",
                      kurdishText:
                          "خاوێن‌کەر بەکاربێنە بۆ پاککردنەوە و دواتر برینەکە بپێچە.",
                      onPressedBritish: () => speakantiseptic1221("en-GB"),
                      onPressedAmerican: () => speakantiseptic1221("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ھەبوونی خاسیەتی ڕێگری لە ھەوکردن"""),
                    SentencesRow(
                      englishText:
                          "When you get a little cut, you can use antiseptic cream.",
                      kurdishText:
                          "کاتێک برینێکی بچووکت دەبێت دەتوانی کرێمی دژە-ھەوکردن بەکاربێنی.",
                      onPressedBritish: () => speakantiseptic1225("en-GB"),
                      onPressedAmerican: () => speakantiseptic1225("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) زۆرپاک بەبێ بوونی ھیچ بەکتریایەک"""),
                    SentencesRow(
                      englishText:
                          "Cover the burn with an antiseptic dressing.",
                      kurdishText: "برینەکە بە پارچەیەکی زۆرپاک ببەستە.",
                      onPressedBritish: () => speakantiseptic1228("en-GB"),
                      onPressedAmerican: () => speakantiseptic1228("en-US"),
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
