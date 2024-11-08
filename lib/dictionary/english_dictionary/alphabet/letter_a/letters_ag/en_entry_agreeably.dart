import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagreeably extends StatefulWidget {
  const EnglishEntryagreeably({super.key});

  @override
  State<EnglishEntryagreeably> createState() => _EnglishEntryagreeablyState();
}

class _EnglishEntryagreeablyState extends State<EnglishEntryagreeably> {
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
- Adverb: agreeably (= pleasantly, enjoyably)
1. In an enjoyable manner
""",
  );
// 188888880002200

  final String keyword = "agreeably";
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
    await flutterTts.speak("""agreeably""");
  }

  Future<void> speakagr35222(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They were agreeably surprised by the quality of the food.");
  }

  Future<void> speakagreea35744(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The day was agreeably warm after the cool night.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'E37swnRU2fs';
    const double startSecondsend = 838;
    const String videoIdone = 'b0BC3F0kqtw';
    const double startSecondsone = 3173;
    const String videoIdtwo = 'WRUa1JQylQc';
    const double startSecondstwo = 1034;
    const String videoIdthree = 'FD2c6vAw4KI';
    const double startSecondsthree = 1558;
    const String videoIdfour = 'Wi3zSdLdpA4';
    const double startSecondsfour = 1076;
    const String videoIdfive = '0dn0d4WQ9wY';
    const double startSecondsfive = 243;
    // final String _videoId = '6yOLehzO5no';
    // final double _startSeconds = 963;
    // final String _videoId = 'DyavEncAbyc';
    // final double _startSeconds = 341;
    // final String _videoId = 'iDVxOg_R0rc';
    // final double _startSeconds = 15085;
    // final String _videoId = 'dFjg1qO_DYM';
    // final double _startSeconds = 251;

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
                      word: """agreeably""",
                      // alsoEnglishWord: "also: agreeably",
                      britshText: """IpaUK: /əˈɡriːəbli/""",
                      americanText: """IpaUS: /əˈɡriːəbli/""",
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
کوردی: بە شێوەیەکی خۆش، خۆشانە، بێ ناخۆشی
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) بە ھاوڕایی و بێ کێشە" ""),
                    SentencesRow(
                      englishText:
                          "They were agreeably surprised by the quality of the food.",
                      kurdishText:
                          "ھەموو تێکڕا سەرسام بوون بە کوالێتی خواردنەکە.",
                      onPressedBritish: () => speakagr35222("en-GB"),
                      onPressedAmerican: () => speakagr35222("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The day was agreeably warm after the cool night.",
                      kurdishText:
                          "ڕۆژەکە خۆش و خۆرەتاو بوو لە دوای ئەو شەوە ساردە.",
                      onPressedBritish: () => speakagreea35744("en-GB"),
                      onPressedAmerican: () => speakagreea35744("en-US"),
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

