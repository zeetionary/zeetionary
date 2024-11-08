import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalienate extends StatefulWidget {
  const EnglishEntryalienate({super.key});

  @override
  State<EnglishEntryalienate> createState() => _EnglishEntryalienateState();
}

class _EnglishEntryalienateState extends State<EnglishEntryalienate> {
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
- Verb: alienate (derived forms: alienates, alienated, alienating)
1. Arouse hostility or indifference in where there had formerly been love, affection, or friendliness (= estrange, disaffect)
"She alienated her friends when she became fanatically religious";
 
2. Transfer property or ownership (= alien)
"The will alienated the property to the heirs";
 
3. Make withdrawn, isolated or emotionally dissociated
"the boring work alienated his employees"
""",
  );
// 188888880002200

  final String keyword = "alienate";
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
    await flutterTts.speak("""alienate""");
  }

  Future<void> speakalienate4625555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His comments have alienated a lot of young voters.");
  }

  Future<void> speakalienate34791(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Very talented children may feel alienated from the others in their class.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Tv9u9Nwi6Y4';
    const double startSecondsend = 1;
    const String videoIdone = '3UBBulOCI7I';
    const double startSecondsone = 79;
    const String videoIdtwo = 'v8GojCTTkzg';
    const double startSecondstwo = 880;
    const String videoIdthree = 'VZ01n6lJyn8';
    const double startSecondsthree = 5;
    const String videoIdfour = 'mp_w0xZ9XFg';
    const double startSecondsfour = 75;
    const String videoIdfive = '0WNMatxr7BE';
    const double startSecondsfive = 529;
    // final String _videoId = '9-wFM3nrKAI';
    // final double _startSeconds = 44;
    // final String _videoId = '6YNZ4uuAfa0';
    // final double _startSeconds = 57;
    // final String _videoId = 'Xq_uh1r_gXs';
    // final double _startSeconds = 592;
    // final String _videoId = 'JMUucCp4u7o';
    // final double _startSeconds = 177;

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
                      word: """alienate""",
                      // alsoEnglishWord: "also: alienate",
                      britshText: """IpaUK: /ˈeɪliəneɪt/""",
                      americanText: """IpaUS: /ˈeɪliəneɪt/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) وا لە کەسێک بکەیت لێت دوور بێت"""),
                    SentencesRow(
                      englishText:
                          "His comments have alienated a lot of young voters.",
                      kurdishText:
                          "لێدوانەکانی ژمارەیەکی زۆر دەنگدەری گەنجی پەست کردووە.",
                      onPressedBritish: () => speakalienate4625555("en-GB"),
                      onPressedAmerican: () => speakalienate4625555("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) ھەستی ئەوەی کە ئەو جێگەیەی لێیت گونجاو نییە"""),
                    SentencesRow(
                      englishText:
                          "Very talented children may feel alienated from the others in their class.",
                      kurdishText:
                          "منداڵانی زۆر بەھرەمەند لەوانەیە ھەست بە نامۆیی بکەن لەگەل ئەوانی تری پۆلەکانیان.",
                      onPressedBritish: () => speakalienate34791("en-GB"),
                      onPressedAmerican: () => speakalienate34791("en-US"),
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


