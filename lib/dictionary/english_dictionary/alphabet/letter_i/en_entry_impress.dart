import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimpress extends StatefulWidget {
  const EnglishEntryimpress({super.key});

  @override
  State<EnglishEntryimpress> createState() => _EnglishEntryimpressState();
}

class _EnglishEntryimpressState extends State<EnglishEntryimpress> {
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
- Verb: impress (Derived forms: impresses, impressed, impressing)
1. Have an emotional or cognitive impact upon (- affect, move, strike)
"This child impressed me as unusually mature";
 
2. Invoke admiration; make a positive impression
"The young chess player impressed her audience"
 
3. Produce or try to produce a vivid impression of (- ingrain, instill, engrain)
"Mother tried to impress respect for our elders in us";
 
4. Mark or stamp with or as if with pressure (- imprint)
"To make a batik, you impress a design with wax";
 
5. Reproduce by printing (- print)
 
6. (crime) Take (someone) against their will for compulsory service, especially on board of a ship (- shanghai)
"The men were impressed after being drugged";
 
7. Dye (fabric) before it is spun (- yarn-dye)

- Noun: impress (Derived forms: impresses)
1. The act of coercing someone into government service (- impressment)
""",
  );

  final String keyword = "impress";
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
    await flutterTts.speak("""impress""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We interviewed a number of candidates but none of them impressed us.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His sincerity impressed her.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Their responsibilities are impressed on them during training.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her words impressed themselves on my memory.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'KJy7T24rhg0';
    const double startSecondsend = 517;
    const String videoIdone = 'qWAagS_MANg';
    const double startSecondsone = 619;
    const String videoIdtwo = '3cxHwQl9pNM';
    const double startSecondstwo = 541;
    const String videoIdthree = 'QLq6GEiHqR8';
    const double startSecondsthree = 1757;
    const String videoIdfour = '9TugA_z5vQE';
    const double startSecondsfour = 628;
    const String videoIdfive = 'X3n5Pk8fkLg';
    const double startSecondsfive = 280;

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
                      word: """impress""",
                      // alsoEnglishWord: "also: impress",
                      britshText: """IpaUK: /ɪmˈpres/""",
                      americanText: """IpaUS: /ɪmˈpres/""",
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
// With short examples define "impress", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) ئەوەی زۆر سەرسامی کەسێک/شتێک ببیت"""),
                    SentencesRow(
                      englishText:
                          """We interviewed a number of candidates but none of them impressed us.""",
                      kurdishText:
                          """چاوپێکەوتنمان لەگەڵ ژمارەیەک لە بەربژێر کرد، بەڵام کەسیان سەرسامیان نەکردین.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """His sincerity impressed her.""",
                      kurdishText: """سەرڕاستییەکەی سەرسامی کرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) واکردنی ئەوەی کەسێک تێبگات شتێک چەندە گرنگ، جدی، هتد ـە بەوەی جەختی لێ بکەیتەوە"""),
                    SentencesRow(
                      englishText:
                          """Their responsibilities are impressed on them during training.""",
                      kurdishText:
                          """بەرپرسیاریەتییەکانیان تێدەگەیەنرێت لەکاتی ڕاهێنان.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) هەبوونی کاریگەرییەکی گەورە لەسەر شتێک"""),
                    SentencesRow(
                      englishText:
                          """Her words impressed themselves on my memory.""",
                      kurdishText: """وشەکانی داچەقین لە هزرمدا.""",
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
