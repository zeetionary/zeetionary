import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhybrid extends StatefulWidget {
  const EnglishEntryhybrid({super.key});

  @override
  State<EnglishEntryhybrid> createState() => _EnglishEntryhybridState();
}

class _EnglishEntryhybridState extends State<EnglishEntryhybrid> {
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
- Adjective: hybrid
1. Produced by crossbreeding (- intercrossed)

- Noun: hybrid (Derived forms: hybrids)
1. (Latin) a word that is composed of parts from different languages (e.g., 'monolingual' has a Greek prefix and a Latin root) (- loanblend, loan-blend)
 
2. A composite of mixed origin
"the vice-presidency is a hybrid of administrative and legislative offices"
 
3. (genetics) an organism that is the offspring of genetically dissimilar parents or stock; especially offspring produced by breeding plants or animals of different varieties or breeds or species (- crossbreed, cross)
"a mule is a hybrid between a horse and a donkey";
 
4. A car which runs on two power sources, usually an internal combustion engine and an electronic motor (- hybrid car, HEV, hybrid electric vehicle)
""",
  );

  final String keyword = "hybrid";
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
    await flutterTts.speak("""hybrid""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The animal looks like a hybrid of a zebra and a horse.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """His work is an interesting hybrid of modern and classical music.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Most car manufacturers now offer hybrids.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A mule is a hybrid of a male donkey and a female horse.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The music was a hybrid of Western pop and traditional song.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Both companies plan to offer hybrid cars by the end of the year.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'wE1azf6azWw';
    const double startSecondsend = 666;
    const String videoIdone = 'J8ZOttyAs9Y';
    const double startSecondsone = 428;
    const String videoIdtwo = 'YZoZr_m9WLU';
    const double startSecondstwo = 67;
    const String videoIdthree = 'LvShfo-1mE0';
    const double startSecondsthree = 148;
    const String videoIdfour = 'HAnw168huqA';
    const double startSecondsfour = 207;
    const String videoIdfive = 'qQ01eLt_bxo';
    const double startSecondsfive = 659;

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
                      word: """hybrid""",
                      // alsoEnglishWord: "also: hybrid",
                      britshText: """IpaUK: /ˈhaɪbrɪd/""",
                      americanText: """IpaUS: /ˈhaɪbrɪd/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) ئاژەڵ یان ڕووەک کە لە دوو جۆری جیاوازی گیانلەبەرەوە درووست بووە"""),
                    SentencesRow(
                      englishText:
                          """The animal looks like a hybrid of a zebra and a horse.""",
                      kurdishText:
                          """ئاژەڵەکە لە دووڕەگەی نێوان کەرەکێوی و ئەسپ دەکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە درووستبووی تێکەڵەی دوو شت یان زیاترە"""),
                    SentencesRow(
                      englishText:
                          """His work is an interesting hybrid of modern and classical music.""",
                      kurdishText:
                          """کارەکەی تێکەڵەی سەرنجڕاکێشی نێوان میوزیکی سەردەمی و کلاسیکییە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) ئۆتۆمبێلێک کە هەردوو بەنزین و جۆرێکی دیکەی وزە بەکاردەهێنێت کە زۆرجار کارەبایە"""),
                    SentencesRow(
                      englishText:
                          """Both companies plan to offer hybrid cars by the end of the year.""",
                      kurdishText:
                          """هەردوو کۆمپانیاکە پلانیان هەیە ئۆتۆمبێلی هایبرید بخەنە بازاڕەوە تاوەکو کۆتایی ساڵ.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ئاژەڵ یان ڕووەکێک کە لە دوو جۆری جیاوازی گیانلەبەرەوە درووست بووە"""),
                    SentencesRow(
                      englishText:
                          """A mule is a hybrid of a male donkey and a female horse.""",
                      kurdishText:
                          """هێسر دووڕەگەی نێوان گوێدرێژ و ئەسپی مێینەیە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) شتێک کە تێکەڵەی دوو شت یان زیاترە"""),
                    SentencesRow(
                      englishText:
                          """The music was a hybrid of Western pop and traditional song.""",
                      kurdishText:
                          """میوزیکەکە تێکەڵەی نێوان پۆپی ڕۆژئاوایی و گۆرانی نەریتی بوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ناو) ئۆتۆمبێلێکی هایبرید"""),
                    SentencesRow(
                      englishText:
                          """Most car manufacturers now offer hybrids.""",
                      kurdishText:
                          """زۆر لە بەرهەمهێنەرانی ئۆتۆمبێل ئێستا هایبرید پێشکەش دەکەن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
