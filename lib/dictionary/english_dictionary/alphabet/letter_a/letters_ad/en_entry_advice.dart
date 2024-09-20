import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvice extends StatefulWidget {
  const EnglishEntryadvice({super.key});

  @override
  State<EnglishEntryadvice> createState() => _EnglishEntryadviceState();
}

class _EnglishEntryadviceState extends State<EnglishEntryadvice> {
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
- Noun: advice (derived forms: advices)
1. A recommendation or proposal for an appropriate course of action
""",
  );
// 188888880002200

  final String keyword = "advice";
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
    await flutterTts.speak("""advice""");
  }

  Future<void> speakadvi4986(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Ask your teacher's advice on how to prepare for the exam.");
  }

  Future<void> speakadv64187(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let me give you a piece of advice.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'ltOkMlHrGPc';
    const double startSecondsend = 5;
    const String videoIdone = 'CYvjC94jDu4';
    const double startSecondsone = 32;
    const String videoIdtwo = 'covxjhXsCi8';
    const double startSecondstwo = 7;
    const String videoIdthree = 'TI-ocV7OeD0';
    const double startSecondsthree = 1;
    const String videoIdfour = 'wuVW5GiKleE';
    const double startSecondsfour = 64;
    const String videoIdfive = 'cGVhE4kJLjI';
    const double startSecondsfive = 216;
    // const String videoId = 'n01uiZY0Gd8';
    // const double startSeconds = 15;
    // const String videoId = 'sAJkduqFnKo';
    // const double startSeconds = 251;
    // const String videoId = 'DMPSqF96Mlg';
    // const double startSeconds = 6;

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
                      word: """advice""",
                      // alsoEnglishWord: "also: advice",
                      britshText: """IpaUK: /ədˈvaɪs/""",
                      americanText: """IpaUS: /ədˈvaɪs/""",
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
کوردی: ئامۆژگاری، شیرەت، پەند، نەسێحەت، ڕاسپاردە، ڕا، بۆچوون، پرس‌وڕا، ڕاوێژ (کاری)، پێشنیار، ھەواڵ، ئاگاداری
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) بۆچوونێک یان پێشنیارێک لەسەر ئەوەی کەسێک دەبێت چی بکات لە بارودۆخێک"""),
                    SentencesRow(
                      englishText:
                          "Ask your teacher's advice on how to prepare for the exam.",
                      kurdishText:
                          "داوای ئامۆژگاری لە مامۆستاکەت بکە لەسەر چۆنیەتی خۆ ئامادەکردن بۆ تاقیکردنەوەکە.",
                      onPressedBritish: () => speakadvi4986("en-GB"),
                      onPressedAmerican: () => speakadvi4986("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "Let me give you a piece of advice.",
                      kurdishText: "با کەمێک ئامۆژگاریت بکەم.",
                      onPressedBritish: () => speakadv64187("en-GB"),
                      onPressedAmerican: () => speakadv64187("en-US"),
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
