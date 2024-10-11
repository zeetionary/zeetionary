import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryillumination extends StatefulWidget {
  const EnglishEntryillumination({super.key});

  @override
  State<EnglishEntryillumination> createState() =>
      _EnglishEntryilluminationState();
}

class _EnglishEntryilluminationState extends State<EnglishEntryillumination> {
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
- Noun: illumination (Derived forms: illuminations)
1. The quality or amount of light; the effect and arrangement of lights (- light, lighting)
 
2. The luminous flux incident on a unit area (- illuminance)
 
3. The degree of visibility of your environment
 
4. An interpretation that removes obstacles to understanding (- clarification, elucidation, éclaircissement [literary])
"the professor's illumination helped her to understand the textbook";
 
5. (Middle Ages) painting or drawing included in a book (especially in illuminated medieval manuscripts) (- miniature)
 
6. A condition of spiritual awareness; divine illumination (- light)
"follow God's illumination";
""",
  );

  final String keyword = "illumination";
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
    await flutterTts.speak("""illumination""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The only illumination in the room came from the fire.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Most of the illumination came from candles.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The city’s Christmas illuminations lit up the night.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In that flash of illumination, he realized where he had gone wrong.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'nMPCXuvL8EM';
    const double startSecondsend = 46;
    const String videoIdone = '5xxdh3bmgfw';
    const double startSecondsone = 147;
    const String videoIdtwo = 'cRLnR4Kot2M';
    const double startSecondstwo = 19;
    const String videoIdthree = 'tURHTuKHBZs';
    const double startSecondsthree = 497;
    const String videoIdfour = 'gQmiqmxJMtA';
    const double startSecondsfour = 5703;
    const String videoIdfive = 'SAaESb4wTCM';
    const double startSecondsfive = 599;

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
                      word: """illumination""",
                      // alsoEnglishWord: "also: illumination",
                      britshText: """IpaUK: /ɪˌluːmɪˈneɪʃn/""",
                      americanText: """IpaUS: /ɪˌluːmɪˈneɪʃn/""",
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
کوردی: 	ڕۆشنایی، شەوق، ڕووناکی،	ڕۆشنایی خستنەسەر، لێکدانەوە، ڕوون‌کردنەوە،	ڕۆشن‌گەری
"""),
// With short examples define "illumination", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ڕۆشنایی یان شوێنێک کە ڕۆشنایی لێوە دێت"""),
                    SentencesRow(
                      englishText:
                          """The only illumination in the room came from the fire.""",
                      kurdishText:
                          """تەنها ڕۆشنایی ژوورەکە لە ئاگرەکەوە دەهات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most of the illumination came from candles.""",
                      kurdishText:
                          """زۆرینەی ڕۆشناییەکە لە مۆمەکانەوە دەهات.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ڕۆشنایی ڕەنگداری ڕۆشن کە بۆ ڕازاندنەوەی شار یان بینایەک بەکاردێت بۆ بۆنەیەکی تایبەت """),
                    SentencesRow(
                      englishText:
                          """The city’s Christmas illuminations lit up the night.""",
                      kurdishText:
                          """ڕۆشناییەکانی کریسمسی شارەکە شەوەیان ڕووناک کردەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) تێگەشتن یان ڕوونکردنەوەی شتێک"""),
                    SentencesRow(
                      englishText:
                          """In that flash of illumination, he realized where he had gone wrong.""",
                      kurdishText:
                          """لەو چرکەساتەی تێگەشتندا، زانی لە چیدا هەڵەی کردبوو.""",
                      englishNote:
                          """This means in a sudden moment of clarity or understanding, he recognized the mistake he had made.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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