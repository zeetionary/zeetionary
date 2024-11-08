import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffirmation extends StatefulWidget {
  const EnglishEntryaffirmation({super.key});

  @override
  State<EnglishEntryaffirmation> createState() =>
      _EnglishEntryaffirmationState();
}

class _EnglishEntryaffirmationState extends State<EnglishEntryaffirmation> {
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
- Noun: affirmation (derived forms: affirmations)
1. A statement asserting the existence or the truth of something (= avowal, avouchment)
 
2. The act of affirming, asserting or stating something (= assertion, statement)
 
3. (religion) a solemn declaration that serves the same purpose as an oath (if an oath is objectionable to the person on religious or ethical grounds)
 
4. (law) a judgment by a higher court that the judgment of a lower court was correct and should stand
""",
  );
// 188888880002200

  final String keyword = "affirmation";
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
    await flutterTts.speak("""affirmation""");
  }

  Future<void> speakaffirmat144(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We welcome the government's affirmation of its intention to act.");
  }

  Future<void> speakaffir25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Some people need frequent affirmations of love from their partners.");
  }

  Future<void> speakaff677(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The children were constantly looking for affirmation from their parents.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'aWt8s2FD2U8';
    const double startSecondsend = 271;
    const String videoIdone = 'YeOfcpyE2Fo';
    const double startSecondsone = 7;
    const String videoIdtwo = 'OL1dSEmOmBY';
    const double startSecondstwo = 1;
    const String videoIdthree = '3uOadcGI1oQ';
    const double startSecondsthree = 145;
    const String videoIdfour = 'RMY3VD2pEmU';
    const double startSecondsfour = 1;
    const String videoIdfive = 'aDMjgOYOcDw';
    const double startSecondsfive = 1919;
    // const String videoId = '7mHeY1B5Xzk';
    // const double startSeconds = 75;
    // const String videoId = 'yo1pJ_D-H3M';
    // const double startSeconds = 44;
    // const String videoId = '48I21gisf5s';
    // const double startSeconds = 738;
    // const String videoId = 'vVPk5lRHQGc';
    // const double startSeconds = 603;

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
                      word: """affirmation""",
                      // alsoEnglishWord: "also: affirmation",
                      britshText: """IpaUK: /ˌæfəˈmeɪʃn/""",
                      americanText: """IpaUS: /ˌæfərˈmeɪʃn/""",
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
کوردی: سەلماندن، پەسندکردن، چەسپاندن، مۆرکردن، پتەواندن، بەڕاست‌دانان، پشت‌ڕاست‌کردنەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) بە فەرمی ڕاگەیاندنی ئەوەی شتێک ڕاستە، یان ئەوەی کە پشتگیری شتێک بە تەواوی دەکەیت"""),
                    SentencesRow(
                      englishText:
                          "We welcome the government's affirmation of its intention to act.",
                      kurdishText:
                          "پێشوازی دەکەین لە پشت‌ڕاست‌کردنەوەی حکومەت لەوەی کەوا نیازی ھەیە ھەنگاو بنێت.",
                      onPressedBritish: () => speakaffirmat144("en-GB"),
                      onPressedAmerican: () => speakaffirmat144("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Some people need frequent affirmations of love from their partners.",
                      kurdishText:
                          "ھەندێک کەس ماوە ماوە پێویستیان بە سەلماندنی خۆشەویستی لە ھاوسەرەکانیانەوە ھەیە.",
                      onPressedBritish: () => speakaffir25("en-GB"),
                      onPressedAmerican: () => speakaffir25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پشتیوانی سۆزداری"""),
                    SentencesRow(
                      englishText:
                          "The children were constantly looking for affirmation from their parents.",
                      kurdishText:
                          "منداڵەکان بەردەوام داوای ھەست و سۆزی دایک و باوکیان دەکرد.",
                      onPressedBritish: () => speakaff677("en-GB"),
                      onPressedAmerican: () => speakaff677("en-US"),
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

