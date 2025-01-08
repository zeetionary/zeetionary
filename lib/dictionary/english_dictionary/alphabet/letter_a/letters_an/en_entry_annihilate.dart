import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannihilate extends StatefulWidget {
  const EnglishEntryannihilate({super.key});

  @override
  State<EnglishEntryannihilate> createState() => _EnglishEntryannihilateState();
}

class _EnglishEntryannihilateState extends State<EnglishEntryannihilate> {
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
- Verb: annihilate (derived forms: annihilates, annihilated, annihilating)
1. Kill in large numbers (= eliminate, extinguish, eradicate, wipe out, decimate, carry off)
"the plague annihilated an entire population";
""",
  );
// 188888880002200

  final String keyword = "annihilate";
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
    await flutterTts.speak("""annihilate""");
  }

  Future<void> speakannihilate113(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The human race has enough weapons to annihilate itself.");
  }

  Future<void> speakannihilate116(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She annihilated her opponent, who failed to win a single game.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'eqg5CAO48Jo';
    const double startSecondsend = 102;
    const String videoIdone = '5G0j_Huv2Fg';
    const double startSecondsone = 1893;
    const String videoIdtwo = 'QLq6GEiHqR8';
    const double startSecondstwo = 497;
    const String videoIdthree = '-BeTq99LqUo';
    const double startSecondsthree = 1003;
    const String videoIdfour = 'b8WnPAxVxRY';
    const double startSecondsfour = 204;
    const String videoIdfive = 'PCuyCJocJWg';
    const double startSecondsfive = 246;
    // final String _videoId = 'Ukrfw8-SYSY';
    // final double _startSeconds = 748;
    // final String _videoId = 'GF_bsZMe7zg';
    // final double _startSeconds = 674;
    // final String _videoId = 'tRaq4aYPzCc';
    // final double _startSeconds = 415;
    // final String _videoId = 'BtYKDamqo2I';
    // final double _startSeconds = 1;
    // final String _videoId = 'Y-SnB10ihD4';
    // final double _startSeconds = 1598;
    // final String _videoId = 'pv-c70rrKZI';
    // final double _startSeconds = 582;

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
                      word: """annihilate""",
                      // alsoEnglishWord: "also: annihilate",
                      britshText: """IpaUK: /əˈnaɪəleɪt/""",
                      americanText: """IpaUS: /əˈnaɪəleɪt/""",
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
کوردی: لەناوبردن، قوتکرن، ژناڤبرن، قڕکردن، 
"""),
                    const DefinitionKurdish(
                        text: """١. (کردار) لەناوبردنی شتێک بە تەواوی"""),
                    SentencesRow(
                      englishText:
                          "The human race has enough weapons to annihilate itself.",
                      kurdishText:
                          "مرۆڤایەتی ھێندە چەکی ھەیە بە تەواوی خۆی لەناو ببات.",
                      onPressedBritish: () => speakannihilate113("en-GB"),
                      onPressedAmerican: () => speakannihilate113("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) بردنەوە لە کەسێک و تێکشکاندنی بە تەواوی"""),
                    SentencesRow(
                      englishText:
                          "She annihilated her opponent, who failed to win a single game.",
                      kurdishText:
                          "ڕکابەرەکەی تێکشکاند کە نەیتوانی ھیچ یارییەک بباتەوە.",
                      onPressedBritish: () => speakannihilate116("en-GB"),
                      onPressedAmerican: () => speakannihilate116("en-US"),
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



