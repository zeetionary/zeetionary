import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanticipation extends StatefulWidget {
  const EnglishEntryanticipation({super.key});

  @override
  State<EnglishEntryanticipation> createState() =>
      _EnglishEntryanticipationState();
}

class _EnglishEntryanticipationState extends State<EnglishEntryanticipation> {
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
- Noun: anticipation (derived forms: anticipations)
1. An expectation (= expectancy)
 
2. Something expected (as on the basis of a norm) (= expectancy)
"each of them had their own anticipations";
 
3. The act of predicting (as by reasoning about the future) (= prediction, prevision)
 
4. The feeling waiting to something happening, esp. looking forward with excitement (= expectation)
""",
  );
// 188888880002200

  final String keyword = "anticipation";
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
    await flutterTts.speak("""anticipation""");
  }

  Future<void> speakanticipation1053(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He bought extra food in anticipation of more people coming than he'd invited.");
  }

  Future<void> speakanticipation1056(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Parents visit the school in anticipation that action will be taken.");
  }

  Future<void> speakanticipation1059(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The courtroom was filled with anticipation.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'MnExgQ81fhU';
    const double startSecondsend = 842;
    const String videoIdone = 'LfeEu4_vtfQ';
    const double startSecondsone = 543;
    const String videoIdtwo = '9yjZpBq1XBE';
    const double startSecondstwo = 3347;
    const String videoIdthree = 'dT5ALH3ICTc';
    const double startSecondsthree = 576;
    const String videoIdfour = 'vJC4yz7e7HE';
    const double startSecondsfour = 382;
    const String videoIdfive = 'NsUIQAjUKRE';
    const double startSecondsfive = 89;
    // final String _videoId = 'L2gT8fbEq54';
    // final double _startSeconds = 486;
    // final String _videoId = 'DG4Ox2sTrKU';
    // final double _startSeconds = 1;
    // final String _videoId = 'm0aG6urHpSI';
    // final double _startSeconds = 100;
    // final String _videoId = 'gMOk7kaEqJk';
    // final double _startSeconds = 491;
    // final String _videoId = 'vskoSJFb91w';
    // final double _startSeconds = 95;

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
                      word: """anticipation""",
                      // alsoEnglishWord: "also: anticipation",
                      britshText: """IpaUK: /ænˌtɪsɪˈpeɪʃn/""",
                      americanText: """IpaUS: /ænˌtɪsɪˈpeɪʃn/""",
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
کوردی: چاوەڕوانی، تەماوەری، پێش‌بینی، مەزندە، دەس‌پێش‌کەری، دەست‌پێش‌خەری، دەست‌پێش‌خستن، بەرگیری، پێش‌گیری، پێش‌گرتن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پێشبینی‌کردنی ڕوودانی شتێک لە داھاتوو و ھەوڵ‌دان بۆ کردنی کارێک دەربارەی"""),
                    SentencesRow(
                      englishText:
                          "He bought extra food in anticipation of more people coming than he'd invited.",
                      kurdishText:
                          "خواردنی زیادەی کڕی لە پێشبینی ھاتنی خەڵکی زیاتر وەک لەوەی بانگھێشتی کردوون.",
                      onPressedBritish: () => speakanticipation1053("en-GB"),
                      onPressedAmerican: () => speakanticipation1053("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Parents visit the school in anticipation that action will be taken.",
                      kurdishText:
                          "دایکان و باوکان سەردانی قوتابخانەکە دەکەن بەھیوای ئەوەی ھەنگاو بنرێت.",
                      onPressedBritish: () => speakanticipation1056("en-GB"),
                      onPressedAmerican: () => speakanticipation1056("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ھەستێکی خۆش کە ھەتە سەبارەت بە ڕوودانی شتێکی خۆش"""),
                    SentencesRow(
                      englishText:
                          "The courtroom was filled with anticipation.",
                      kurdishText: "ژووری دادگا پڕ بوو لە تامەزرۆیی.",
                      onPressedBritish: () => speakanticipation1059("en-GB"),
                      onPressedAmerican: () => speakanticipation1059("en-US"),
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

