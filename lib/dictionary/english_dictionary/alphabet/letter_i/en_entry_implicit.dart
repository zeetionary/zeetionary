import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimplicit extends StatefulWidget {
  const EnglishEntryimplicit({super.key});

  @override
  State<EnglishEntryimplicit> createState() => _EnglishEntryimplicitState();
}

class _EnglishEntryimplicitState extends State<EnglishEntryimplicit> {
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
- Adjective: implicit
1. Implied though not directly expressed; inherent in the nature of something (- inexplicit)
"there was implicit criticism in his voice"; "anger was implicit in the argument"; "the oak is implicit in the acorn"; "an implicit agreement not to raise the subject";
 
2. Being without doubt or reserve (- unquestioning)
"implicit trust";
""",
  );

  final String keyword = "implicit";
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
    await flutterTts.speak("""implicit""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Implicit in his speech was the assumption that they were guilty.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The ability to listen is implicit in the teacher's role.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had the implicit trust of her staff.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '_h95pZQiKwI';
    const double startSecondsend = 1033;
    const String videoIdone = 'uAPTWTmlc8Q';
    const double startSecondsone = 386;
    const String videoIdtwo = 'EmT0i0xG6zg';
    const double startSecondstwo = 6079;
    const String videoIdthree = 'S6rDvbQ-mz4';
    const double startSecondsthree = 308;
    const String videoIdfour = 'sY8aFSY2zv4';
    const double startSecondsfour = 8536;
    const String videoIdfive = 's_jaU5V9FUg';
    const double startSecondsfive = 632;

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
                      word: """implicit""",
                      // alsoEnglishWord: "also: implicit",
                      britshText: """IpaUK: /ɪmˈplɪsɪt/""",
                      americanText: """IpaUS: /ɪmˈplɪsɪt/""",
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
کوردی: شاراوە، ئاماژەپێکراو، ناڕاستەوخۆ، لەبنەوە،	ئاڵۆز، پێچەڵاوپێچ، تێک‌ئاڵاو، لێک‌ئاڵاو، لێک‌ئاڵۆسکاو، پێچەڵپێچ، لەیەک‌پێچراو، لەیەک‌ئاڵاو، ڕەها، بێ‌ئەملاوئەولا، ڕەبەق، بێ‌چەندوچۆن، پرسیارهەڵنەگر، گومان‌هەڵنەگر، تەواو،	پتەو
"""),
// With short examples define "implicit", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە ئاماژەی پێکراوە بەبێ ئەوەی بە ڕاستەوخۆیی گوترابێت"""),
                    SentencesRow(
                      englishText:
                          """Implicit in his speech was the assumption that they were guilty.""",
                      kurdishText:
                          """شاراوەیی لە وتارەکەی ئەو گریمانە بوو کە ئەوان تاوانبارن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە بەشێکی شتێک پێکدەهێنێت"""),
                    SentencesRow(
                      englishText:
                          """The ability to listen is implicit in the teacher's role.""",
                      kurdishText:
                          """توانای گوێگرتن بەشێکە لە ئەرکی مامۆستا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کە تەواوە و گومانی لێ ناکرێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: absolute"),
                    SentencesRow(
                      englishText:
                          """She had the implicit trust of her staff.""",
                      kurdishText: """متمانەی تەواوی ستافەکەی هەبوو.""",
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