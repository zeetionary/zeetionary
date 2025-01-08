import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannouncer extends StatefulWidget {
  const EnglishEntryannouncer({super.key});

  @override
  State<EnglishEntryannouncer> createState() => _EnglishEntryannouncerState();
}

class _EnglishEntryannouncerState extends State<EnglishEntryannouncer> {
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
- Noun: announcer (derived forms: announcers)
1. Someone who proclaims a message publicly
 
2. Reads news, commercials on radio or television
""",
  );
// 188888880002200

  final String keyword = "announcer";
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
    await flutterTts.speak("""announcer""");
  }

  Future<void> speakannouncer436(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The announcer advertised a few forthcoming programmes.");
  }

  Future<void> speakannouncer440(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The station announcer warned us that the train was running late.");
  }

  Future<void> speakannouncer443(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was the announcer for the NBA game.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'b_rjBWmc1iQ';
    const double startSecondsend = 73;
    const String videoIdone = 'HelcCSO1PZI';
    const double startSecondsone = 12;
    const String videoIdtwo = 'bVTyUTDSF9A';
    const double startSecondstwo = 214;
    const String videoIdthree = 'nVQqDcKAmzg';
    const double startSecondsthree = 16;
    const String videoIdfour = 'Zf2ERbWOyM4';
    const double startSecondsfour = 38;
    const String videoIdfive = 'F9H9LwGmc-0';
    const double startSecondsfive = 1873;
    // final String _videoId = '84DLtInCkXg';
    // final double _startSeconds = 396;
    // final String _videoId = 'CxRF1PEcxP8';
    // final double _startSeconds = 234;
    // final String _videoId = 'b0hMm_au5HI';
    // final double _startSeconds = 349;

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
                      word: """announcer""",
                      // alsoEnglishWord: "also: announcer",
                      britshText: """IpaUK: /əˈnaʊnsə(r)/""",
                      americanText: """IpaUS: /əˈnaʊnsər/""",
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
کوردی: بێژەر، بڵاوکار، ڕاگەیێنەر، بانگەوازچی، بانگەوازکەر (بە بڵیندگۆ)
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) بێژەری تەلەفیزیۆن یان ڕادیۆ"""),
                    SentencesRow(
                      englishText:
                          "The announcer advertised a few forthcoming programmes.",
                      kurdishText:
                          "بێژەرەکە ژمارەیەک پڕۆگرامی ڕاگەیاند کە دواتر پێشکەش‌دەکرێن.",
                      onPressedBritish: () => speakannouncer436("en-GB"),
                      onPressedAmerican: () => speakannouncer436("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بانگەوازکەر؛ کەسێک کە لە وێستگەیەکدا زانیاری بە بڵیندگۆ دەدات"""),
                    SentencesRow(
                      englishText:
                          "The station announcer warned us that the train was running late.",
                      kurdishText:
                          "بانگەوازکەری وێستگەکە پێی ڕاگەیاندین شەمەندەفەرەکە درەنگ دەگات.",
                      onPressedBritish: () => speakannouncer440("en-GB"),
                      onPressedAmerican: () => speakannouncer440("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) بێژەری یارییەکی وەرزشی"""),
                    SentencesRow(
                      englishText: "He was the announcer for the NBA game.",
                      kurdishText: "بێژەری یارییەکەی ئێن-بی-ئەی بوو.",
                      onPressedBritish: () => speakannouncer443("en-GB"),
                      onPressedAmerican: () => speakannouncer443("en-US"),
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


