import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalibi extends StatefulWidget {
  const EnglishEntryalibi({super.key});

  @override
  State<EnglishEntryalibi> createState() => _EnglishEntryalibiState();
}

class _EnglishEntryalibiState extends State<EnglishEntryalibi> {
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
- Noun: alibi (derived forms: alibis)
1. (law) a defence by an accused person purporting to show that he or she could not have committed the crime in question
 
2. A defence of some offensive behaviour or some failure to keep a promise etc. (= excuse, exculpation, self-justification)
"every day he had a new alibi for not getting a job";

- Verb: alibi (derived forms: alibied, alibis, alibiing)
1. Exonerate by means of an alibi
""",
  );
// 188888880002200

  final String keyword = "alibi";
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
    await flutterTts.speak("""alibi""");
  }

  Future<void> speakalibi4588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The suspects all had alibis for the day of the robbery.");
  }

  Future<void> speakalibi499253(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "After eight years in power, the government can no longer use the previous government's policy as an alibi for its own failure.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'otVPSPhWay0';
    const double startSecondsend = 124;
    const String videoIdone = '0ZLrcrFYnDc';
    const double startSecondsone = 361;
    const String videoIdtwo = '_0dOenWKIv0';
    const double startSecondstwo = 28;
    const String videoIdthree = 'lGWTEIBa-kE';
    const double startSecondsthree = 23;
    const String videoIdfour = '0LumBWVU1KY';
    const double startSecondsfour = 70;
    const String videoIdfive = 'tryf44H1x7A';
    const double startSecondsfive = 229;
    // final String _videoId = 'yg46bchBKUQ';
    // final double _startSeconds = 45;
    // final String _videoId = 'GRggr1X8gaw';
    // final double _startSeconds = 408;
    // final String _videoId = 'I3VhGIqBlJo';
    // final double _startSeconds = 1;

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
                      word: """alibi""",
                      // alsoEnglishWord: "also: alibi",
                      britshText: """IpaUK: /ˈæləbaɪ/""",
                      americanText: """IpaUS: /ˈæləbaɪ/""",
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
کوردی: بیانوو، بەھانە، ئەلیبای، شوێنیکی تر، نەبوون لە شوێنی ڕوودانی تاوان‌دا (بەڵگە و شایەتەکان بۆ سەلماندنی نەبوونی کەسێ لە شوێنی ڕوودانی تاوانێک‌دا)، شوێنێکی تر، جێیێکی دی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) بەڵگەی ئەوەی گومانلێکراوێک لە کاتی ئەنجامدانی تاوانێک لە شوێنێکی تر بووە بۆیە تاوانبار نییە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The suspects all had alibis for the day of the robbery.",
                      kurdishText:
                          "گومانلێکراوان ھەموویان بەڵگەی بێتاوانی خۆیان ھەبوو.",
                      onPressedBritish: () => speakalibi4588("en-GB"),
                      onPressedAmerican: () => speakalibi4588("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بیانوو بۆ خۆدزینەوە لە شتێک"""),
                    SentencesRow(
                      englishText:
                          "After eight years in power, the government can no longer use the previous government's policy as an alibi for its own failure.",
                      kurdishText:
                          "لە دوای ھەشت ساڵ بوون لە دەسەڵات، حکومەت چیتر ناتوانێت سیاسەتی حکومەتی پێشووتر وەک بیانوو بۆ شکستی خۆی بێنێتەوە.",
                      onPressedBritish: () => speakalibi499253("en-GB"),
                      onPressedAmerican: () => speakalibi499253("en-US"),
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

